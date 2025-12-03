@interface MBCKAnalysisPlugin
- (id)endedBackupWithEngine:(id)engine error:(id)error;
@end

@implementation MBCKAnalysisPlugin

- (id)endedBackupWithEngine:(id)engine error:(id)error
{
  engineCopy = engine;
  errorCopy = error;
  if (((MBIsInternalInstall() & 1) != 0 || MBBuildIsSeed()) && [engineCopy backsUpPrimaryAccount])
  {
    if (errorCopy)
    {
      oslog = MBGetDefaultLog();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "Analysis: Not performing analysis on incomplete backup", buf, 2u);
        _MBLog();
      }
    }

    else
    {
      v38 = engineCopy;
      cache = [v38 cache];
      v70 = 0;
      v39 = [cache fetchMostRecentSnapshotWithError:&v70];
      oslog = v70;
      if (v39)
      {
        v68[0] = _NSConcreteStackBlock;
        v68[1] = 3221225472;
        v68[2] = sub_1001ADD84;
        v68[3] = &unk_1003BC700;
        v37 = objc_alloc_init(NSMutableArray);
        v69 = v37;
        v5 = [cache enumerateManifestsForSnapshot:v39 foundManifest:v68];
        v46 = objc_alloc_init(NSMutableDictionary);
        v6 = [MBCKDomainStatistics alloc];
        snapshotID = [v39 snapshotID];
        v45 = [(MBCKDomainStatistics *)v6 initWithSnapshotName:snapshotID];

        if (v45)
        {
          statistics = [(MBCKDomainStatistics *)v45 statistics];
          [statistics setValue:@"Snapshot" forKey:@"DomainName"];

          statistics2 = [(MBCKDomainStatistics *)v45 statistics];
          [v46 setObject:statistics2 forKeyedSubscript:@"Snapshot"];

          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          obj = v37;
          v10 = [obj countByEnumeratingWithState:&v64 objects:v75 count:16];
          if (v10)
          {
            v44 = *v65;
            do
            {
              for (i = 0; i != v10; i = i + 1)
              {
                if (*v65 != v44)
                {
                  objc_enumerationMutation(obj);
                }

                v12 = *(*(&v64 + 1) + 8 * i);
                v13 = objc_alloc_init(NSMutableDictionary);
                v14 = [MBCKDomainStatistics alloc];
                domainName = [v12 domainName];
                v16 = [(MBCKDomainStatistics *)v14 initWithDomainName:domainName];

                statistics3 = [(MBCKDomainStatistics *)v16 statistics];
                domainName2 = [v12 domainName];
                [statistics3 setValue:domainName2 forKey:@"DomainName"];

                statistics4 = [(MBCKDomainStatistics *)v16 statistics];
                domainName3 = [v12 domainName];
                [v46 setObject:statistics4 forKeyedSubscript:domainName3];

                v58[0] = _NSConcreteStackBlock;
                v58[1] = 3221225472;
                v58[2] = sub_1001ADDA8;
                v58[3] = &unk_1003C0B98;
                v21 = v13;
                v59 = v21;
                v60 = v12;
                v61 = v46;
                v22 = v16;
                v62 = v22;
                v63 = v45;
                v23 = [cache enumerateFilesForManifest:v12 foundFile:v58];
                *buf = 0;
                v55 = buf;
                v56 = 0x2020000000;
                v57 = 0;
                v50 = 0;
                v51 = &v50;
                v52 = 0x2020000000;
                v53 = 0;
                domainName4 = [v12 domainName];
                v49[0] = _NSConcreteStackBlock;
                v49[1] = 3221225472;
                v49[2] = sub_1001ADFA8;
                v49[3] = &unk_1003C0BC0;
                v49[4] = buf;
                v49[5] = &v50;
                v25 = [cache summarizeFileChangesForDomainName:domainName4 foundChanges:v49];

                [(MBCKDomainStatistics *)v22 analyzeChurnWithFileCount:*(v55 + 6) withTotalFileSize:v51[3]];
                _Block_object_dispose(&v50, 8);
                _Block_object_dispose(buf, 8);
              }

              v10 = [obj countByEnumeratingWithState:&v64 objects:v75 count:16];
            }

            while (v10);
          }

          *buf = 0;
          v55 = buf;
          v56 = 0x2020000000;
          v57 = 0;
          v50 = 0;
          v51 = &v50;
          v52 = 0x2020000000;
          v53 = 0;
          v48[0] = _NSConcreteStackBlock;
          v48[1] = 3221225472;
          v48[2] = sub_1001ADFC4;
          v48[3] = &unk_1003C0BC0;
          v48[4] = buf;
          v48[5] = &v50;
          v26 = [cache summarizeFileChangesForAllChanges:v48];
          [(MBCKDomainStatistics *)v45 analyzeChurnWithFileCount:*(v55 + 6) withTotalFileSize:v51[3]];
          persona = [v38 persona];
          v28 = [persona copyPreferencesValueForKey:@"FailureCount" class:objc_opt_class()];
          if (v28)
          {
            [(MBCKDomainStatistics *)v45 addValue:v28 toKey:@"FailureCount"];
          }

          statistics5 = [(MBCKDomainStatistics *)v45 statistics];
          v30 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v39 type]);
          [statistics5 setValue:v30 forKey:@"BackupType"];

          v31 = +[MBBehaviorOptions sharedOptions];
          LODWORD(v30) = [v31 usePowerLog];

          if (v30)
          {
            v32 = MBGetDefaultLog();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              *v71 = 138412546;
              v72 = @"Statistics";
              v73 = 2112;
              v74 = v46;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Sending to PowerLog: %@ %@", v71, 0x16u);
              _MBLog();
            }

            PLLogRegisteredEvent();
          }

          _Block_object_dispose(&v50, 8);
          _Block_object_dispose(buf, 8);
        }

        else
        {
          v35 = MBGetDefaultLog();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "Analysis: Unable to allocate MBCKDomainStatistics", buf, 2u);
            _MBLog();
          }
        }

        v34 = v37;
      }

      else
      {
        v33 = MBGetDefaultLog();
        v34 = v33;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Analysis: Unable to fetch last snapshot", buf, 2u);
          _MBLog();
          v34 = v33;
        }
      }
    }
  }

  return 0;
}

@end