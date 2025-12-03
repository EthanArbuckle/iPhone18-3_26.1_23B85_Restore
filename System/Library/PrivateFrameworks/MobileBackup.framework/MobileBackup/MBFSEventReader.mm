@interface MBFSEventReader
- (BOOL)_handleNumEvents:(unint64_t)events eventPaths:(id)paths eventFlags:(const unsigned int *)flags eventIDs:(const unint64_t *)ds;
- (MBFSEventReader)initWithDomainMarker:(id)marker pathToMonitor:(id)monitor pathToModifiedDomainFlags:(id)flags pathToDomainMapping:(id)mapping;
- (id)_domainFromPath:(id)path requiresScan:(BOOL *)scan;
- (void)_handleEventPath:(id)path flags:(unsigned int)flags;
@end

@implementation MBFSEventReader

- (MBFSEventReader)initWithDomainMarker:(id)marker pathToMonitor:(id)monitor pathToModifiedDomainFlags:(id)flags pathToDomainMapping:(id)mapping
{
  markerCopy = marker;
  monitorCopy = monitor;
  flagsCopy = flags;
  mappingCopy = mapping;
  v19.receiver = self;
  v19.super_class = MBFSEventReader;
  v15 = [(MBFSEventReader *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_domainMarker, marker);
    objc_storeStrong(&v16->_pathToMonitor, monitor);
    objc_storeStrong(&v16->_pathToModifiedDomainFlags, flags);
    objc_storeStrong(&v16->_pathToDomainMapping, mapping);
    v17 = [flagsCopy objectForKeyedSubscript:&stru_1003C3430];
    v16->_scanAllDomainsFlags = [v17 unsignedIntValue];
  }

  return v16;
}

- (BOOL)_handleNumEvents:(unint64_t)events eventPaths:(id)paths eventFlags:(const unsigned int *)flags eventIDs:(const unint64_t *)ds
{
  pathsCopy = paths;
  if (!events)
  {
LABEL_11:
    v12 = 1;
    goto LABEL_12;
  }

  v10 = objc_autoreleasePoolPush();
  if ((*flags & 0x10) == 0)
  {
    modifiedDomainsFlags = [(MBFSEventReader *)self modifiedDomainsFlags];
    if (modifiedDomainsFlags != [(MBFSEventReader *)self scanAllDomainsFlags])
    {
      v13 = 0;
      while (1)
      {
        v14 = v13;
        v15 = [pathsCopy objectAtIndexedSubscript:v13];
        [(MBFSEventReader *)self _handleEventPath:v15 flags:flags[v14]];

        objc_autoreleasePoolPop(v10);
        if (events - 1 == v14)
        {
          goto LABEL_11;
        }

        v10 = objc_autoreleasePoolPush();
        if ((flags[v14 + 1] & 0x10) == 0)
        {
          modifiedDomainsFlags2 = [(MBFSEventReader *)self modifiedDomainsFlags];
          scanAllDomainsFlags = [(MBFSEventReader *)self scanAllDomainsFlags];
          v13 = v14 + 1;
          if (modifiedDomainsFlags2 != scanAllDomainsFlags)
          {
            continue;
          }
        }

        v12 = v14 + 1 >= events;
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

- (void)_handleEventPath:(id)path flags:(unsigned int)flags
{
  stringByStandardizingPath = [path stringByStandardizingPath];
  if ([stringByStandardizingPath hasPrefix:@"/private/var"])
  {
    v6 = [stringByStandardizingPath substringFromIndex:{objc_msgSend(@"/private", "length")}];

    stringByStandardizingPath = v6;
  }

  v20 = 0;
  v7 = [(MBFSEventReader *)self _domainFromPath:stringByStandardizingPath requiresScan:&v20];
  if (v7)
  {
    if (v20 == 1)
    {
      domainMarker = [(MBFSEventReader *)self domainMarker];
      name = [v7 name];
      [domainMarker markModifiedDomain:name];

      v10 = MBGetDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        name2 = [v7 name];
        *buf = 138412546;
        v22 = name2;
        v23 = 2112;
        v24 = stringByStandardizingPath;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Marked domain %@ to be scanned, FSEvent path %@", buf, 0x16u);

        name3 = [v7 name];
        v19 = stringByStandardizingPath;
        _MBLog();
      }

LABEL_16:

      goto LABEL_17;
    }

    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      name4 = [v7 name];
      *buf = 138412546;
      v22 = name4;
      v23 = 2112;
      v24 = stringByStandardizingPath;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Skipping FSEvent for %@ %@", buf, 0x16u);

      name3 = [v7 name];
      v19 = stringByStandardizingPath;
      _MBLog();
    }
  }

  else
  {
    pathToModifiedDomainFlags = [(MBFSEventReader *)self pathToModifiedDomainFlags];
    v13 = [pathToModifiedDomainFlags objectForKeyedSubscript:stringByStandardizingPath];
    unsignedIntValue = [v13 unsignedIntValue];

    if (unsignedIntValue)
    {
      v15 = unsignedIntValue;
      if ((~[(MBFSEventReader *)self modifiedDomainsFlags]& unsignedIntValue) != 0)
      {
        [(MBFSEventReader *)self setModifiedDomainsFlags:[(MBFSEventReader *)self modifiedDomainsFlags]| unsignedIntValue];
        v10 = MBGetDefaultLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          v22 = v15;
          v23 = 2112;
          v24 = stringByStandardizingPath;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Adding scan flags 0x%lx for FSEvent path %@", buf, 0x16u);
          name3 = v15;
          v19 = stringByStandardizingPath;
          _MBLog();
        }

        goto LABEL_16;
      }
    }

    v16 = MBGetDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v22 = stringByStandardizingPath;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Skipping FSEvent for path not in any domain %@", buf, 0xCu);
      name3 = stringByStandardizingPath;
      _MBLog();
    }
  }

  [(MBFSEventReader *)self setEventsSkipped:[(MBFSEventReader *)self eventsSkipped]+ 1];
LABEL_17:
  [(MBFSEventReader *)self setEventsCollected:[(MBFSEventReader *)self eventsCollected:name3]+ 1];
}

