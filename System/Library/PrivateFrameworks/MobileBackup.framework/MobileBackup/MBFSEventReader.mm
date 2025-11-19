@interface MBFSEventReader
- (BOOL)_handleNumEvents:(unint64_t)a3 eventPaths:(id)a4 eventFlags:(const unsigned int *)a5 eventIDs:(const unint64_t *)a6;
- (MBFSEventReader)initWithDomainMarker:(id)a3 pathToMonitor:(id)a4 pathToModifiedDomainFlags:(id)a5 pathToDomainMapping:(id)a6;
- (id)_domainFromPath:(id)a3 requiresScan:(BOOL *)a4;
- (void)_handleEventPath:(id)a3 flags:(unsigned int)a4;
@end

@implementation MBFSEventReader

- (MBFSEventReader)initWithDomainMarker:(id)a3 pathToMonitor:(id)a4 pathToModifiedDomainFlags:(id)a5 pathToDomainMapping:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v19.receiver = self;
  v19.super_class = MBFSEventReader;
  v15 = [(MBFSEventReader *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_domainMarker, a3);
    objc_storeStrong(&v16->_pathToMonitor, a4);
    objc_storeStrong(&v16->_pathToModifiedDomainFlags, a5);
    objc_storeStrong(&v16->_pathToDomainMapping, a6);
    v17 = [v13 objectForKeyedSubscript:&stru_1003C3430];
    v16->_scanAllDomainsFlags = [v17 unsignedIntValue];
  }

  return v16;
}

- (BOOL)_handleNumEvents:(unint64_t)a3 eventPaths:(id)a4 eventFlags:(const unsigned int *)a5 eventIDs:(const unint64_t *)a6
{
  v9 = a4;
  if (!a3)
  {
LABEL_11:
    v12 = 1;
    goto LABEL_12;
  }

  v10 = objc_autoreleasePoolPush();
  if ((*a5 & 0x10) == 0)
  {
    v11 = [(MBFSEventReader *)self modifiedDomainsFlags];
    if (v11 != [(MBFSEventReader *)self scanAllDomainsFlags])
    {
      v13 = 0;
      while (1)
      {
        v14 = v13;
        v15 = [v9 objectAtIndexedSubscript:v13];
        [(MBFSEventReader *)self _handleEventPath:v15 flags:a5[v14]];

        objc_autoreleasePoolPop(v10);
        if (a3 - 1 == v14)
        {
          goto LABEL_11;
        }

        v10 = objc_autoreleasePoolPush();
        if ((a5[v14 + 1] & 0x10) == 0)
        {
          v16 = [(MBFSEventReader *)self modifiedDomainsFlags];
          v17 = [(MBFSEventReader *)self scanAllDomainsFlags];
          v13 = v14 + 1;
          if (v16 != v17)
          {
            continue;
          }
        }

        v12 = v14 + 1 >= a3;
        goto LABEL_5;
      }
    }
  }

  v12 = 0;
LABEL_5:
  objc_autoreleasePoolPop(v10);
LABEL_12:

  return v12;
}

- (void)_handleEventPath:(id)a3 flags:(unsigned int)a4
{
  v5 = [a3 stringByStandardizingPath];
  if ([v5 hasPrefix:@"/private/var"])
  {
    v6 = [v5 substringFromIndex:{objc_msgSend(@"/private", "length")}];

    v5 = v6;
  }

  v20 = 0;
  v7 = [(MBFSEventReader *)self _domainFromPath:v5 requiresScan:&v20];
  if (v7)
  {
    if (v20 == 1)
    {
      v8 = [(MBFSEventReader *)self domainMarker];
      v9 = [v7 name];
      [v8 markModifiedDomain:v9];

      v10 = MBGetDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v7 name];
        *buf = 138412546;
        v22 = v11;
        v23 = 2112;
        v24 = v5;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Marked domain %@ to be scanned, FSEvent path %@", buf, 0x16u);

        v18 = [v7 name];
        v19 = v5;
        _MBLog();
      }

LABEL_16:

      goto LABEL_17;
    }

    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = [v7 name];
      *buf = 138412546;
      v22 = v17;
      v23 = 2112;
      v24 = v5;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Skipping FSEvent for %@ %@", buf, 0x16u);

      v18 = [v7 name];
      v19 = v5;
      _MBLog();
    }
  }

  else
  {
    v12 = [(MBFSEventReader *)self pathToModifiedDomainFlags];
    v13 = [v12 objectForKeyedSubscript:v5];
    v14 = [v13 unsignedIntValue];

    if (v14)
    {
      v15 = v14;
      if ((~[(MBFSEventReader *)self modifiedDomainsFlags]& v14) != 0)
      {
        [(MBFSEventReader *)self setModifiedDomainsFlags:[(MBFSEventReader *)self modifiedDomainsFlags]| v14];
        v10 = MBGetDefaultLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          v22 = v15;
          v23 = 2112;
          v24 = v5;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Adding scan flags 0x%lx for FSEvent path %@", buf, 0x16u);
          v18 = v15;
          v19 = v5;
          _MBLog();
        }

        goto LABEL_16;
      }
    }

    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = v5;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Skipping FSEvent for path not in any domain %@", buf, 0xCu);
      v18 = v5;
      _MBLog();
    }
  }

  [(MBFSEventReader *)self setEventsSkipped:[(MBFSEventReader *)self eventsSkipped]+ 1];
LABEL_17:
  [(MBFSEventReader *)self setEventsCollected:[(MBFSEventReader *)self eventsCollected:v18]+ 1];
}

- (id)_domainFromPath:(id)a3 requiresScan:(BOOL *)a4
{
  v6 = a3;
  v7 = [(MBFSEventReader *)self pathToDomainMapping];
  v8 = [v7 objectForKeyedSubscript:v6];
  if (v8)
  {
    v9 = v8;
    v10 = v6;
LABEL_7:

    v13 = [(MBFSEventReader *)self domainMarker];
    v14 = [v9 name];
    v15 = [v13 isDomainMarkedAsModified:v14];

    if (v15)
    {
      v16 = 0;
    }

    else if ([v10 isEqualToString:v6])
    {
      v16 = 1;
    }

    else
    {
      v17 = [v9 rootPathRelativeToVolumeMountPoint];
      v18 = [v6 substringFromIndex:{objc_msgSend(v17, "length") + 1}];

      v16 = [v9 shouldBackUpAnyChildOfRelativePath:v18];
    }

    v11 = v10;
  }

  else
  {
    v11 = v6;
    while (1)
    {
      v9 = [v11 length];

      if (!v9)
      {
        break;
      }

      v10 = [v11 stringByDeletingLastPathComponent];

      v7 = [(MBFSEventReader *)self pathToDomainMapping];
      v12 = [v7 objectForKeyedSubscript:v10];
      v11 = v10;
      if (v12)
      {
        v9 = v12;
        goto LABEL_7;
      }
    }

    v16 = 0;
  }

  *a4 = v16;

  return v9;
}

@end