@interface DuetDiagnosticExtension
- (id)activitySummaryForActivityName:(id)name withExtractor:(id)extractor;
- (id)attachmentsForParameters:(id)parameters;
- (id)writeDiagnosisStringToFile:(id)file forActivity:(id)activity;
- (void)cleanUpDocumentsDirectory;
@end

@implementation DuetDiagnosticExtension

- (id)attachmentsForParameters:(id)parameters
{
  parametersCopy = parameters;
  [(DuetDiagnosticExtension *)self cleanUpDocumentsDirectory];
  if (parametersCopy)
  {
    v5 = [parametersCopy objectForKey:@"kDuetActivityNames"];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 componentsSeparatedByString:{@", "}];
      v8 = [_DASLogExtractor extractorForArchive:0];
      if (v8)
      {
        v9 = [[NSMutableArray alloc] initWithCapacity:1];
        if ([v7 count])
        {
          v10 = [v7 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(v7, "count"))}];
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v13 = 138412290;
            v14 = v10;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Finding summary for activity: %@", &v13, 0xCu);
          }

          v11 = [(DuetDiagnosticExtension *)self activitySummaryForActivityName:v10 withExtractor:v8];
          if (v11)
          {
            [v9 addObject:v11];
          }
        }
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v13) = 0;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create extractor, stopping", &v13, 2u);
        }

        v9 = 0;
      }
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "No activity names found, stopping", &v13, 2u);
      }

      v9 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "No parameters specified, stopping", &v13, 2u);
    }

    v9 = 0;
  }

  return v9;
}

- (id)activitySummaryForActivityName:(id)name withExtractor:(id)extractor
{
  nameCopy = name;
  extractorCopy = extractor;
  v8 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (nameCopy)
  {
    if (v8)
    {
      *buf = 138412290;
      v22 = nameCopy;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Getting summary for %@", buf, 0xCu);
    }

    v20 = 0;
    v9 = [extractorCopy copyActivitySummary:nameCopy startDate:0 endDate:0 detail:1 error:&v20];
    v10 = v9;
    if (v20)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v22) = v20;
        v11 = "Extractor failed with error %d";
        v12 = 8;
LABEL_7:
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v11, buf, v12);
      }
    }

    else
    {
      if (!v9)
      {
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_8;
        }

        *buf = 0;
        v11 = "Extractor couldn't get result string";
        v12 = 2;
        goto LABEL_7;
      }

      v15 = [v9 length];
      v16 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
      if (v15)
      {
        if (v16)
        {
          *buf = 138412546;
          v22 = nameCopy;
          v23 = 2112;
          v24 = v10;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Summary for %@:\n%@", buf, 0x16u);
        }

        v17 = [NSString stringWithFormat:@"Activity Name:\n%@%@", nameCopy, v10];
        v18 = [(DuetDiagnosticExtension *)self writeDiagnosisStringToFile:v17 forActivity:nameCopy];
        if (v18)
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v22 = v18;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Saved %@", buf, 0xCu);
          }

          v13 = [DEAttachmentItem attachmentWithPath:v18];
          v19 = [NSNumber numberWithBool:1];
          [v13 setDeleteOnAttach:v19];
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_100001668(nameCopy);
          }

          v13 = 0;
        }

        goto LABEL_9;
      }

      if (v16)
      {
        *buf = 138412290;
        v22 = nameCopy;
        v11 = "Summary for %@ is empty, skipping";
        v12 = 12;
        goto LABEL_7;
      }
    }

LABEL_8:
    v13 = 0;
LABEL_9:

    goto LABEL_13;
  }

  if (v8)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ActivityName is nil, skipping", buf, 2u);
  }

  v13 = 0;
LABEL_13:

  return v13;
}

- (id)writeDiagnosisStringToFile:(id)file forActivity:(id)activity
{
  fileCopy = file;
  activityCopy = activity;
  v7 = activityCopy;
  if (!fileCopy)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v16 = "DiagnosisString is nil, stopping";
LABEL_14:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v16, buf, 2u);
    }

LABEL_15:
    v15 = 0;
    goto LABEL_21;
  }

  if (!activityCopy)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v16 = "ActivityName is nil, stopping";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v8 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 0xFFFFuLL, 1);
  v9 = v8;
  if (v8 && [v8 count])
  {
    firstObject = [v9 firstObject];
    v11 = [NSString stringWithFormat:@"%@.txt", v7];
    v12 = [firstObject stringByAppendingPathComponent:v11];

    v18 = 0;
    v13 = [fileCopy writeToFile:v12 atomically:1 encoding:4 error:&v18];
    v14 = v18;
    if (v13)
    {
      v15 = v12;
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = v12;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to write file %@", buf, 0xCu);
      }

      v15 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Could not find directory to write file, skipping", buf, 2u);
    }

    v15 = 0;
  }

LABEL_21:

  return v15;
}

- (void)cleanUpDocumentsDirectory
{
  v2 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 0xFFFFuLL, 1);
  v3 = v2;
  if (v2 && [v2 count])
  {
    firstObject = [v3 firstObject];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = +[NSFileManager defaultManager];
    v17 = 0;
    v6 = [v5 contentsOfDirectoryAtPath:firstObject error:&v17];
    v7 = v17;

    v8 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v6);
          }

          if (v7)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v23 = firstObject;
              v24 = 2112;
              v25 = v7;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Encountered error while enumerating directory %@: %@", buf, 0x16u);
            }

            goto LABEL_19;
          }

          v12 = [firstObject stringByAppendingPathComponent:*(*(&v18 + 1) + 8 * i)];
          v13 = +[NSFileManager defaultManager];
          v16 = 0;
          [v13 removeItemAtPath:v12 error:&v16];
          v14 = v16;

          v15 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
          if (v14)
          {
            if (v15)
            {
              *buf = 138412546;
              v23 = v12;
              v24 = 2112;
              v25 = v14;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Encountered error while deleting file %@: %@", buf, 0x16u);
            }

            goto LABEL_23;
          }

          if (v15)
          {
            *buf = 138412290;
            v23 = v12;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Deleted file: %@", buf, 0xCu);
          }

          v7 = 0;
        }

        v9 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
        v7 = 0;
        v14 = 0;
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    else
    {
LABEL_19:
      v14 = v7;
    }

LABEL_23:
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Could not find directory to clean up files, skipping", buf, 2u);
  }
}

@end