@interface MBCKAnalysisPlugin
- (id)endedBackupWithEngine:(id)a3 error:(id)a4;
@end

@implementation MBCKAnalysisPlugin

- (id)endedBackupWithEngine:(id)a3 error:(id)a4
{
  v42 = a3;
  v41 = a4;
  if (((MBIsInternalInstall() & 1) != 0 || MBBuildIsSeed()) && [v42 backsUpPrimaryAccount])
  {
    if (v41)
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
      v38 = v42;
      v47 = [v38 cache];
      v70 = 0;
      v39 = [v47 fetchMostRecentSnapshotWithError:&v70];
      oslog = v70;
      if (v39)
      {
        v68[0] = _NSConcreteStackBlock;
        v68[1] = 3221225472;
        v68[2] = sub_1001ADD84;
        v68[3] = &unk_1003BC700;
        v37 = objc_alloc_init(NSMutableArray);
        v69 = v37;
        v5 = [v47 enumerateManifestsForSnapshot:v39 foundManifest:v68];
        v46 = objc_alloc_init(NSMutableDictionary);
        v6 = [MBCKDomainStatistics alloc];
        v7 = [v39 snapshotID];
        v45 = [(MBCKDomainStatistics *)v6 initWithSnapshotName:v7];

        if (v45)
        {
          v8 = [(MBCKDomainStatistics *)v45 statistics];
          [v8 setValue:@"Snapshot" forKey:@"DomainName"];

          v9 = [(MBCKDomainStatistics *)v45 statistics];
          [v46 setObject:v9 forKeyedSubscript:@"Snapshot"];

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
                v15 = [v12 domainName];
                v16 = [(MBCKDomainStatistics *)v14 initWithDomainName:v15];

                v17 = [(MBCKDomainStatistics *)v16 statistics];
                v18 = [v12 domainName];
                [v17 setValue:v18 forKey:@"DomainName"];

                v19 = [(MBCKDomainStatistics *)v16 statistics];
                v20 = [v12 domainName];
                [v46 setObject:v19 forKeyedSubscript:v20];

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
                v23 = [v47 enumerateFilesForManifest:v12 foundFile:v58];
                *buf = 0;
                v55 = buf;
                v56 = 0x2020000000;
                v57 = 0;
                v50 = 0;
                v51 = &v50;
                v52 = 0x2020000000;
                v53 = 0;
                v24 = [v12 domainName];
                v49[0] = _NSConcreteStackBlock;
                v49[1] = 3221225472;
                v49[2] = sub_1001ADFA8;
                v49[3] = &unk_1003C0BC0;
                v49[4] = buf;
                v49[5] = &v50;
                v25 = [v47 summarizeFileChangesForDomainName:v24 foundChanges:v49];

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
          v26 = [v47 summarizeFileChangesForAllChanges:v48];
          [(MBCKDomainStatistics *)v45 analyzeChurnWithFileCount:*(v55 + 6) withTotalFileSize:v51[3]];
          v27 = [v38 persona];
          v28 = [v27 copyPreferencesValueForKey:@"FailureCount" class:objc_opt_class()];
          if (v28)
          {
            [(MBCKDomainStatistics *)v45 addValue:v28 toKey:@"FailureCount"];
          }

          v29 = [(MBCKDomainStatistics *)v45 statistics];
          v30 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v39 type]);
          [v29 setValue:v30 forKey:@"BackupType"];

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