- (id)_domainFromPath:(id)path requiresScan:(BOOL *)scan
{
  pathCopy = path;
  pathToDomainMapping = [(MBFSEventReader *)self pathToDomainMapping];
  v8 = [pathToDomainMapping objectForKeyedSubscript:pathCopy];
  if (v8)
  {
    v9 = v8;
    stringByDeletingLastPathComponent = pathCopy;
LABEL_7:

    domainMarker = [(MBFSEventReader *)self domainMarker];
    name = [v9 name];
    v15 = [domainMarker isDomainMarkedAsModified:name];

    if (v15)
    {
      v16 = 0;
    }

    else if ([stringByDeletingLastPathComponent isEqualToString:pathCopy])
    {
      v16 = 1;
    }

    else
    {
      rootPathRelativeToVolumeMountPoint = [v9 rootPathRelativeToVolumeMountPoint];
      v18 = [pathCopy substringFromIndex:{objc_msgSend(rootPathRelativeToVolumeMountPoint, "length") + 1}];

      v16 = [v9 shouldBackUpAnyChildOfRelativePath:v18];
    }

    v11 = stringByDeletingLastPathComponent;
  }

  else
  {
    v11 = pathCopy;
    while (1)
    {
      v9 = [v11 length];

      if (!v9)
      {
        break;
      }

      stringByDeletingLastPathComponent = [v11 stringByDeletingLastPathComponent];

      pathToDomainMapping = [(MBFSEventReader *)self pathToDomainMapping];
      v12 = [pathToDomainMapping objectForKeyedSubscript:stringByDeletingLastPathComponent];
      v11 = stringByDeletingLastPathComponent;
      if (v12)
      {
        v9 = v12;
        goto LABEL_7;
      }
    }

    v16 = 0;
  }

  *scan = v16;

  return v9;
}

@end