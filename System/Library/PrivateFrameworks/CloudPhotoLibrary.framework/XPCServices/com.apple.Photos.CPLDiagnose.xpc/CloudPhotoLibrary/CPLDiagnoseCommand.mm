@interface CPLDiagnoseCommand
+ (BOOL)isAppleInternal;
+ (BOOL)useAppleArchive;
+ (NSString)diagnosticExtension;
+ (id)help;
+ (id)parameters;
+ (id)supportedFeatureAreas;
- (BOOL)_chooseLibraryInteractively;
- (BOOL)_libraryIdentifierMatchesLibraryFilterRegExp:(id)a3;
- (BOOL)_lookForLibrary;
- (BOOL)_path:(id)a3 existsInFileIdentifiersAddIfNot:(id)a4;
- (BOOL)_url:(id)a3 existsInFileIdentifiersAddIfNot:(id)a4;
- (BOOL)_wrapperStatusMatchesLibraryFilterRegExp:(id)a3;
- (BOOL)createBaseFolderAndLogFile;
- (BOOL)parseCommandOptionsWithArgc:(int)a3 argv:(char *)a4;
- (id)_abbreviatedPathForURL:(id)a3;
- (id)_determineLibraryPathFromDiagnoseBundleIdentifier:(id)a3;
- (id)_goodNameForLibraryIdentifier:(id)a3;
- (id)_libraryURLFromWrapperStatus:(id)a3;
- (id)_readAppPrivateData;
- (id)_simplifiedPathForURL:(id)a3;
- (id)_syndicationLibrarySpotlightSearchAttributes;
- (id)getEngineWrapperStatusesWithError:(id *)a3;
- (id)interestingDatabasesForUBFLibraryPath:(id)a3 isSharingLibrary:(BOOL)a4;
- (id)interestingFilesInDirectoryPath:(id)a3 withPredicate:(id)a4;
- (id)mediaAnalysisSystemDatabasePath;
- (id)prependPath:(id)a3 toStringsInArray:(id)a4;
- (id)processes;
- (int)execute;
- (void)_collectMemoryCreationFeatureAvailabilityDiagnostics;
- (void)_collectPhotosSearchDiagnostics;
- (void)_collectSearchEntityDonationDiagnostics;
- (void)_collectSharedAlbumFilesAtPath:(id)a3;
- (void)_collectUniversalSearchDiagnostics;
- (void)_collectUniversalSearchFeatureAreaDiagnostics;
- (void)_diagnoseLibraryIdentifier:(id)a3;
- (void)_diagnoseLibraryWrapperStatus:(id)a3;
- (void)_diagnoseWithCPLLibraryIdentifier:(id)a3;
- (void)_printWrapperStatus:(id)a3;
- (void)_removeResourceDataFromFaceCropChangeCPLSerializedRecords:(sqlite3 *)a3;
- (void)_removeShareURLFromCPLScopes:(sqlite3 *)a3;
- (void)_removeShareURLFromPhotosMomentShare:(sqlite3 *)a3;
- (void)addFilesFromVisionCacheToDictionary:(id)a3;
- (void)collectAccountStatus;
- (void)collectAdditionalInformationForDatabaseAtPath:(id)a3 toDirectory:(id)a4;
- (void)collectAppLibraryIdentifiers;
- (void)collectCloudPhotodGlobalStatus;
- (void)collectCloudPhotodStatusWithLibraryIdentifier:(id)a3 subdirectory:(id)a4;
- (void)collectDatabaseAtPath:(id)a3 libraryPath:(id)a4 subdirectory:(id)a5;
- (void)collectDefaults;
- (void)collectDiagnosticLog:(id)a3;
- (void)collectDiagnosticLogs;
- (void)collectDuetInfo;
- (void)collectFeatureAreaDiagnostics;
- (void)collectFileAtPath:(id)a3 suffix:(id)a4;
- (void)collectFileAtURL:(id)a3 suffix:(id)a4 destinationDirectory:(id)a5;
- (void)collectFileListingAtPath:(id)a3 label:(id)a4 filename:(id)a5 extendedDetail:(BOOL)a6;
- (void)collectFilePaths:(id)a3 toSubdirectory:(id)a4;
- (void)collectFiles;
- (void)collectLOFetchRecordings;
- (void)collectLocalLibraryMetadataInfo;
- (void)collectMemoryCreationDiagnostics;
- (void)collectPhotosLibraryUpgradeLogs;
- (void)collectPreferences;
- (void)collectSearchDiagnostics;
- (void)collectSilentMover;
- (void)collectStoryDiagnosticsFiles;
- (void)collectSysdiagnose:(id)a3;
- (void)collectTaskInfo;
- (void)copyDatabaseFromPath:(id)a3 toPath:(id)a4;
- (void)determineLibraryPaths;
- (void)displayConsent;
- (void)executeMemoryToolsOnProcess:(id)a3;
- (void)executeTool:(id)a3 onProcess:(id)a4;
- (void)markPurgeable:(id)a3;
- (void)prepareOutputURLs;
- (void)printDiskCapacity:(id)a3;
- (void)printFormat:(id)a3 arguments:(char *)a4;
- (void)revertToRootMode:(BOOL)a3;
- (void)sampleProcess:(id)a3;
- (void)sampleProcesses;
- (void)setUserMode:(BOOL)a3;
- (void)signalProcesses;
- (void)startDiagnostic;
@end

@implementation CPLDiagnoseCommand

+ (BOOL)useAppleArchive
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"PhotosDiagnosticsAppleArchive"];

  return v3;
}

+ (NSString)diagnosticExtension
{
  if ([a1 useAppleArchive])
  {
    v2 = PFAppleArchiveExtension;
  }

  else
  {
    v2 = @"tgz";
  }

  return v2;
}

+ (id)parameters
{
  v2 = [a1 isAppleInternal];
  v3 = @" [-c] [-m]";
  if (!v2)
  {
    v3 = &stru_100035A18;
  }

  return [NSString stringWithFormat:@"[-o <outputfile>] [-l <librarypath>] [-s] [-S] [-t] [-d|-D] [-O] [-f <feature>] [-a <annotation>]%@%@", v3, &stru_100035A18];
}

+ (id)help
{
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendFormat:@"%@\n\t%@", @"-o <outputfile>", @"save diagnostic to a specific file."];
  [v3 appendString:@"\n"];
  [v3 appendFormat:@"%@\n\t%@", @"-l <librarypath>", @"copy information from the library at path."];
  [v3 appendString:@"\n"];
  [v3 appendFormat:@"%@\n\t%@", @"-i", @"interactively chose the library to copy information from"];
  [v3 appendString:@"\n"];
  [v3 appendFormat:@"%@\n\t%@", @"-r <regexp>", @"automatically pick the first library matching the expression"];
  [v3 appendString:@"\n"];
  [v3 appendFormat:@"%@\n\t%@", @"-b <bundleid>", @"choose the library path using the bundle ID that matches a library container identifier"];
  [v3 appendString:@"\n"];
  [v3 appendFormat:@"%@\n\t%@", @"-S", @"skip appending auto suffix to specified diagnostic file."];
  [v3 appendString:@"\n"];
  [v3 appendFormat:@"%@\n\t%@", @"-s", @"skip sysdiagnose phase."];
  [v3 appendString:@"\n"];
  [v3 appendFormat:@"%@\n\t%@", @"-L", @"request sysdiagnose collect a full logarchive."];
  [v3 appendString:@"\n"];
  [v3 appendFormat:@"%@\n\t%@", @"-t", @"time-out long operations."];
  [v3 appendString:@"\n"];
  [v3 appendFormat:@"%@\n\t%@", @"-O", @"do not strip OCR data from the database."];
  [v3 appendString:@"\n"];
  [v3 appendFormat:@"%@\n\t%@", @"-P", @"run library preprocessing."];
  [v3 appendString:@"\n"];
  [v3 appendFormat:@"%@\n\t%@", @"-d/-D", @"skip database copying. (-d for databases bigger than 1200 MB, -D always)"];
  [v3 appendString:@"\n"];
  v4 = [a1 supportedFeatureAreas];
  v5 = [v4 componentsJoinedByString:@"\n\t"];
  [v3 appendFormat:@"%@\n\t%@\n\t(supported values: %@)", @"-f <feature>", @"capture additional diagnostics for the specified feature area.", v5];

  [v3 appendString:@"\n"];
  [v3 appendFormat:@"%@\n\t%@", @"-a <annotation>", @"annotate output file name (e.g. downloader), ignored if -o used."];
  if ([a1 isAppleInternal])
  {
    [v3 appendString:@"\n"];
    [v3 appendFormat:@"%@\n\t%@", @"-c", @"do not display consent prompt."];
    [v3 appendString:@"\n"];
    [v3 appendFormat:@"%@\n\t%@", @"-m", @"include story diagnostics."];
  }

  [v3 appendString:@"\n"];
  [v3 appendFormat:@"%@\n\t%@", @"-n", @"do not automatically include System Photo Library and Syndication library"];

  return v3;
}

- (BOOL)parseCommandOptionsWithArgc:(int)a3 argv:(char *)a4
{
  v7 = [(CPLCTLCommand *)self defaultLibraryURL];
  v8 = [v7 path];
  libraryPath = self->_libraryPath;
  self->_libraryPath = v8;

  v10 = [objc_opt_class() isAppleInternal];
  self->_isAppleInternal = v10;
  self->_hasFullShellCommands = v10;
  self->_isRoot = geteuid() == 0;
  self->_optionalTimeOut = 0;
  self->_skipDBCopy = 0;
  self->_skipBigDBCopy = 0;
  self->_skipLibraryPreprocessing = 1;
  self->_noAutoSuffix = 0;
  self->_displayConsent = 1;
  self->_copyRecoverJournals = 1;
  v11 = getenv("CPLCTL_PHOTOSCTL");
  v12 = &CPLAppBundleIdentifierForContainerIdentifier_ptr;
  if (v11)
  {
    v13 = [NSString stringWithUTF8String:v11];
  }

  else
  {
    v13 = @"/usr/local/bin/photosctl";
  }

  objc_storeStrong(&self->_photosctlCommand, v13);
  if (v11)
  {
  }

  self->_includeStoryDiagnostics = 0;
  v14 = +[NSDate date];
  v15 = objc_alloc_init(NSDateFormatter);
  [v15 setDateFormat:@"yyyyMMdd-HHmmss"];
  v16 = [NSLocale localeWithLocaleIdentifier:@"en_US"];
  [v15 setLocale:v16];

  v17 = [v15 stringFromDate:v14];
  timestamp = self->_timestamp;
  self->_timestamp = v17;

  optreset = 1;
  optind = 1;
  v19 = getopt(a3, a4, "o:l:tdDa:f:LcsSOmPir:nb:") << 24;
  if (v19 != -16777216)
  {
    v77 = v14;
    v76 = CPLDiagnosticsInProgressPrefix;
    v20 = 1;
    do
    {
      v21 = v20;
      v20 = 0;
      switch(v19 >> 24)
      {
        case 'D':
          v22 = 449;
          goto LABEL_41;
        case 'L':
          v22 = 475;
          goto LABEL_41;
        case 'O':
          v22 = 479;
          goto LABEL_41;
        case 'P':
          v29 = 451;
          goto LABEL_31;
        case 'S':
          v22 = 477;
          goto LABEL_41;
        case 'a':
          v25 = +[NSFileManager defaultManager];
          v26 = [v25 stringWithFileSystemRepresentation:optarg length:strlen(optarg)];

          if (![v26 length])
          {
            goto LABEL_51;
          }

          v27 = [v12[285] stringWithFormat:@"-%@", v26];
          annotation = self->_annotation;
          self->_annotation = v27;

          goto LABEL_60;
        case 'b':
          if (self->_libraryPath)
          {
            v23 = self;
            v24 = @"-l cannot be used with -b";
            goto LABEL_23;
          }

          v50 = [v12[285] stringWithCString:optarg encoding:4];
          v51 = [(CPLDiagnoseCommand *)self _determineLibraryPathFromDiagnoseBundleIdentifier:v50];
          v52 = self->_libraryPath;
          self->_libraryPath = v51;

          v20 = (self->_libraryPath != 0) & v21;
          break;
        case 'c':
          if (![objc_opt_class() isAppleInternal])
          {
            goto LABEL_42;
          }

          v29 = 478;
LABEL_31:
          *(&self->super.super.isa + v29) = 0;
          goto LABEL_42;
        case 'd':
          v22 = 450;
          goto LABEL_41;
        case 'f':
          v33 = [v12[285] stringWithCString:optarg encoding:4];
          v26 = [v33 lowercaseString];

          v34 = [objc_opt_class() supportedFeatureAreas];
          v35 = [v34 containsObject:v26];

          if (v35)
          {
            featureAreas = self->_featureAreas;
            if (featureAreas)
            {
              [(NSArray *)featureAreas arrayByAddingObject:v26];
            }

            else
            {
              v83 = v26;
              [NSArray arrayWithObjects:&v83 count:1];
            }
            v37 = ;
            v61 = self->_featureAreas;
            self->_featureAreas = v37;
          }

          else
          {
            [(CPLCTLCommand *)self printFormat:@"Invalid feature area: %@", v26];
            v21 = 0;
          }

          goto LABEL_59;
        case 'i':
          v22 = 138;
          goto LABEL_41;
        case 'j':
          self->_copyRecoverJournals = 1;
          [(CPLCTLCommand *)self printFormat:@"-j is no longer a required option to capture rebuild journals"];
          goto LABEL_42;
        case 'l':
          if (self->_libraryPath)
          {
            v23 = self;
            v24 = @"-l used twice";
LABEL_23:
            [(CPLCTLCommand *)v23 printFormat:v24];
            v20 = 0;
          }

          else
          {
            v46 = +[NSFileManager defaultManager];
            v26 = [v46 stringWithFileSystemRepresentation:optarg length:strlen(optarg)];

            if ([v26 length])
            {
              v80 = 0;
              v47 = +[NSFileManager defaultManager];
              v48 = [v47 fileExistsAtPath:v26 isDirectory:&v80];
              v49 = v80;

              if (v48 && (v49 & 1) != 0)
              {
                objc_storeStrong(&self->_libraryPath, v26);
              }

              v12 = &CPLAppBundleIdentifierForContainerIdentifier_ptr;
            }

            if (!self->_libraryPath)
            {
              [(CPLCTLCommand *)self printFormat:@"Invalid library path"];
LABEL_51:
              v21 = 0;
            }

LABEL_60:

            v20 = v21;
          }

          break;
        case 'm':
          v22 = 480;
          goto LABEL_41;
        case 'n':
          v22 = 154;
          goto LABEL_41;
        case 'o':
          v30 = +[NSFileManager defaultManager];
          v26 = [v30 stringWithFileSystemRepresentation:optarg length:strlen(optarg)];

          if (![v26 length])
          {
            goto LABEL_51;
          }

          v31 = [v26 lastPathComponent];
          v75 = v31;
          if (self->_noAutoSuffix)
          {
            v32 = [v31 stringByDeletingPathExtension];
            [v76 stringByAppendingString:v32];
          }

          else
          {
            v53 = [v31 stringByDeletingPathExtension];
            v32 = [NSString stringWithFormat:@"%@%@-T%@", v76, v53, self->_timestamp];

            [v32 stringByAppendingPathExtension:@"cpldiagnostics"];
          }
          v54 = ;

          v55 = [NSURL fileURLWithPath:@"/var/tmp" isDirectory:1];
          v56 = [v55 URLByAppendingPathComponent:v54 isDirectory:1];
          outputFolder = self->_outputFolder;
          self->_outputFolder = v56;

          v58 = [NSURL fileURLWithPath:v26 isDirectory:0];
          outputFile = self->_outputFile;
          self->_outputFile = v58;

LABEL_59:
          v12 = &CPLAppBundleIdentifierForContainerIdentifier_ptr;
          goto LABEL_60;
        case 'p':
          goto LABEL_40;
        case 'r':
          v38 = objc_alloc(v12[285]);
          v39 = [v38 initWithUTF8String:optarg];
          if (v39)
          {
            v40 = v39;
            v41 = [NSRegularExpression alloc];
            v79 = 0;
            v42 = [v41 initWithPattern:v40 options:0 error:&v79];
            v43 = v79;
            v44 = v43;
            if (v42)
            {
              libraryFilterRegExp = self->_libraryFilterRegExp;
              self->_libraryFilterRegExp = v42;

              v12 = &CPLAppBundleIdentifierForContainerIdentifier_ptr;
LABEL_40:
              v22 = 152;
LABEL_41:
              *(&self->super.super.isa + v22) = 1;
LABEL_42:
              v20 = v21;
            }

            else
            {
              v60 = [v43 localizedDescription];
              [(CPLCTLCommand *)self printFormat:@"Invalid pattern: %@", v60];

              v20 = 0;
              v12 = &CPLAppBundleIdentifierForContainerIdentifier_ptr;
            }
          }

          else
          {
            [(CPLCTLCommand *)self printFormat:@"Invalid pattern"];
            v20 = 0;
          }

          break;
        case 's':
          v22 = 474;
          goto LABEL_41;
        case 't':
          v22 = 448;
          goto LABEL_41;
        default:
          break;
      }

      v19 = getopt(a3, a4, "o:l:tdDa:f:LcsSOmPir:nb:") << 24;
    }

    while (v19 != -16777216);
    v14 = v77;
    if ((v20 & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  pickInteractively = self->_pickInteractively;
  if (self->_libraryPath)
  {
    if (!self->_pickInteractively && !self->_libraryFilterRegExp)
    {
      goto LABEL_76;
    }

LABEL_69:
    [(CPLCTLCommand *)self printFormat:@"-l, -i and -r are mutually exclusive"];
    v63 = 0;
    if (self->_libraryPath)
    {
      goto LABEL_75;
    }

    goto LABEL_72;
  }

  if (self->_pickInteractively)
  {
    if (self->_libraryFilterRegExp)
    {
      goto LABEL_69;
    }

    v63 = 1;
  }

  else
  {
    v63 = 1;
  }

LABEL_72:
  if (self->_noAutoIncludeSPLAndSyndication)
  {
    [(CPLCTLCommand *)self printFormat:@"-l or -b are required if -n is specified"];
LABEL_80:
    v68 = [objc_opt_class() toolName];
    [(CPLCTLCommand *)self printFormat:@"Invalid parameters for %@", v68];
    v69 = 0;
    goto LABEL_81;
  }

LABEL_75:
  if (!v63)
  {
    goto LABEL_80;
  }

LABEL_76:
  v64 = +[NSFileManager defaultManager];
  v65 = [v64 attributesOfItemAtPath:@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/photos" error:0];

  if (v65 && ([v65 fileOwnerAccountID], v66 = objc_claimAutoreleasedReturnValue(), v67 = objc_msgSend(v66, "intValue"), v66, !v67))
  {
    v71 = +[NSFileManager defaultManager];
    v81 = NSFileOwnerAccountName;
    v82 = @"mobile";
    v72 = [NSDictionary dictionaryWithObjects:&v82 forKeys:&v81 count:1];
    v78 = 0;
    v73 = [v71 setAttributes:v72 ofItemAtPath:@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/photos" error:&v78];
    v68 = v78;

    if ((v73 & 1) == 0)
    {
      v74 = [v68 localizedDescription];
      [(CPLCTLCommand *)self printFormat:@"Failed to repair output folder ownership: %@", v74];
    }
  }

  else
  {
    v68 = 0;
  }

  v69 = 1;
LABEL_81:

  return v69;
}

- (id)_determineLibraryPathFromDiagnoseBundleIdentifier:(id)a3
{
  v4 = a3;
  v26 = 0;
  v5 = [(CPLCTLCommand *)self getLibraryIdentifiersWithDomain:3 error:&v26];
  v6 = v26;
  v7 = v6;
  if (v5)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v21 = v7;
      v11 = *v23;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          v14 = [v13 containerIdentifier];
          v15 = [v14 caseInsensitiveCompare:v4];

          if (v15)
          {
            v16 = [v13 containerIdentifier];
            v17 = CPLAppBundleIdentifierForContainerIdentifier();
            v18 = [v17 isEqualToString:v4];

            if ((v18 & 1) == 0)
            {
              continue;
            }
          }

          v19 = [v13 path];
          v7 = v21;
          goto LABEL_15;
        }

        v10 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }

      v7 = v21;
    }

    v19 = @"/var/mobile/Media";
  }

  else
  {
    v8 = [v6 localizedDescription];
    [(CPLCTLCommand *)self printFormat:@"Failed to get the list of active libraries: %@", v8];
    v19 = 0;
  }

LABEL_15:

  return v19;
}

- (id)_simplifiedPathForURL:(id)a3
{
  v3 = [a3 path];
  if ([v3 hasPrefix:@"/var/mobile/Library/Logs/"])
  {
    v4 = [v3 substringFromIndex:{objc_msgSend(@"/var/mobile/Library/Logs/", "length")}];
    v5 = [NSString stringWithFormat:@".../%@", v4];

    v3 = v5;
  }

  return v3;
}

- (id)_abbreviatedPathForURL:(id)a3
{
  v3 = [a3 path];
  if ([v3 hasPrefix:@"/private/"])
  {
    v4 = [v3 substringFromIndex:{objc_msgSend(@"/private", "length")}];

    v3 = v4;
  }

  if ([v3 hasPrefix:@"/var/mobile/"])
  {
    v5 = [v3 substringFromIndex:{objc_msgSend(@"/var/mobile/", "length")}];
    v6 = [NSString stringWithFormat:@"~mobile/%@", v5];

    v3 = v6;
  }

  return v3;
}

- (id)_libraryURLFromWrapperStatus:(id)a3
{
  v3 = a3;
  v4 = [v3 parameters];
  v5 = [v4 libraryIdentifier];
  v6 = [v5 isEqualToString:CPLLibraryIdentifierSystemLibrary];

  if (v6)
  {
LABEL_6:
    v8 = 0;
  }

  else
  {
    v7 = [v3 parameters];
    v8 = [v7 clientLibraryBaseURL];

    while (1)
    {
      v9 = [v8 pathExtension];
      v10 = [v9 isEqualToString:@"photoslibrary"];

      if (v10)
      {
        break;
      }

      v11 = [v8 URLByDeletingLastPathComponent];

      v12 = [v11 path];
      v13 = [v12 isEqualToString:@"/"];

      v8 = v11;
      if (v13)
      {

        goto LABEL_6;
      }
    }
  }

  return v8;
}

- (void)_diagnoseWithCPLLibraryIdentifier:(id)a3
{
  v4 = a3;
  if (v4 && ([v4 isEqualToString:CPLLibraryIdentifierSystemLibrary] & 1) == 0)
  {
    v5 = CPLContainerIdentifierForLibraryIdentifier();
    annotation = self->_annotation;
    v7 = [NSString alloc];
    if (annotation)
    {
      v8 = [v7 initWithFormat:@"-%@%@", v5, self->_annotation];
    }

    else
    {
      v8 = [v7 initWithFormat:@"-%@", v5, v10];
    }

    v9 = self->_annotation;
    self->_annotation = v8;
  }

  _objc_release_x1();
}

- (void)_diagnoseLibraryWrapperStatus:(id)a3
{
  v4 = a3;
  v12 = [(CPLDiagnoseCommand *)self _libraryURLFromWrapperStatus:v4];
  if (v12)
  {
    v5 = [v4 parameters];
    v6 = [v5 libraryIdentifier];
    [(CPLCTLCommand *)self printFormat:@"Will diagnose library with CPL identifier %@", v6];

    v7 = [(CPLDiagnoseCommand *)self _abbreviatedPathForURL:v12];
    [(CPLCTLCommand *)self printFormat:@"  path: %@", v7];

    v8 = [v12 path];
    libraryPath = self->_libraryPath;
    self->_libraryPath = v8;
  }

  else
  {
    [(CPLCTLCommand *)self printFormat:@"Will diagnose the System library"];
  }

  v10 = [v4 parameters];

  v11 = [v10 libraryIdentifier];
  [(CPLDiagnoseCommand *)self _diagnoseWithCPLLibraryIdentifier:v11];

  [(CPLCTLCommand *)self printFormat:@"============================"];
}

- (id)_goodNameForLibraryIdentifier:(id)a3
{
  v3 = a3;
  v4 = [v3 path];

  if (v4)
  {
    v5 = [v3 name];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [v3 containerIdentifier];
    }

    v8 = v7;
  }

  else
  {
    v8 = @"System Library";
  }

  return v8;
}

- (void)_diagnoseLibraryIdentifier:(id)a3
{
  v16 = a3;
  v4 = [v16 path];
  if (v4)
  {
    v5 = [[NSURL alloc] initFileURLWithPath:v4 isDirectory:1];
    v6 = [(CPLDiagnoseCommand *)self _goodNameForLibraryIdentifier:v16];
    if (v6)
    {
      v7 = v6;
      v8 = [v16 uuid];
      [(CPLCTLCommand *)self printFormat:@"Will diagnose library %@ (%@)", v7, v8];

      v9 = [(CPLDiagnoseCommand *)self _abbreviatedPathForURL:v5];
      [(CPLCTLCommand *)self printFormat:@"  path: %@", v9];

      objc_storeStrong(&self->_libraryPath, v4);
      v5 = [v7 stringByReplacingOccurrencesOfString:@"/" withString:@":"];

      annotation = self->_annotation;
      v11 = [NSString alloc];
      if (annotation)
      {
        v12 = [v11 initWithFormat:@"-%@%@", v5, self->_annotation];
      }

      else
      {
        v12 = [v11 initWithFormat:@"-%@", v5, v15];
      }

      v14 = self->_annotation;
      self->_annotation = v12;
    }

    else
    {
      v13 = [(CPLDiagnoseCommand *)self _abbreviatedPathForURL:v5];
      [(CPLCTLCommand *)self printFormat:@"Will diagnose library at %@", v13];

      objc_storeStrong(&self->_libraryPath, v4);
    }
  }

  else
  {
    [(CPLCTLCommand *)self printFormat:@"Will diagnose the System Library"];
  }

  [(CPLCTLCommand *)self printFormat:@"============================"];
}

- (BOOL)_url:(id)a3 existsInFileIdentifiersAddIfNot:(id)a4
{
  v5 = a4;
  v12 = 0;
  v6 = [a3 getResourceValue:&v12 forKey:NSURLFileIdentifierKey error:0];
  v7 = v12;
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    goto LABEL_8;
  }

  if (([v5 containsObject:v7] & 1) == 0)
  {
    [v5 addObject:v8];
LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v10 = 1;
LABEL_9:

  return v10;
}

- (BOOL)_path:(id)a3 existsInFileIdentifiersAddIfNot:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[NSURL alloc] initFileURLWithPath:v7];

  LOBYTE(v7) = [(CPLDiagnoseCommand *)self _url:v8 existsInFileIdentifiersAddIfNot:v6];
  return v7;
}

- (BOOL)_chooseLibraryInteractively
{
  v87 = 0;
  v3 = [(CPLDiagnoseCommand *)self getEngineWrapperStatusesWithError:&v87];
  v4 = v87;
  v5 = v4;
  if (v3)
  {
    if ([v3 count])
    {
      v71 = objc_alloc_init(NSMutableArray);
      v67 = objc_alloc_init(NSMutableSet);
      v86 = v5;
      v6 = [(CPLCTLCommand *)self getLibraryIdentifiersWithDomain:3 error:&v86];
      v7 = v86;

      v63 = v6;
      v64 = v3;
      v62 = v7;
      if (v6)
      {
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v8 = v6;
        v9 = [v8 countByEnumeratingWithState:&v82 objects:v90 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v83;
          do
          {
            for (i = 0; i != v10; i = i + 1)
            {
              if (*v83 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v82 + 1) + 8 * i);
              v14 = [v13 path];
              v15 = v14;
              if (v14)
              {
                v16 = [v14 pathExtension];
                if ([v16 isEqualToString:@"photoslibrary"])
                {
                  v17 = [(CPLDiagnoseCommand *)self _path:v15 existsInFileIdentifiersAddIfNot:v67];

                  if ((v17 & 1) == 0)
                  {
                    [v71 addObject:v13];
                  }
                }

                else
                {
                }
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v82 objects:v90 count:16];
          }

          while (v10);
          v3 = v64;
        }
      }

      else
      {
        v8 = [v7 localizedDescription];
        [(CPLCTLCommand *)self printFormat:@"WARNING: failed to get libraries from Photos daemon: %@", v8];
      }

      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      obj = v3;
      v21 = [obj countByEnumeratingWithState:&v78 objects:v89 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v79;
        v24 = CPLLibraryIdentifierSystemLibrary;
        do
        {
          for (j = 0; j != v22; j = j + 1)
          {
            if (*v79 != v23)
            {
              objc_enumerationMutation(obj);
            }

            v26 = *(*(&v78 + 1) + 8 * j);
            v27 = [(CPLDiagnoseCommand *)self _libraryURLFromWrapperStatus:v26];
            v28 = [v26 parameters];
            v29 = [v28 libraryIdentifier];
            v30 = [v29 isEqualToString:v24];

            if (v30)
            {
              [v71 insertObject:v26 atIndex:0];
            }

            else if (v27 && ![(CPLDiagnoseCommand *)self _url:v27 existsInFileIdentifiersAddIfNot:v67])
            {
              [v71 addObject:v26];
            }
          }

          v22 = [obj countByEnumeratingWithState:&v78 objects:v89 count:16];
        }

        while (v22);
      }

      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v66 = v71;
      v31 = [v66 countByEnumeratingWithState:&v74 objects:v88 count:16];
      if (v31)
      {
        v32 = v31;
        LODWORD(v33) = 0;
        v34 = *v75;
        v65 = CPLLibraryIdentifierSystemLibrary;
        do
        {
          for (k = 0; k != v32; k = k + 1)
          {
            if (*v75 != v34)
            {
              objc_enumerationMutation(v66);
            }

            v36 = *(*(&v74 + 1) + 8 * k);
            v33 = (v33 + 1);
            objc_opt_class();
            v72 = v36;
            if (objc_opt_isKindOfClass())
            {
              v37 = v36;
              v38 = [v37 path];
              if (!v38)
              {
                sub_10001EB64();
              }

              v39 = v38;
              v40 = [[NSURL alloc] initFileURLWithPath:v38 isDirectory:1];
              v68 = v40;
              obja = [(CPLDiagnoseCommand *)self _goodNameForLibraryIdentifier:v37];
              v41 = [v37 uuid];
              v42 = [v37 userDescription];
              v43 = v42;
              v44 = v34;
              v45 = v33;
              if (v42)
              {
                v46 = v42;
              }

              else
              {
                v46 = @"(no description)";
              }

              [(CPLDiagnoseCommand *)self _abbreviatedPathForURL:v40];
              v48 = v47 = v32;
              v61 = v46;
              v33 = v45;
              v34 = v44;
              v49 = obja;
              [(CPLCTLCommand *)self printFormat:@"%d %@ %@ %@ (from Photos)\n  in %@"], v33, obja, v41, v61, v48);

              v32 = v47;
              v50 = v68;
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                sub_10001EB38();
              }

              v51 = v36;
              v52 = [v51 parameters];
              v53 = [v52 libraryIdentifier];
              v54 = [v53 isEqualToString:v65];

              if (v54)
              {
                v39 = [v51 parameters];
                v50 = [v39 libraryIdentifier];
                [(CPLCTLCommand *)self printFormat:@"%d %@ (from CPL)"], v33, v50);
                goto LABEL_49;
              }

              v39 = [(CPLDiagnoseCommand *)self _libraryURLFromWrapperStatus:v51];
              v50 = [v51 parameters];
              v49 = [v50 libraryIdentifier];
              v55 = [(CPLDiagnoseCommand *)self _abbreviatedPathForURL:v39];
              [(CPLCTLCommand *)self printFormat:@"%d %@ (from CPL)\n  in %@"], v33, v49, v55);
            }

LABEL_49:
          }

          v32 = [v66 countByEnumeratingWithState:&v74 objects:v88 count:16];
        }

        while (v32);
      }

      [(CPLCTLCommand *)self put:@"Pick a library: "];
      if (fgets(v73, 5, __stdinp))
      {
        v56 = atoi(v73);
        v57 = (v56 - 1);
        v58 = v63;
        if (v56 >= 1 && [v66 count] >= v56)
        {
          [(CPLCTLCommand *)self endLine];
          v60 = [v66 objectAtIndexedSubscript:v57];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(CPLDiagnoseCommand *)self _diagnoseLibraryWrapperStatus:v60];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              sub_10001EB90();
            }

            [(CPLDiagnoseCommand *)self _diagnoseLibraryIdentifier:v60];
          }

          v3 = v64;
          v20 = v62;

          v19 = 1;
          goto LABEL_57;
        }

        [(CPLCTLCommand *)self printFormat:@"Invalid choice"];
        v19 = 0;
        v3 = v64;
      }

      else
      {
        v19 = 0;
        v58 = v63;
        v3 = v64;
      }

      v20 = v62;
LABEL_57:

      goto LABEL_58;
    }

    [(CPLCTLCommand *)self printFormat:@"No engines are registered"];
  }

  else
  {
    v18 = [v4 localizedDescription];
    [(CPLCTLCommand *)self printFormat:@"Failed to get the list of registered engines: %@", v18];
  }

  v19 = 0;
  v20 = v5;
LABEL_58:

  return v19;
}

- (BOOL)_wrapperStatusMatchesLibraryFilterRegExp:(id)a3
{
  v4 = [a3 parameters];
  v5 = [v4 libraryIdentifier];
  v6 = -[NSRegularExpression firstMatchInString:options:range:](self->_libraryFilterRegExp, "firstMatchInString:options:range:", v5, 0, 0, [v5 length]);

  if (v6 || ([v4 mainScopeIdentifier], v7 = objc_claimAutoreleasedReturnValue(), -[NSRegularExpression firstMatchInString:options:range:](self->_libraryFilterRegExp, "firstMatchInString:options:range:", v7, 0, 0, objc_msgSend(v7, "length")), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
  {
    v9 = 1;
  }

  else
  {
    v11 = [v4 clientLibraryBaseURL];
    v12 = [v11 path];

    v13 = -[NSRegularExpression firstMatchInString:options:range:](self->_libraryFilterRegExp, "firstMatchInString:options:range:", v12, 0, 0, [v12 length]);

    v9 = v13 != 0;
  }

  return v9;
}

- (BOOL)_libraryIdentifierMatchesLibraryFilterRegExp:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  v6 = -[NSRegularExpression firstMatchInString:options:range:](self->_libraryFilterRegExp, "firstMatchInString:options:range:", v5, 0, 0, [v5 length]);

  if (v6)
  {
    goto LABEL_4;
  }

  v7 = [v4 containerIdentifier];
  v8 = -[NSRegularExpression firstMatchInString:options:range:](self->_libraryFilterRegExp, "firstMatchInString:options:range:", v7, 0, 0, [v7 length]);

  if (v8 || ([v4 uuid], v9 = objc_claimAutoreleasedReturnValue(), -[NSRegularExpression firstMatchInString:options:range:](self->_libraryFilterRegExp, "firstMatchInString:options:range:", v9, 0, 0, objc_msgSend(v9, "length")), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
  {
LABEL_4:
    v11 = 1;
  }

  else
  {
    v13 = [v4 path];
    v14 = -[NSRegularExpression firstMatchInString:options:range:](self->_libraryFilterRegExp, "firstMatchInString:options:range:", v13, 0, 0, [v13 length]);

    v11 = v14 != 0;
  }

  return v11;
}

- (BOOL)_lookForLibrary
{
  if (!self->_libraryFilterRegExp)
  {
    sub_10001EBBC();
  }

  v36 = 0;
  v3 = [(CPLDiagnoseCommand *)self getEngineWrapperStatusesWithError:&v36];
  v4 = v36;
  v5 = v4;
  if (v3)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v33;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v33 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v32 + 1) + 8 * i);
          if ([(CPLDiagnoseCommand *)self _wrapperStatusMatchesLibraryFilterRegExp:v11])
          {
            [(CPLDiagnoseCommand *)self _diagnoseLibraryWrapperStatus:v11];
            v23 = 1;
            goto LABEL_25;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v32 objects:v38 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v31 = v5;
    v6 = [(CPLCTLCommand *)self getLibraryIdentifiersWithDomain:3 error:&v31];
    v12 = v31;

    if (v6)
    {
      v25 = v12;
      v26 = v3;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v13 = v6;
      v14 = [v13 countByEnumeratingWithState:&v27 objects:v37 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v28;
        while (2)
        {
          for (j = 0; j != v15; j = j + 1)
          {
            if (*v28 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v27 + 1) + 8 * j);
            v19 = [v18 path];
            v20 = v19;
            if (v19)
            {
              v21 = [v19 pathExtension];
              v22 = [v21 isEqualToString:@"photoslibrary"];

              if (v22)
              {
                if ([(CPLDiagnoseCommand *)self _libraryIdentifierMatchesLibraryFilterRegExp:v18])
                {
                  [(CPLDiagnoseCommand *)self _diagnoseLibraryIdentifier:v18];

                  v23 = 1;
                  goto LABEL_28;
                }
              }
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v27 objects:v37 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }

      v13 = [(NSRegularExpression *)self->_libraryFilterRegExp pattern];
      [(CPLCTLCommand *)self printFormat:@"Found no libraries matching '%@'", v13];
      v23 = 0;
LABEL_28:
      v12 = v25;
      v3 = v26;
    }

    else
    {
      v13 = [v12 localizedDescription];
      [(CPLCTLCommand *)self printFormat:@"Failed to get the list of active libraries: %@", v13];
      v23 = 0;
    }
  }

  else
  {
    v6 = [v4 localizedDescription];
    [(CPLCTLCommand *)self printFormat:@"Failed to get the list of registered engines: %@", v6];
    v23 = 0;
LABEL_25:
    v12 = v5;
  }

  return v23;
}

- (int)execute
{
  if (self->_skipSysdiagnose || ![Libsysdiagnose isSysdiagnoseInProgressWithError:0])
  {
    v4 = [(CPLCTLCommand *)self defaultLibraryURL];

    if (v4)
    {
      v5 = [(CPLCTLCommand *)self defaultLibraryIdentifier];
      [(CPLCTLCommand *)self printFormat:@"Will diagnose library with CPL identifier %@", v5];

      v6 = [(CPLCTLCommand *)self defaultLibraryURL];
      v7 = [(CPLDiagnoseCommand *)self _abbreviatedPathForURL:v6];
      [(CPLCTLCommand *)self printFormat:@"  path: %@", v7];

      v8 = [(CPLCTLCommand *)self defaultLibraryIdentifier];
      [(CPLDiagnoseCommand *)self _diagnoseWithCPLLibraryIdentifier:v8];
    }

    else
    {
      if (self->_pickInteractively)
      {
        v9 = [(CPLCTLCommand *)self daemonConnection];
        if (![(CPLDiagnoseCommand *)self _chooseLibraryInteractively])
        {
          goto LABEL_35;
        }

        goto LABEL_7;
      }

      if (self->_libraryFilterRegExp)
      {
        v9 = [(CPLCTLCommand *)self daemonConnection];
        if (![(CPLDiagnoseCommand *)self _lookForLibrary])
        {
          goto LABEL_35;
        }

        goto LABEL_7;
      }
    }

    v9 = 0;
LABEL_7:
    if (self->_displayConsent && isatty(1))
    {
      [(CPLDiagnoseCommand *)self displayConsent];
    }

    [(CPLDiagnoseCommand *)self prepareOutputURLs];
    if (self->_isRoot)
    {
      v10 = +[NSDate date];
      v11 = [NSMutableArray arrayWithCapacity:10];
      incompleteTasks = self->incompleteTasks;
      self->incompleteTasks = v11;

      v13 = [(CPLDiagnoseCommand *)self _simplifiedPathForURL:self->_outputFolder];
      [(CPLCTLCommand *)self printFormat:@"Will gather diagnostics in %@", v13];

      if (![(CPLDiagnoseCommand *)self createBaseFolderAndLogFile])
      {
        v3 = 1;
LABEL_64:

        goto LABEL_65;
      }

      if (self->_isAppleInternal)
      {
        v14 = @" internal";
      }

      else
      {
        v14 = &stru_100035A18;
      }

      if (self->_hasFullShellCommands)
      {
        v15 = &stru_100035A18;
      }

      else
      {
        v15 = @" limited";
      }

      v16 = __CPLVersion();
      [(CPLCTLCommand *)self printFormat:@"Starting%@ diagnostic - Installed CPL is %@%@", v14, v15, v16];

      v17 = [CPLDateFormatter stringFromDate:v10];
      v18 = +[NSTimeZone defaultTimeZone];
      v19 = [v18 name];
      [(CPLCTLCommand *)self printFormat:@"Date: %@ (%@)", v17, v19];

      [(CPLDiagnoseCommand *)self startDiagnostic];
      [(CPLCTLCommand *)self printFormat:@"- Waiting for unfinished tasks if necessary"];
      if (!+[CPLTask waitForAllLongTasksToFinish])
      {
        [(CPLCTLCommand *)self printFormat:@"  Some diagnostic tasks did not finish!"];
      }

      [v10 timeIntervalSinceNow];
      [(CPLCTLCommand *)self printFormat:@"(TOTAL elapsed time minus archiving: %.2fs)\n", fabs(v20)];
      if ([(NSMutableArray *)self->incompleteTasks count])
      {
        [(CPLCTLCommand *)self printFormat:@"Incomplete Tasks:\n"];
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v21 = self->incompleteTasks;
        v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v65 objects:v69 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v66;
          do
          {
            for (i = 0; i != v23; i = i + 1)
            {
              if (*v66 != v24)
              {
                objc_enumerationMutation(v21);
              }

              [(CPLCTLCommand *)self printFormat:@"   %@", *(*(&v65 + 1) + 8 * i)];
            }

            v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v65 objects:v69 count:16];
          }

          while (v23);
        }
      }

      [(CPLDiagnoseCommand *)self printDiskCapacity:@"archive"];
      v26 = [(CPLDiagnoseCommand *)self _simplifiedPathForURL:self->_outputFolder];
      v27 = [(CPLDiagnoseCommand *)self _simplifiedPathForURL:self->_outputFile];
      [(CPLCTLCommand *)self printFormat:@"- Archiving %@ to %@", v26, v27];

      +[NSDate timeIntervalSinceReferenceDate];
      v29 = v28;
      if ([objc_opt_class() useAppleArchive])
      {
        v30 = [[PFAppleArchive alloc] initWithArchiveURL:self->_outputFile];
        v64 = 0;
        v31 = [(CPLDiagnoseArchive *)v30 openForWriting:&v64];
        v32 = v64;
        v33 = v32;
        if (v31)
        {
          outputFolder = self->_outputFolder;
          v63 = v32;
          v35 = [(CPLDiagnoseArchive *)v30 encodeContentOfDirectoryAtURL:outputFolder entryPredicate:0 error:&v63];
          v36 = v63;

          if (v35)
          {
            v62 = v36;
            v37 = [(CPLDiagnoseArchive *)v30 close:&v62];
            v33 = v62;

            if (v37)
            {
              +[NSDate timeIntervalSinceReferenceDate];
              [(CPLCTLCommand *)self printFormat:@"  elapsed time: %.2fs", v38 - v29];
LABEL_45:

              [(CPLDiagnoseCommand *)self printDiskCapacity:@"cleanup"];
              v46 = [(CPLDiagnoseCommand *)self _simplifiedPathForURL:self->_outputFolder];
              [(CPLCTLCommand *)self printFormat:@"- Removing %@", v46];

              v47 = +[NSFileManager defaultManager];
              v48 = self->_outputFolder;
              v61 = 0;
              v49 = [v47 removeItemAtURL:v48 error:&v61];
              v30 = v61;

              if (v49)
              {
LABEL_53:

                goto LABEL_54;
              }

              v33 = [(CPLDiagnoseArchive *)v30 localizedDescription];
              [(CPLCTLCommand *)self printFormat:@"  Failed: %@", v33];
LABEL_52:

              goto LABEL_53;
            }

            v50 = @"  Failed to write archive: %@";
          }

          else
          {
            v50 = @"  Failed to write archive: %@";
            v33 = v36;
          }
        }

        else
        {
          v50 = @"  Failed to open archive for writing: %@";
        }

        v51 = [v33 localizedDescription];
        [(CPLCTLCommand *)self printFormat:v50, v51];

        goto LABEL_52;
      }

      +[NSDate timeIntervalSinceReferenceDate];
      v40 = v39;
      v41 = [CPLDiagnoseArchive alloc];
      v42 = [(NSURL *)self->_outputFile path];
      v30 = [(CPLDiagnoseArchive *)v41 initWithPath:v42 shouldCompress:1];

      if (!v30)
      {
        [(CPLCTLCommand *)self printFormat:@"  Failed"];
LABEL_54:
        if (self->_isRoot)
        {
          [(CPLCTLCommand *)self printFormat:@"Changing owner of archive to mobile"];
          v52 = getpwnam("mobile");
          if (v52)
          {
            pw_uid = v52->pw_uid;
            pw_gid = v52->pw_gid;
          }

          else
          {
            pw_gid = 0;
            pw_uid = 0;
          }

          if (chown([(NSURL *)self->_outputFile fileSystemRepresentation], pw_gid, pw_uid))
          {
            v55 = __error();
            [(CPLCTLCommand *)self printFormat:@"  Failed: %s", strerror(*v55)];
          }

          else
          {
            [(CPLCTLCommand *)self printFormat:@"  Succeeded", v60];
          }
        }

        [(CPLDiagnoseCommand *)self printDiskCapacity:@"complete"];
        [(CPLCTLCommand *)self printFormat:@"- mark output file purgeable"];
        [(CPLDiagnoseCommand *)self markPurgeable:self->_outputFile];
        v56 = [(NSURL *)self->_outputFile path];
        [(CPLCTLCommand *)self printFormat:@"\nDiagnostic is available at %@", v56];

        [(CPLCTLCommand *)self printFormat:@"\nEnjoy."];
        [v10 timeIntervalSinceNow];
        [(CPLCTLCommand *)self printFormat:@"(TOTAL elapsed time: %.2fs)", fabs(v57)];
        diagnosticLog = self->_diagnosticLog;
        if (diagnosticLog)
        {
          fclose(diagnosticLog);
          v3 = 0;
          self->_diagnosticLog = 0;
        }

        else
        {
          v3 = 0;
        }

        goto LABEL_64;
      }

      v33 = [(NSURL *)self->_outputFolder path];
      v43 = [v33 lastPathComponent];
      v44 = [v43 substringFromIndex:{objc_msgSend(CPLDiagnosticsInProgressPrefix, "length")}];

      [(CPLDiagnoseArchive *)v30 addDirectoryToArchive:v33 withDirName:v44];
      [(CPLDiagnoseArchive *)v30 closeArchive];
      +[NSDate timeIntervalSinceReferenceDate];
      [(CPLCTLCommand *)self printFormat:@"  elapsed time: %.2fs", v45 - v40];

      goto LABEL_45;
    }

    [(CPLCTLCommand *)self printFormat:@"********************************  WARNING  ************************************"];
    [(CPLCTLCommand *)self printFormat:@"  You need to run this tool as root in order to collect the new-style of logs."];
    [(CPLCTLCommand *)self printFormat:@"                   Please run this tool again as root."];
    [(CPLCTLCommand *)self printFormat:@"*******************************************************************************"];
LABEL_35:
    v3 = 1;
LABEL_65:

    return v3;
  }

  [(CPLCTLCommand *)self printError:@"sysdiagnose is already in progress!"];
  [(CPLCTLCommand *)self printError:@"  run with -s to skip sysdiagnose"];
  return 1;
}

- (void)printFormat:(id)a3 arguments:(char *)a4
{
  v6 = a3;
  v10 = [[NSString alloc] initWithFormat:v6 arguments:a4];

  v7 = v10;
  v8 = [v10 UTF8String];
  diagnosticLog = self->_diagnosticLog;
  if (diagnosticLog)
  {
    fprintf(diagnosticLog, "%s\n", v8);
    fflush(self->_diagnosticLog);
  }

  fprintf(__stdoutp, "%s\n", v8);
  fflush(__stdoutp);
}

- (void)printDiskCapacity:(id)a3
{
  v4 = a3;
  v18[0] = NSURLVolumeAvailableCapacityKey;
  v18[1] = NSURLVolumeAvailableCapacityForImportantUsageKey;
  v5 = [NSArray arrayWithObjects:v18 count:2];
  v6 = [(NSURL *)self->_outputFolder URLByDeletingLastPathComponent];
  v11 = 0;
  v7 = [v6 resourceValuesForKeys:v5 error:&v11];
  v8 = v11;

  if (v7)
  {
    v9 = [v7 objectForKeyedSubscript:NSURLVolumeAvailableCapacityKey];
    v10 = [v7 objectForKeyedSubscript:NSURLVolumeAvailableCapacityForImportantUsageKey];
    [(CPLCTLCommand *)self printFormat:@"- diagnostic volume capacity=%@ importantCapacity=%@ (%@)", v9, v10, v4];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 138543874;
      v13 = v9;
      v14 = 2114;
      v15 = v10;
      v16 = 2114;
      v17 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "PhotosDiagnostic volume capacity=%{public}@ importantCapacity=%{public}@ (%{public}@)", buf, 0x20u);
    }
  }

  else
  {
    [(CPLCTLCommand *)self printError:@"Error finding disk capacity: %@", v8];
  }
}

- (BOOL)createBaseFolderAndLogFile
{
  v3 = +[NSFileManager defaultManager];
  v23[0] = NSFilePosixPermissions;
  v23[1] = NSFileOwnerAccountName;
  v24[0] = &off_10003B5C0;
  v24[1] = @"mobile";
  v4 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
  v5 = [(NSURL *)self->_outputFile URLByDeletingLastPathComponent];
  v22 = 0;
  v6 = [v3 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:v4 error:&v22];
  v7 = v22;
  v8 = v7;
  if (v6)
  {
    outputFolder = self->_outputFolder;
    v21 = v7;
    v10 = [v3 createDirectoryAtURL:outputFolder withIntermediateDirectories:1 attributes:v4 error:&v21];
    v11 = v21;

    v12 = self->_outputFolder;
    if (v10)
    {
      v13 = [(NSURL *)self->_outputFolder URLByAppendingPathComponent:@"diagnostic.log" isDirectory:0];
      v14 = fopen([v13 fileSystemRepresentation], "a+");
      self->_diagnosticLog = v14;
      if (v14)
      {
        [(CPLCTLCommand *)self setLogOutputFd:fileno(v14)];
      }

      else
      {
        v18 = [(CPLDiagnoseCommand *)self _simplifiedPathForURL:v13];
        v19 = __error();
        [(CPLCTLCommand *)self printFormat:@"Can't create diagnostic log at %@: %s", v18, strerror(*v19)];
      }

      v16 = 1;
    }

    else
    {
      v13 = [(CPLDiagnoseCommand *)self _simplifiedPathForURL:self->_outputFolder];
      v17 = [v11 localizedDescription];
      [(CPLCTLCommand *)self printFormat:@"Can't create %@: %@", v13, v17];

      v16 = 0;
    }

    v8 = v11;
  }

  else
  {
    v13 = [(CPLDiagnoseCommand *)self _simplifiedPathForURL:v5];
    v15 = [v8 localizedDescription];
    [(CPLCTLCommand *)self printFormat:@"Can't create %@: %@", v13, v15];

    v16 = 0;
  }

  return v16;
}

+ (BOOL)isAppleInternal
{
  if (qword_100040C18 != -1)
  {
    sub_10001EBE8();
  }

  return byte_100040C10;
}

- (void)displayConsent
{
  [(CPLCTLCommand *)self printFormat:@"%@", CPLDiagnosticsConsentText];
  [(CPLCTLCommand *)self printFormat:@"Press 'Enter' to continue. Ctrl+\\ to cancel."];
  do
  {
    v3 = fgetc(__stdinp);
  }

  while (v3 != 13 && v3 != 10);
}

- (id)getEngineWrapperStatusesWithError:(id *)a3
{
  cachedWrapperStatuses = self->_cachedWrapperStatuses;
  if (cachedWrapperStatuses)
  {
    v4 = cachedWrapperStatuses;
  }

  else
  {
    getWrapperStatusesError = self->_getWrapperStatusesError;
    if (getWrapperStatusesError)
    {
      v4 = 0;
      if (a3)
      {
        *a3 = getWrapperStatusesError;
      }
    }

    else
    {
      v13.receiver = self;
      v13.super_class = CPLDiagnoseCommand;
      v14 = 0;
      v8 = [(CPLCTLCommand *)&v13 getEngineWrapperStatusesWithError:&v14];
      v9 = v14;
      v10 = v14;
      v11 = self->_cachedWrapperStatuses;
      self->_cachedWrapperStatuses = v8;

      v12 = self->_cachedWrapperStatuses;
      if (!v12)
      {
        objc_storeStrong(&self->_getWrapperStatusesError, v9);
        v12 = self->_cachedWrapperStatuses;
      }

      v4 = v12;
    }
  }

  return v4;
}

- (void)prepareOutputURLs
{
  if (self->_outputFile || self->_outputFolder)
  {
    return;
  }

  v3 = 192;
  host = self->host;
  if (gethostname(self->host, 0xFFuLL))
  {
    *&self->host[8] = 7631727;
    *host = *"UnknownHost";
  }

  while (*(&self->super.super.isa + v3) == 47)
  {
    *(&self->super.super.isa + v3) = 95;
LABEL_10:
    ++v3;
  }

  if (*(&self->super.super.isa + v3))
  {
    goto LABEL_10;
  }

  annotation = self->_annotation;
  if (!annotation)
  {
    annotation = &stru_100035A18;
  }

  v6 = "";
  if (self->_isRoot)
  {
    v7 = "-root";
  }

  else
  {
    v7 = "";
  }

  if (!self->_hasFullShellCommands)
  {
    v6 = "-limited";
  }

  v18 = [NSString stringWithFormat:@"%@%@-%s%s%s-T%@", @"CPL-diagnostics", annotation, self->host, v7, v6, self->_timestamp];
  v8 = [v18 stringByAppendingPathExtension:@"cpldiagnostics"];
  v9 = [NSURL fileURLWithPath:@"/var/tmp" isDirectory:1];
  v10 = [CPLDiagnosticsInProgressPrefix stringByAppendingString:v8];
  v11 = [v9 URLByAppendingPathComponent:v10 isDirectory:1];
  outputFolder = self->_outputFolder;
  self->_outputFolder = v11;

  v13 = [NSURL fileURLWithPath:@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs/photos" isDirectory:1];

  v14 = [objc_opt_class() diagnosticExtension];
  v15 = [v8 stringByAppendingPathExtension:v14];

  v16 = [v13 URLByAppendingPathComponent:v15 isDirectory:0];
  outputFile = self->_outputFile;
  self->_outputFile = v16;
}

- (void)setUserMode:(BOOL)a3
{
  if (a3)
  {
    v3 = getpwnam("mobile");
    if (v3)
    {
      pw_uid = v3->pw_uid;
    }

    else
    {
      pw_uid = 501;
    }

    seteuid(pw_uid);
  }
}

- (void)revertToRootMode:(BOOL)a3
{
  if (a3)
  {
    v3 = getuid();

    seteuid(v3);
  }
}

- (void)markPurgeable:(id)a3
{
  v7 = 66053;
  v4 = [a3 path];
  v5 = fsctl([v4 fileSystemRepresentation], 0xC0084A44uLL, &v7, 0);

  if (v5 == -1)
  {
    v6 = __error();
    [(CPLCTLCommand *)self printError:@"  error marking purgeable: %s", strerror(*v6)];
  }
}

- (void)collectFileListingAtPath:(id)a3 label:(id)a4 filename:(id)a5 extendedDetail:(BOOL)a6
{
  v9 = a3;
  v10 = a5;
  if (v9)
  {
    v11 = a4;
    v12 = +[NSDate date];
    [(CPLCTLCommand *)self printFormat:@"- %@", v11];

    diagnosticLog = self->_diagnosticLog;
    if (diagnosticLog)
    {
      isRoot = self->_isRoot;
      v22 = [v9 UTF8String];
      v23 = [v10 UTF8String];
      v15 = 37;
      if (isRoot)
      {
        v15 = 35;
      }

      fprintf(diagnosticLog, "  %c recursive file listing of %s into %s\n", v15, v22, v23);
      fflush(self->_diagnosticLog);
    }

    v16 = [(NSURL *)self->_outputFolder URLByAppendingPathComponent:v10];
    v17 = [v16 path];

    LOBYTE(v16) = CPLDiagnoseRecursiveFileListing();
    v18 = 0;
    v19 = v18;
    if ((v16 & 1) == 0)
    {
      v20 = [v18 description];
      [(CPLCTLCommand *)self printFormat:@"  failed: %@", v20];
    }

    [v12 timeIntervalSinceNow];
    [(CPLCTLCommand *)self printFormat:@"  elapsed time: %.2fs", fabs(v21)];
  }
}

- (void)collectFileAtURL:(id)a3 suffix:(id)a4 destinationDirectory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v11 = +[NSDate date];
    v12 = +[NSFileManager defaultManager];
    v13 = [v8 path];
    v14 = [v12 fileExistsAtPath:v13];

    v15 = [(CPLDiagnoseCommand *)self _simplifiedPathForURL:v8];
    v16 = v15;
    if (v14)
    {
      [(CPLCTLCommand *)self printFormat:@"- Collecting %@", v15];

      v17 = [v8 lastPathComponent];
      v16 = v17;
      if (v9)
      {
        v18 = [v17 stringByAppendingString:v9];

        v16 = v18;
      }

      v19 = [v10 URLByAppendingPathComponent:v16];
      v28 = 0;
      v20 = [v12 copyItemAtURL:v8 toURL:v19 error:&v28];
      v21 = v28;
      v22 = v21;
      if ((v20 & 1) == 0)
      {
        v23 = [v21 localizedDescription];
        [(CPLCTLCommand *)self printFormat:@"  failed: %@", v23];

        incompleteTasks = self->incompleteTasks;
        [NSString stringWithFormat:@"Failed collecting %@.", v8];
        v25 = v24 = v11;
        [(NSMutableArray *)incompleteTasks addObject:v25];

        v11 = v24;
      }

      [v11 timeIntervalSinceNow];
      [(CPLCTLCommand *)self printFormat:@"  elapsed time: %.2fs", fabs(v26)];
    }

    else
    {
      [(CPLCTLCommand *)self printFormat:@"- %@ does not exist", v15];
    }
  }
}

- (void)collectFileAtPath:(id)a3 suffix:(id)a4
{
  if (a3)
  {
    v6 = a4;
    v7 = [NSURL fileURLWithPath:a3];
    [(CPLDiagnoseCommand *)self collectFileAtURL:v7 suffix:v6 destinationDirectory:self->_outputFolder];
  }
}

- (void)collectDiagnosticLog:(id)a3
{
  if (a3)
  {
    v4 = [@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs" stringByAppendingPathComponent:?];
    [(CPLDiagnoseCommand *)self collectFileAtPath:v4];
  }
}

- (void)sampleProcess:(id)a3
{
  v4 = a3;
  v5 = [(CPLDiagnoseCommand *)self processDetailPath:v4];
  v10 = [NSString stringWithFormat:@"%@-sample.txt", v5];

  v6 = [(NSURL *)self->_outputFolder URLByAppendingPathComponent:v10];
  v7 = [v6 path];

  v8 = [NSString stringWithFormat:@"/usr/bin/sample %@ 1 -f %@", v4, v7];
  v9 = [NSString stringWithFormat:@"Sampling %@", v4];

  [(CPLDiagnoseCommand *)self collectOutputOfCommand:v8 label:v9 filename:0];
}

- (id)processes
{
  if (qword_100040C28 != -1)
  {
    sub_10001EBFC();
  }

  v3 = qword_100040C20;

  return v3;
}

- (void)executeMemoryToolsOnProcess:(id)a3
{
  v4 = a3;
  if (!qword_100040C30)
  {
    if (self->_isAppleInternal)
    {
      v5 = &off_10003B790;
    }

    else
    {
      v5 = &off_10003B7A8;
    }

    qword_100040C30 = v5;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = qword_100040C30;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(CPLDiagnoseCommand *)self executeTool:*(*(&v11 + 1) + 8 * i) onProcess:v4, v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)executeTool:(id)a3 onProcess:(id)a4
{
  v19 = a3;
  v6 = a4;
  v7 = [NSString stringWithFormat:@"Getting %@ for %@", v19, v6];
  v8 = [v19 hasPrefix:@"/"];
  v9 = @"/usr/bin/";
  if (v8)
  {
    v9 = &stru_100035A18;
  }

  v10 = v9;
  if ([v19 isEqualToString:@"leaks"])
  {
    v11 = [(NSURL *)self->_outputFolder path];
    v12 = [(CPLDiagnoseCommand *)self processDetailPath:v6];
    v13 = [v11 stringByAppendingPathComponent:v12];
    v14 = [v13 stringByAppendingPathExtension:@"memgraph"];

    v15 = [[NSString alloc] initWithFormat:@" --forkCorpse --physFootprint --outputGraph=%@", v14];
    v16 = 0;
  }

  else
  {
    v14 = [(CPLDiagnoseCommand *)self processDetailPath:v6];
    v17 = [v19 lastPathComponent];
    v16 = [NSString stringWithFormat:@"%@-%@.txt", v14, v17];

    v15 = &stru_100035A18;
  }

  v18 = [NSString stringWithFormat:@"%@%@%@ %@", v10, v19, v15, v6];

  [(CPLDiagnoseCommand *)self collectOutputOfCommand:v18 label:v7 filename:v16];
}

- (void)collectDiagnosticLogs
{
  [(CPLDiagnoseCommand *)self collectFileAtPath:@"/var/mobile/Media/PhotoData/Caches/changes"];
  [(CPLDiagnoseCommand *)self collectFileAtPath:@"/var/mobile/Library/Logs/com.apple.assetsd/PhotosUpgrade.log"];
  [(CPLDiagnoseCommand *)self collectFileAtPath:@"/var/mobile/Library/Logs/com.apple.assetsd/PhotosUpgrade.aapbz"];
  [(CPLDiagnoseCommand *)self collectFileAtPath:@"/var/mobile/Library/Logs/com.apple.assetsd/PhotosUpgrade.aapbz.old"];
  [(CPLDiagnoseCommand *)self collectFileAtPath:@"/var/mobile/Library/Logs/com.apple.assetsd/PhotosSearch.aapbz"];
  [(CPLDiagnoseCommand *)self collectFileAtPath:@"/var/mobile/Library/Logs/com.apple.assetsd/PhotosSearch.aapbz.old"];
  if (self->_isAppleInternal)
  {

    [(CPLDiagnoseCommand *)self _collectSharedAlbumFilesAtPath:@"/var/mobile/Library/MediaStream/albumshare/"];
  }
}

- (void)collectPhotosLibraryUpgradeLogs
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10001265C;
  v2[3] = &unk_100034BD0;
  v2[4] = self;
  [(CPLDiagnoseCommand *)self runAsUser:v2];
}

- (void)_removeResourceDataFromFaceCropChangeCPLSerializedRecords:(sqlite3 *)a3
{
  if (sqlite3_create_function_v2(a3, "filterCPLSerializedRecord", 1, 2053, 0, sub_100012C80, 0, 0, 0))
  {
    [(CPLCTLCommand *)self printFormat:@"error creating filterCPLSerializedRecord function to remove CPL storage: remove all CPLFaceCropChange records"];
    sqlite3_exec(a3, "update clientCache set serializedRecord = '' where class='CPLFaceCropChange'", 0, 0, 0);
    sqlite3_exec(a3, "update cloudCache set serializedRecord = null, stagedSerializedRecord = null where class='CPLFaceCropChange'", 0, 0, 0);
    sqlite3_exec(a3, "update transientPullRepository set serializedRecord = '' where class='CPLFaceCropChange'", 0, 0, 0);

    sqlite3_exec(a3, "update pullQueue set serializedRecord = '' where class='CPLFaceCropChange'", 0, 0, 0);
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    sqlite3_exec(a3, "update clientCache set serializedRecord = filterCPLSerializedRecord(serializedRecord) where class='CPLFaceCropChange'", 0, 0, 0);
    sqlite3_exec(a3, "update pullQueue set serializedRecord = filterCPLSerializedRecord(serializedRecord) where class='CPLFaceCropChange'", 0, 0, 0);
    sqlite3_exec(a3, "update transientPullRepository set serializedRecord = filterCPLSerializedRecord(serializedRecord) where class='CPLFaceCropChange'", 0, 0, 0);
    sqlite3_exec(a3, "update cloudCache set serializedRecord = filterCPLSerializedRecord(serializedRecord), stagedSerializedRecord = filterCPLSerializedRecord(stagedSerializedRecord) where class='CPLFaceCropChange'", 0, 0, 0);

    objc_autoreleasePoolPop(v5);
  }
}

- (void)_removeShareURLFromCPLScopes:(sqlite3 *)a3
{
  if (sqlite3_create_function_v2(a3, "filterScopeChange", 1, 2053, 0, sub_100012FAC, 0, 0, 0))
  {
    [(CPLCTLCommand *)self printFormat:@"error creating filterShareURL function to remove CPL storage: remove shareURL from scopes"];

    sqlite3_exec(a3, "update scopes set scopeChange = null", 0, 0, 0);
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    sqlite3_exec(a3, "update scopes set scopeChange = filterScopeChange(scopeChange)", 0, 0, 0);
    [(CPLCTLCommand *)self printFormat:@"  redacted %d scopes", sqlite3_changes(a3)];

    objc_autoreleasePoolPop(v5);
  }
}

- (void)_removeShareURLFromPhotosMomentShare:(sqlite3 *)a3
{
  if (sqlite3_create_function_v2(a3, "filterMomentShareURL", 1, 2053, 0, sub_100013388, 0, 0, 0))
  {
    [(CPLCTLCommand *)self printFormat:@"error creating filterMomentShare function to remove Photos storage: remove shareURL from MomentShare"];

    sqlite3_exec(a3, "update ZSHARE set ZSHAREURL = null, ZPREVIEWDATA = null, ZTHUMBNAILIMAGEDATA = null, ZCKSHAREDATA = null", 0, 0, 0);
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    sqlite3_exec(a3, "update ZSHARE set ZSHAREURL = filterMomentShareURL(ZSHAREURL), ZPREVIEWDATA = null, ZTHUMBNAILIMAGEDATA = null, ZCKSHAREDATA = null", 0, 0, 0);
    [(CPLCTLCommand *)self printFormat:@"  redacted %d moment shares", sqlite3_changes(a3)];

    objc_autoreleasePoolPop(v5);
  }
}

- (id)_readAppPrivateData
{
  v2 = [(NSString *)self->_libraryPath stringByAppendingPathComponent:@"private/com.apple.assetsd"];
  v3 = [v2 stringByAppendingPathComponent:@"appPrivateData.plist"];
  v4 = [NSURL fileURLWithPath:v3];
  v5 = [NSDictionary dictionaryWithContentsOfURL:v4];

  return v5;
}

- (void)copyDatabaseFromPath:(id)a3 toPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 lastPathComponent];
  v9 = [(NSArray *)self->_databasesWithPIIData containsObject:v8];
  v10 = [v6 pathExtension];
  v11 = [&off_10003B7C0 containsObject:v10];

  if (v11)
  {
    v22 = 0;
    ppDb = 0;
    if (!sqlite3_open_v2([v6 UTF8String], &ppDb, 1, 0))
    {
      goto LABEL_13;
    }

    if (ppDb)
    {
      sqlite3_close(ppDb);
    }

    v12 = [NSURL fileURLWithPath:v6];
    v13 = [v12 absoluteString];
    v14 = [v13 stringByAppendingString:@"?readonly_shm=1"];
    v15 = sqlite3_open_v2([v14 UTF8String], &ppDb, 1, 0);

    if (!v15)
    {
      goto LABEL_13;
    }

    if (ppDb)
    {
      sqlite3_close(ppDb);
    }

    [(CPLCTLCommand *)self printFormat:@"couldn't open source database readonly, trying read/write mode"];
    v16 = sqlite3_open_v2([v6 UTF8String], &ppDb, 2, 0);
    if (v16)
    {
      v17 = v16;
      if (ppDb)
      {
        sqlite3_close(ppDb);
      }

      [(CPLCTLCommand *)self printFormat:@"Failed to open src db %@: sqlite error %d\n", v6, v17];
    }

    else
    {
LABEL_13:
      v19 = sqlite3_open_v2([v7 UTF8String], &v22, 6, 0);
      if (v19)
      {
        v20 = v19;
        if (ppDb)
        {
          sqlite3_close(ppDb);
        }

        if (v22)
        {
          sqlite3_close(v22);
        }

        [(CPLCTLCommand *)self printFormat:@"Failed to open dst db %@: sqlite error %d\n", v7, v20];
      }

      else
      {
        v21 = sqlite3_file_control(v22, 0, 102, ppDb);
        if (v21)
        {
          [(CPLCTLCommand *)self printFormat:@"Failed to replace %@ with %@: sqlite error %d\n", v7, v6, v21];
        }

        else
        {
          if (v9)
          {
            sqlite3_exec(v22, "pragma secure_delete=fast", 0, 0, 0);
            [(CPLCTLCommand *)self printFormat:@"  remove PII image data and obfuscate share URLs from %@", v7];
            if ([v8 hasPrefix:@"Photos.sqlite"])
            {
              [(CPLCTLCommand *)self printFormat:@"  removing ZFACECROP ZRESOURCEDATA and share URL scopes"];
              sqlite3_exec(v22, "update ZFACECROP set ZRESOURCEDATA = null", 0, 0, 0);
              [(CPLDiagnoseCommand *)self _removeShareURLFromPhotosMomentShare:v22];
              if (!self->_doNotStripOCR)
              {
                [(CPLCTLCommand *)self printFormat:@"  removing OCR data"];
                sqlite3_exec(v22, "update ZCHARACTERRECOGNITIONATTRIBUTES set ZCHARACTERRECOGNITIONDATA = null", 0, 0, 0);
                sqlite3_exec(v22, "update ZCHARACTERRECOGNITIONATTRIBUTES set ZMACHINEREADABLECODEDATA = null", 0, 0, 0);
                sqlite3_exec(v22, "update ZVISUALSEARCHATTRIBUTES set ZVISUALSEARCHDATA = null", 0, 0, 0);
              }
            }

            if ([v8 isEqualToString:@"photo.db"])
            {
              [(CPLCTLCommand *)self printFormat:@"  removing RKFaceCrop"];
              sqlite3_exec(v22, "update RKFaceCrop set resourceData = null", 0, 0, 0);
            }

            if ([v8 isEqualToString:@"Faces.db"])
            {
              [(CPLCTLCommand *)self printFormat:@"  removing RKDetectedFaceBlob"];
              sqlite3_exec(v22, "drop table RKDetectedFaceBlob", 0, 0, 0);
            }

            if ([v8 isEqualToString:@"store.cloudphotodb"])
            {
              [(CPLCTLCommand *)self printFormat:@"  removing resource data from serialized CPL records"];
              [(CPLDiagnoseCommand *)self _removeResourceDataFromFaceCropChangeCPLSerializedRecords:v22];
              [(CPLDiagnoseCommand *)self _removeShareURLFromCPLScopes:v22];
            }

            if ([v8 isEqualToString:@"mediaanalysis.db"])
            {
              [(CPLCTLCommand *)self printFormat:@"  removing embedding data from %@", @"mediaanalysis.db"];
              sqlite3_exec(v22, "UPDATE Results SET results=null WHERE resultsType=73", 0, 0, 0);
              sqlite3_exec(v22, "UPDATE Results SET results=null WHERE resultsType=74", 0, 0, 0);
              sqlite3_exec(v22, "UPDATE Results SET results=null WHERE resultsType=78", 0, 0, 0);
              sqlite3_exec(v22, "UPDATE Results SET results=null WHERE resultsType=79", 0, 0, 0);
              sqlite3_exec(v22, "UPDATE Results SET results=null WHERE resultsType=82", 0, 0, 0);
              sqlite3_exec(v22, "UPDATE Results SET results=null WHERE resultsType=28", 0, 0, 0);
              sqlite3_exec(v22, "UPDATE Results SET results=null WHERE resultsType=46", 0, 0, 0);
            }

            if ([v8 isEqualToString:@"MediaAnalysis.sqlite"])
            {
              [(CPLCTLCommand *)self printFormat:@"  removing embedding data from %@", @"MediaAnalysis.sqlite"];
              sqlite3_exec(v22, "UPDATE ZRESULT SET ZRESULTS=null WHERE ZRESULTSTYPE=73", 0, 0, 0);
              sqlite3_exec(v22, "UPDATE ZRESULT SET ZRESULTS=null WHERE ZRESULTSTYPE=74", 0, 0, 0);
              sqlite3_exec(v22, "UPDATE ZRESULT SET ZRESULTS=null WHERE ZRESULTSTYPE=78", 0, 0, 0);
              sqlite3_exec(v22, "UPDATE ZRESULT SET ZRESULTS=null WHERE ZRESULTSTYPE=79", 0, 0, 0);
              sqlite3_exec(v22, "UPDATE ZRESULT SET ZRESULTS=null WHERE ZRESULTSTYPE=82", 0, 0, 0);
              sqlite3_exec(v22, "UPDATE ZRESULT SET ZRESULTS=null WHERE ZRESULTSTYPE=28", 0, 0, 0);
              sqlite3_exec(v22, "UPDATE ZRESULT SET ZRESULTS=null WHERE ZRESULTSTYPE=46", 0, 0, 0);
            }

            sqlite3_exec(v22, "pragma incremental_vacuum", 0, 0, 0);
          }

          sqlite3_exec(v22, "pragma journal_mode=delete", 0, 0, 0);
        }

        if (ppDb)
        {
          sqlite3_close(ppDb);
        }

        if (v22)
        {
          sqlite3_close(v22);
        }
      }
    }
  }

  else
  {
    v18 = +[NSFileManager defaultManager];
    [v18 copyItemAtPath:v6 toPath:v7 error:0];
  }
}

- (void)collectDatabaseAtPath:(id)a3 libraryPath:(id)a4 subdirectory:(id)a5
{
  v33 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[NSFileManager defaultManager];
  if (![v10 fileExistsAtPath:v33])
  {
    [(CPLCTLCommand *)self printFormat:@"- %@ does not exist", v33];
    goto LABEL_21;
  }

  if (!self->_skipDBCopy)
  {
    v13 = [v10 attributesOfItemAtPath:v33 error:0];
    v14 = [v13 fileSize];

    v12 = [NSByteCountFormatter stringFromByteCount:v14 countStyle:0];
    if (v14 >= 0x4B000001 && self->_skipBigDBCopy)
    {
      v15 = [NSByteCountFormatter stringFromByteCount:1258291200 countStyle:0];
      [(CPLCTLCommand *)self printFormat:@"- Skipping: The size of the database at %@ is bigger than the maximum allowed in this mode (%@): (%@) ", v33, v15, v12];

      incompleteTasks = self->incompleteTasks;
      v17 = [NSString stringWithFormat:@"Skipped collecting %@.", v33];
      [(NSMutableArray *)incompleteTasks addObject:v17];
LABEL_19:

      goto LABEL_20;
    }

    v17 = +[NSDate date];
    [(CPLCTLCommand *)self printFormat:@"- Collecting database (%@) %@", v12, v33];
    v18 = [(CPLDiagnoseCommand *)self mediaAnalysisSystemDatabasePath];
    v19 = [v33 isEqualToString:v18];

    if (v19)
    {
      v20 = [(NSURL *)self->_outputFolder URLByAppendingPathComponent:@"MediaAnalysisSystem.sqlite"];
      v21 = [v20 path];
    }

    else
    {
      v22 = [v8 pathExtension];
      v23 = [(CPLDiagnoseCommand *)self _isUBFExtension:v22];

      if (v23)
      {
        if (!v8)
        {
          goto LABEL_18;
        }

        v20 = [v8 stringByDeletingLastPathComponent];
        v24 = [v33 stringByReplacingOccurrencesOfString:v20 withString:&stru_100035A18 options:8 range:{0, objc_msgSend(v33, "length")}];
        if (v9)
        {
          v25 = [v9 stringByAppendingPathComponent:v24];

          v24 = v25;
        }

        v32 = v24;
        v26 = [(NSURL *)self->_outputFolder URLByAppendingPathComponent:v24];
        v21 = [v26 path];

        v27 = [v21 stringByDeletingLastPathComponent];
        v28 = +[NSFileManager defaultManager];
        [v28 createDirectoryAtPath:v27 withIntermediateDirectories:1 attributes:0 error:0];
      }

      else
      {
        v20 = [NSURL fileURLWithPath:v33];
        v29 = [v20 lastPathComponent];
        v30 = [(NSURL *)self->_outputFolder URLByAppendingPathComponent:v29];
        v21 = [v30 path];
      }
    }

    if (v21)
    {
      [(CPLDiagnoseCommand *)self copyDatabaseFromPath:v33 toPath:v21];
      [v17 timeIntervalSinceNow];
      [(CPLCTLCommand *)self printFormat:@"  elapsed time: %.2fs", fabs(v31)];

      goto LABEL_19;
    }

LABEL_18:
    [(CPLCTLCommand *)self printError:@"Unexpected nil destinationPath. libraryPath: %@, filepath: %@", v8, v33];
    goto LABEL_19;
  }

  v11 = self->incompleteTasks;
  v12 = [NSString stringWithFormat:@"Skipped collecting %@.", v33];
  [(NSMutableArray *)v11 addObject:v12];
LABEL_20:

LABEL_21:
}

- (id)interestingDatabasesForUBFLibraryPath:(id)a3 isSharingLibrary:(BOOL)a4
{
  v5 = a3;
  v6 = objc_alloc_init(NSMutableArray);
  v7 = [v5 stringByAppendingPathComponent:@"Database"];
  v8 = [v7 stringByAppendingPathComponent:@"apdb"];
  v66 = 0;
  v9 = +[NSFileManager defaultManager];
  v10 = [v9 fileExistsAtPath:v8 isDirectory:&v66];
  v11 = v66;

  if (v10)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  v54 = a4;
  if (v12)
  {
    v13 = [v5 stringByAppendingPathComponent:@"database"];

    v8 = v13;
    v7 = v8;
  }

  v53 = [v5 stringByAppendingPathComponent:@"resources/moments"];
  v71[0] = v53;
  v52 = [v5 stringByAppendingPathComponent:@"private/com.apple.Photos.Migration/appPrivateData.plist"];
  v71[1] = v52;
  v51 = [v5 stringByAppendingPathComponent:@"private/com.apple.photolibraryd"];
  v71[2] = v51;
  v50 = [v5 stringByAppendingPathComponent:@"private/com.apple.assetsd"];
  v71[3] = v50;
  v49 = [v5 stringByAppendingPathComponent:@"private/com.apple.accountsd"];
  v71[4] = v49;
  v48 = [v5 stringByAppendingPathComponent:@"private/com.apple.mediaanalysisd/MediaAnalysis/mediaanalysis.db"];
  v71[5] = v48;
  v47 = [v5 stringByAppendingPathComponent:@"private/com.apple.mediaanalysisd/MediaAnalysis/MediaAnalysis.sqlite"];
  v71[6] = v47;
  v14 = [v5 stringByAppendingPathComponent:@"private/com.apple.mediaanalysisd/caches/vision/VUIndex.sqlite"];
  v71[7] = v14;
  v15 = [v5 stringByAppendingPathComponent:@"private/com.apple.mediaanalysisd/caches/vision/PersonPromoter"];
  v71[8] = v15;
  v16 = [v8 stringByAppendingPathComponent:@"search/spotlightProgress.plist"];
  v71[9] = v16;
  v57 = v8;
  v17 = [v8 stringByAppendingPathComponent:@"search/initialSuggestions.bplist"];
  v71[10] = v17;
  v18 = [v5 stringByAppendingPathComponent:@"private/com.apple.mediaanalysisd/MediaAnalysis/.migration/migration_status.plist"];
  v71[11] = v18;
  v19 = [v5 stringByAppendingPathComponent:@"private/com.apple.mediaanalysisd/MediaAnalysis/.restore/restore_status.plist"];
  v71[12] = v19;
  v20 = [NSArray arrayWithObjects:v71 count:13];
  [v6 addObjectsFromArray:v20];

  if (!v54)
  {
    v70[0] = @"resources/cpl/cloudsync.noindex/storage/store.cloudphotodb";
    v55 = [@"resources/cpl/cloudsync.noindex/" stringByAppendingPathComponent:@"mobileCPL.plist"];
    v70[1] = v55;
    v21 = [@"resources/cpl/cloudsync.noindex/" stringByAppendingPathComponent:@"initialsync_marker"];
    v70[2] = v21;
    v22 = [@"resources/cpl/cloudsync.noindex/storage/" stringByAppendingPathComponent:@"cpl-upgrade-events.log"];
    v70[3] = v22;
    v23 = [@"resources/cpl/cloudsync.noindex/" stringByAppendingPathComponent:@"cloudphotos-1.0.plist"];
    v70[4] = v23;
    v24 = [@"resources/cpl/cloudsync.noindex/" stringByAppendingPathComponent:@"syncstatus.plist"];
    v70[5] = v24;
    v25 = [@"resources/cpl/cloudsync.noindex/" stringByAppendingPathComponent:@"resetevents.plist"];
    v70[6] = v25;
    v26 = [@"resources/cpl/cloudsync.noindex/" stringByAppendingPathComponent:@"DownloadCounts.plist"];
    v70[7] = v26;
    v70[8] = @"resources/cpl/cloudsync.noindex/State.plist";
    v27 = [NSArray arrayWithObjects:v70 count:9];

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v28 = v27;
    v29 = [v28 countByEnumeratingWithState:&v62 objects:v69 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v63;
      do
      {
        for (i = 0; i != v30; i = i + 1)
        {
          if (*v63 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = [v5 stringByAppendingPathComponent:*(*(&v62 + 1) + 8 * i)];
          [v6 addObject:v33];
        }

        v30 = [v28 countByEnumeratingWithState:&v62 objects:v69 count:16];
      }

      while (v30);
    }

    v34 = [v5 stringByAppendingPathComponent:@"resources/derivatives/thumbs/thumbnailConfiguration"];
    v68[0] = v34;
    v35 = [v5 stringByAppendingPathComponent:@"private/com.apple.photoanalysisd/vision"];
    v68[1] = v35;
    v36 = [v5 stringByAppendingPathComponent:@"private/com.apple.photoanalysisd/GraphService/PhotoAnalysisServicePreferences.plist"];
    v68[2] = v36;
    v37 = [v5 stringByAppendingPathComponent:@"database/rebuildHistory"];
    v68[3] = v37;
    v38 = [NSArray arrayWithObjects:v68 count:4];
    [v6 addObjectsFromArray:v38];
  }

  if (self->_copyPlists)
  {
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v39 = [&off_10003B7D8 countByEnumeratingWithState:&v58 objects:v67 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v59;
      do
      {
        for (j = 0; j != v40; j = j + 1)
        {
          if (*v59 != v41)
          {
            objc_enumerationMutation(&off_10003B7D8);
          }

          v43 = [v7 stringByAppendingPathComponent:*(*(&v58 + 1) + 8 * j)];
          [v6 addObject:v43];
        }

        v40 = [&off_10003B7D8 countByEnumeratingWithState:&v58 objects:v67 count:16];
      }

      while (v40);
    }
  }

  if (self->_copyRecoverJournals)
  {
    v44 = [v5 stringByAppendingPathComponent:@"resources/recovery"];
    [v6 addObject:v44];

    v45 = [v5 stringByAppendingPathComponent:@"resources/journals"];
    [v6 addObject:v45];
  }

  return v6;
}

- (id)prependPath:(id)a3 toStringsInArray:(id)a4
{
  v5 = a3;
  v6 = a4;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100014760;
  v12[3] = &unk_1000350D0;
  v7 = objc_alloc_init(NSMutableArray);
  v13 = v7;
  v14 = v5;
  v8 = v5;
  [v6 enumerateObjectsUsingBlock:v12];

  v9 = v14;
  v10 = v7;

  return v7;
}

- (void)collectFiles
{
  v3 = +[NSArray array];
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [(CPLDiagnoseCommand *)self includeSyndication];
  v6 = &__NSArray0__struct;
  if (v5)
  {
    v6 = &off_10003B7F0;
  }

  context = v6;
  v7 = [(CPLDiagnoseCommand *)self userLibraryDir];
  v89 = [&off_10003B808 arrayByAddingObjectsFromArray:&off_10003B820];
  v8 = [&off_10003B808 arrayByAddingObjectsFromArray:&off_10003B838];
  databasesWithPIIData = self->_databasesWithPIIData;
  self->_databasesWithPIIData = &off_10003B868;

  v88 = v7;
  v85 = v8;
  if ([(CPLDiagnoseCommand *)self includeSPL])
  {
    v10 = [(CPLDiagnoseCommand *)self prependPath:@"/var/mobile/Media/PhotoData" toStringsInArray:v8];
    v94 = [v3 arrayByAddingObjectsFromArray:v10];

    v11 = [@"/var/mobile/Media/PhotoData/CPL/" stringByAppendingPathComponent:@"mobileCPL.plist"];
    v138[0] = v11;
    v12 = [@"/var/mobile/Media/PhotoData/CPL/" stringByAppendingPathComponent:@"initialsync_marker"];
    v138[1] = v12;
    v13 = [@"/var/mobile/Media/PhotoData/CPL/storage/" stringByAppendingPathComponent:@"cpl-upgrade-events.log"];
    v138[2] = v13;
    v14 = [@"/var/mobile/Media/PhotoData/CPL/" stringByAppendingPathComponent:@"cloudphotos-1.0.plist"];
    v138[3] = v14;
    [@"/var/mobile/Media/PhotoData/CPL/" stringByAppendingPathComponent:@"syncstatus.plist"];
    v16 = v15 = v4;
    v138[4] = v16;
    v17 = [@"/var/mobile/Media/PhotoData/CPL/" stringByAppendingPathComponent:@"resetevents.plist"];
    v138[5] = v17;
    v18 = [@"/var/mobile/Media/PhotoData/CPL/" stringByAppendingPathComponent:@"DownloadCounts.plist"];
    v138[6] = v18;
    v138[7] = @"/var/mobile/Media/PhotoData/Thumbnails/thumbnailConfiguration";
    v138[8] = @"/var/mobile/Media/PhotoData/AlbumsMetadata";
    v138[9] = @"/var/mobile/Media/PhotoData/rebuildHistory";
    v138[10] = @"/var/mobile/Media/PhotoData/Caches/restoreContext.plist";
    v138[11] = @"/var/mobile/Media/PhotoData/Caches/datamigratorfinished";
    v138[12] = @"/var/mobile/Media/PhotoData/Caches/PLDataMigrationInfo.plist";
    v138[13] = @"/var/mobile/Media/PhotoData/Caches/GraphService/PhotoAnalysisServicePreferences.plist";
    v138[14] = @"/var/mobile/Media/PhotoData/Caches/GraphService/PhotoAnalysisMusicPreferences.plist";
    v138[15] = @"/var/mobile/Media/PhotoData/Caches/SmartSharing/camera_smart_sharing_metadata.plist";
    v138[16] = @"/var/mobile/Media/PhotoData/Caches/search/spotlightProgress.plist";
    v138[17] = @"/var/mobile/Media/PhotoData/Caches/search/initialSuggestions.bplist";
    v138[18] = @"/var/mobile/Media/PhotoData/Caches/Restore";
    v138[19] = @"/var/mobile/Media/PhotoData/private/com.apple.assetsd";
    v138[20] = @"/var/mobile/Media/PhotoData/private/com.apple.accountsd";
    v138[21] = @"/var/mobile/Media/PhotoData/Caches/GraphService/PromptSuggestions.plist";
    v138[22] = @"/var/mobile/Media/PhotoData/Caches/GraphService/PromptSuggestionsAnalytics.plist";
    v19 = [NSArray arrayWithObjects:v138 count:23];

    v4 = v15;
    v7 = v88;

    v20 = [@"/var/mobile/Media/PhotoData" stringByAppendingPathComponent:@"Caches/GraphService"];
    v21 = [(CPLDiagnoseCommand *)self prependPath:v20 toStringsInArray:&off_10003B850];
    v22 = [v94 arrayByAddingObjectsFromArray:v21];

    v23 = [v22 arrayByAddingObject:@"/var/mobile/Media/MediaAnalysis/mediaanalysis.db"];

    v3 = [v23 arrayByAddingObject:@"/var/mobile/Media/MediaAnalysis/MediaAnalysis.sqlite"];

    [(CPLDiagnoseCommand *)self addFilesFromVisionCacheToDictionary:v4];
    [v4 setObject:&off_10003B880 forKeyedSubscript:@"MediaAnalysis"];
  }

  else
  {
    v19 = 0;
  }

  v24 = [(CPLDiagnoseCommand *)self mediaAnalysisSystemDatabasePath];
  v25 = [v3 arrayByAddingObject:v24];

  libraryPath = self->_libraryPath;
  if (!libraryPath || self->_targetLibraryIsSPL || self->_targetLibraryIsSyndication)
  {
    v86 = 0;
  }

  else
  {
    v77 = [(NSString *)libraryPath stringByAppendingPathComponent:@"database"];
    v78 = [(CPLDiagnoseCommand *)self prependPath:v77 toStringsInArray:v89];
    v79 = [(CPLDiagnoseCommand *)self interestingDatabasesForUBFLibraryPath:self->_libraryPath isSharingLibrary:0];
    [v78 arrayByAddingObjectsFromArray:v79];
    v81 = v80 = v4;

    v82 = [(NSString *)self->_libraryPath stringByAppendingPathComponent:@"private/com.apple.photoanalysisd/caches/graph"];
    v83 = [(CPLDiagnoseCommand *)self prependPath:v82 toStringsInArray:&off_10003B850];
    v86 = [v81 arrayByAddingObjectsFromArray:v83];

    v4 = v80;
  }

  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  obj = v19;
  v27 = [obj countByEnumeratingWithState:&v126 objects:v137 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v127;
    do
    {
      for (i = 0; i != v28; i = i + 1)
      {
        if (*v127 != v29)
        {
          objc_enumerationMutation(obj);
        }

        [(CPLDiagnoseCommand *)self collectFileAtPath:*(*(&v126 + 1) + 8 * i)];
      }

      v28 = [obj countByEnumeratingWithState:&v126 objects:v137 count:16];
    }

    while (v28);
  }

  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v95 = v4;
  v31 = [v95 countByEnumeratingWithState:&v122 objects:v136 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v123;
    do
    {
      for (j = 0; j != v32; j = j + 1)
      {
        if (*v123 != v33)
        {
          objc_enumerationMutation(v95);
        }

        v35 = *(*(&v122 + 1) + 8 * j);
        v36 = [v95 objectForKeyedSubscript:v35];
        [(CPLDiagnoseCommand *)self collectFilePaths:v36 toSubdirectory:v35];
      }

      v32 = [v95 countByEnumeratingWithState:&v122 objects:v136 count:16];
    }

    while (v32);
  }

  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v37 = v25;
  v38 = [v37 countByEnumeratingWithState:&v118 objects:v135 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v119;
    do
    {
      for (k = 0; k != v39; k = k + 1)
      {
        if (*v119 != v40)
        {
          objc_enumerationMutation(v37);
        }

        [(CPLDiagnoseCommand *)self collectDatabaseAtPath:*(*(&v118 + 1) + 8 * k) libraryPath:0 subdirectory:0];
      }

      v39 = [v37 countByEnumeratingWithState:&v118 objects:v135 count:16];
    }

    while (v39);
  }

  v84 = v37;

  if (v86)
  {
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v42 = v86;
    v43 = [v42 countByEnumeratingWithState:&v114 objects:v134 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v115;
      do
      {
        for (m = 0; m != v44; m = m + 1)
        {
          if (*v115 != v45)
          {
            objc_enumerationMutation(v42);
          }

          [(CPLDiagnoseCommand *)self collectDatabaseAtPath:*(*(&v114 + 1) + 8 * m) libraryPath:self->_libraryPath subdirectory:@"Library"];
        }

        v44 = [v42 countByEnumeratingWithState:&v114 objects:v134 count:16];
      }

      while (v44);
    }

    [(CPLDiagnoseCommand *)self collectAdditionalInformationForDatabaseAtPath:self->_libraryPath toDirectory:@"Library"];
  }

  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v91 = context;
  v47 = [v91 countByEnumeratingWithState:&v110 objects:v133 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = &CPLAppBundleIdentifierForContainerIdentifier_ptr;
    v50 = *v111;
    v87 = *v111;
    do
    {
      v51 = 0;
      v90 = v48;
      do
      {
        if (*v111 != v50)
        {
          objc_enumerationMutation(v91);
        }

        v52 = *(*(&v110 + 1) + 8 * v51);
        contexta = objc_autoreleasePoolPush();
        v53 = [v7 stringByAppendingPathComponent:v52];
        v54 = [v49[274] defaultManager];
        v55 = [v54 fileExistsAtPath:v53];

        if (v55)
        {
          v56 = [v53 lastPathComponent];
          v57 = [v56 stringByDeletingPathExtension];
          v58 = [v57 stringByAppendingString:@"Library"];

          v59 = [v53 stringByAppendingPathComponent:@"database"];
          v106 = 0u;
          v107 = 0u;
          v108 = 0u;
          v109 = 0u;
          v93 = v59;
          v60 = [CPLDiagnoseCommand prependPath:"prependPath:toStringsInArray:" toStringsInArray:?];
          v61 = [v60 countByEnumeratingWithState:&v106 objects:v132 count:16];
          if (v61)
          {
            v62 = v61;
            v63 = *v107;
            do
            {
              for (n = 0; n != v62; n = n + 1)
              {
                if (*v107 != v63)
                {
                  objc_enumerationMutation(v60);
                }

                [(CPLDiagnoseCommand *)self collectDatabaseAtPath:*(*(&v106 + 1) + 8 * n) libraryPath:v53 subdirectory:v58];
              }

              v62 = [v60 countByEnumeratingWithState:&v106 objects:v132 count:16];
            }

            while (v62);
          }

          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
          v65 = [(CPLDiagnoseCommand *)self interestingDatabasesForUBFLibraryPath:v53 isSharingLibrary:0];
          v66 = [v65 countByEnumeratingWithState:&v102 objects:v131 count:16];
          if (v66)
          {
            v67 = v66;
            v68 = *v103;
            do
            {
              for (ii = 0; ii != v67; ii = ii + 1)
              {
                if (*v103 != v68)
                {
                  objc_enumerationMutation(v65);
                }

                [(CPLDiagnoseCommand *)self collectDatabaseAtPath:*(*(&v102 + 1) + 8 * ii) libraryPath:v53 subdirectory:v58];
              }

              v67 = [v65 countByEnumeratingWithState:&v102 objects:v131 count:16];
            }

            while (v67);
          }

          v70 = [v53 stringByAppendingPathComponent:@"private/com.apple.photoanalysisd/caches/graph"];
          v98 = 0u;
          v99 = 0u;
          v100 = 0u;
          v101 = 0u;
          v71 = [(CPLDiagnoseCommand *)self prependPath:v70 toStringsInArray:&off_10003B850];
          v72 = [v71 countByEnumeratingWithState:&v98 objects:v130 count:16];
          if (v72)
          {
            v73 = v72;
            v74 = *v99;
            do
            {
              for (jj = 0; jj != v73; jj = jj + 1)
              {
                if (*v99 != v74)
                {
                  objc_enumerationMutation(v71);
                }

                [(CPLDiagnoseCommand *)self collectDatabaseAtPath:*(*(&v98 + 1) + 8 * jj) libraryPath:v53 subdirectory:v58];
              }

              v73 = [v71 countByEnumeratingWithState:&v98 objects:v130 count:16];
            }

            while (v73);
          }

          if (([v52 isEqualToString:@"Photos/Libraries/Syndication.photoslibrary"] & 1) == 0)
          {
            v76 = [v93 stringByAppendingPathComponent:@"rebuildHistory"];
            [(CPLDiagnoseCommand *)self collectFileAtPath:v76];
          }

          [(CPLDiagnoseCommand *)self collectAdditionalInformationForDatabaseAtPath:v53 toDirectory:v58];

          v50 = v87;
          v7 = v88;
          v49 = &CPLAppBundleIdentifierForContainerIdentifier_ptr;
          v48 = v90;
        }

        else
        {
          [(CPLCTLCommand *)self printFormat:@"- Well known library does not exist at: %@", v53];
        }

        objc_autoreleasePoolPop(contexta);
        v51 = v51 + 1;
      }

      while (v51 != v48);
      v48 = [v91 countByEnumeratingWithState:&v110 objects:v133 count:16];
    }

    while (v48);
  }
}

- (void)collectAdditionalInformationForDatabaseAtPath:(id)a3 toDirectory:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [NSString stringWithFormat:@"Getting %@ listing", v7];
  v9 = [v7 stringByAppendingPathComponent:@"listing.txt"];
  [(CPLDiagnoseCommand *)self collectFileListingAtPath:v6 label:v8 filename:v9 extendedDetail:1];

  if (__PAIR64__(self->_isAppleInternal, self->_hasFullShellCommands) == 0x100000001 && !self->_skipLibraryPreprocessing)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000154CC;
    v10[3] = &unk_1000350F8;
    v10[4] = self;
    v11 = v6;
    v12 = v7;
    [(CPLDiagnoseCommand *)self runAsUser:v10];
  }
}

- (void)collectLOFetchRecordings
{
  [(CPLCTLCommand *)self printFormat:@"Identifying fetch recordings..."];
  v20[0] = self->_photosctlCommand;
  v20[1] = @"lofr";
  v20[2] = @"list";
  v20[3] = @"-j";
  v3 = [NSArray arrayWithObjects:v20 count:4];
  v4 = [(CPLDiagnoseCommand *)self collectOutputOfCommandAndArguments:v3 label:@"Finding fetch recordings" filename:@"fetch_recording_paths.json" outputIsStderr:0 timeout:1];

  if (v4)
  {
    v5 = [(NSURL *)self->_outputFolder URLByAppendingPathComponent:@"fetch_recording_paths.json"];
    v6 = [NSData dataWithContentsOfURL:v5];
    if ([v6 length])
    {
      v7 = [NSJSONSerialization JSONObjectWithData:v6 options:0 error:0];
      if ([v7 count])
      {
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        v14 = v7;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v16;
          do
          {
            v12 = 0;
            do
            {
              if (*v16 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = [*(*(&v15 + 1) + 8 * v12) objectForKeyedSubscript:@"filePath"];
              [(CPLCTLCommand *)self printFormat:@"- ... Found recording at: %@", v13];
              if ([v13 length])
              {
                [(CPLDiagnoseCommand *)self collectFileAtPath:v13];
              }

              v12 = v12 + 1;
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
          }

          while (v10);
        }

        v7 = v14;
      }
    }

    else
    {
      [(CPLCTLCommand *)self printFormat:@"- ... No data in path listing file."];
    }
  }
}

- (void)collectSearchDiagnostics
{
  [(CPLCTLCommand *)self printFormat:@"Collecting Search Diagnostics..."];
  [(CPLDiagnoseCommand *)self _collectPhotosSearchDiagnostics];
  [(CPLDiagnoseCommand *)self _collectUniversalSearchDiagnostics];

  [(CPLDiagnoseCommand *)self _collectSearchEntityDonationDiagnostics];
}

- (void)collectMemoryCreationDiagnostics
{
  [(CPLCTLCommand *)self printFormat:@"Collecting MC Diagnostics..."];

  [(CPLDiagnoseCommand *)self _collectMemoryCreationFeatureAvailabilityDiagnostics];
}

- (id)_syndicationLibrarySpotlightSearchAttributes
{
  v2 = [(CPLDiagnoseCommand *)self _photosSpotlightSearchAttributes];
  v3 = [v2 stringByAppendingFormat:@" -a photosSavedFromAppBundleIdentifier"];

  return v3;
}

- (void)_collectPhotosSearchDiagnostics
{
  v7[0] = self->_photosctlCommand;
  v7[1] = @"search";
  v7[2] = @"index";
  v7[3] = @"s";
  v3 = [NSArray arrayWithObjects:v7 count:4];
  [(CPLDiagnoseCommand *)self collectOutputOfCommandAndArguments:v3 label:@"Collecting Photos Search index status" filename:@"search_photos_index_status.txt" outputIsStderr:0 timeout:1];

  v4 = [(CPLDiagnoseCommand *)self _photosSpotlightSearchAttributes];
  v5 = [NSString stringWithFormat:@"/usr/local/bin/search -b com.apple.mobileslideshow %@", v4];

  [(CPLDiagnoseCommand *)self collectOutputOfCommand:v5 label:@"Collecting Photos Search Spotlight index state" filename:@"search_photos_spotlight_details.txt"];
  v6 = [NSString stringWithFormat:@"/usr/local/bin/searchutil -s"];
  [(CPLDiagnoseCommand *)self collectOutputOfCommand:v6 label:@"Collecting Spotlight index status" filename:@"search_photos_searchutil_status.txt"];
  [(CPLDiagnoseCommand *)self collectFileAtPath:@"/var/MobileAsset/AssetsV2/com_apple_MobileAsset_SpotlightResources/com_apple_MobileAsset_SpotlightResources.xml"];
  [(CPLDiagnoseCommand *)self collectFileListingAtPath:@"/var/MobileAsset/AssetsV2 /com_apple_MobileAsset_SpotlightResources/" label:@"Collecting Spotlight Resources listing" filename:@"spotlightResourcesDirectory.txt" extendedDetail:1];
}

- (void)_collectUniversalSearchDiagnostics
{
  if (![(CPLDiagnoseCommand *)self includeSyndication])
  {
    v8[0] = self->_photosctlCommand;
    v8[1] = @"search";
    v8[2] = @"index";
    v8[3] = @"s";
    v8[4] = @"-l";
    v8[5] = @"3";
    v3 = [NSArray arrayWithObjects:v8 count:6];
    [(CPLDiagnoseCommand *)self collectOutputOfCommandAndArguments:v3 label:@"Collecting Photos Search index status for Syndication Library" filename:@"search_syndication_index_status.txt" outputIsStderr:0 timeout:1];

    [(CPLDiagnoseCommand *)self collectOutputOfCommand:@"/usr/local/bin/searchutil -s" label:@"Collecting Spotlight index status" filename:@"search_syndication_searchutil_status.txt"];
    [(CPLDiagnoseCommand *)self collectOutputOfCommand:@"/usr/local/bin/search -l '_kMDItemEligibleForPhotosProcessing>0'" label:@"Collecting Universal Search eligible CSSIDs" filename:@"search_syndication_eligible_items.txt"];
    v4 = [(CPLDiagnoseCommand *)self _syndicationLibrarySpotlightSearchAttributes];
    v5 = [NSString stringWithFormat:@"/usr/local/bin/search -l '_kMDItemEligibleForPhotosProcessing>0 && kMDItemPhotosDonationState>0' %@", v4];

    [(CPLDiagnoseCommand *)self collectOutputOfCommand:v5 label:@"Collecting Universal Search Spotlight index state" filename:@"search_syndication_spotlight_details.txt"];
    v6 = [objc_opt_class() _syndicationLibraryPath];
    v7 = [@"jujubectl photos analysisSummary --oneline --photo-library " stringByAppendingString:v6];

    [(CPLDiagnoseCommand *)self collectOutputOfCommand:v7 label:@"Collecting Universal Search Media Analysis Summary" filename:@"search_syndication_mediaanalysis_summary.txt"];
  }
}

- (void)_collectSearchEntityDonationDiagnostics
{
  v8[0] = self->_photosctlCommand;
  v8[1] = @"search-entity-donation";
  v8[2] = @"print-rankings";
  v3 = [NSArray arrayWithObjects:v8 count:3];
  [(CPLDiagnoseCommand *)self collectOutputOfCommandAndArguments:v3 label:@"Getting Search Entity Donation Rankings" filename:@"search_entity_donation_rankings.txt" outputIsStderr:0 timeout:1];

  v7[0] = self->_photosctlCommand;
  v7[1] = @"search-entity-donation";
  v7[2] = @"print-moment-info";
  v4 = [NSArray arrayWithObjects:v7 count:3];
  [(CPLDiagnoseCommand *)self collectOutputOfCommandAndArguments:v4 label:@"Getting Search Entity Donation Per-Moment Info" filename:@"search_entity_donation_moment_info.txt" outputIsStderr:0 timeout:1];

  v6[0] = self->_photosctlCommand;
  v6[1] = @"search-entity-donation";
  v6[2] = @"print-person-relationships";
  v5 = [NSArray arrayWithObjects:v6 count:3];
  [(CPLDiagnoseCommand *)self collectOutputOfCommandAndArguments:v5 label:@"Getting Search Entity Donation Person Relationships" filename:@"search_entity_donation_person_relationships.txt" outputIsStderr:0 timeout:1];
}

- (void)_collectMemoryCreationFeatureAvailabilityDiagnostics
{
  v6[0] = self->_photosctlCommand;
  v6[1] = @"feature-availability";
  v6[2] = @"read-availability";
  v6[3] = @"memories-creation";
  v3 = [NSArray arrayWithObjects:v6 count:4];
  [(CPLDiagnoseCommand *)self collectOutputOfCommandAndArguments:v3 label:@"Getting mc feature availability" filename:@"feature_availability_mc.txt" outputIsStderr:0 timeout:1];

  v5[0] = self->_photosctlCommand;
  v5[1] = @"story";
  v5[2] = @"availability";
  v4 = [NSArray arrayWithObjects:v5 count:3];
  [(CPLDiagnoseCommand *)self collectOutputOfCommandAndArguments:v4 label:@"Getting story availability" filename:@"story_availability.txt" outputIsStderr:0 timeout:1];
}

- (void)_collectSharedAlbumFilesAtPath:(id)a3
{
  v4 = a3;
  v5 = [(NSURL *)self->_outputFolder URLByAppendingPathComponent:@"SharedAlbums"];
  v6 = +[NSFileManager defaultManager];
  [v6 createDirectoryAtURL:v5 withIntermediateDirectories:0 attributes:0 error:0];

  v7 = +[NSFileManager defaultManager];
  v8 = [v7 contentsOfDirectoryAtPath:v4 error:0];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100016058;
  v11[3] = &unk_100035120;
  v12 = v4;
  v13 = self;
  v14 = v5;
  v9 = v5;
  v10 = v4;
  [v8 enumerateObjectsUsingBlock:v11];
}

- (void)signalProcesses
{
  v3 = objc_alloc_init(NSMutableString);
  v4 = [(CPLDiagnoseCommand *)self processes];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100016374;
  v8[3] = &unk_100035148;
  v5 = v3;
  v9 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v8];

  if ([v5 length])
  {
    v6 = [[NSString alloc] initWithFormat:@"%@ -INFO%@", @"/usr/bin/killall", v5];
    v7 = [[NSString alloc] initWithFormat:@"Sending SIGINFO to%@", v5];
    [(CPLDiagnoseCommand *)self collectOutputOfCommand:v6 label:v7 filename:0];
  }
}

- (void)sampleProcesses
{
  v3 = +[NSFileManager defaultManager];
  outputFolder = self->_outputFolder;
  v5 = [(CPLDiagnoseCommand *)self processDetailPath:&stru_100035A18];
  v6 = [(NSURL *)outputFolder URLByAppendingPathComponent:v5];
  [v3 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:0];

  v7 = [(CPLDiagnoseCommand *)self processes];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100016520;
  v9[3] = &unk_100035148;
  v9[4] = self;
  [v7 enumerateKeysAndObjectsUsingBlock:v9];

  if (!self->_isRoot)
  {
    v8 = [objc_opt_class() toolName];
    [(CPLCTLCommand *)self printFormat:@"- Can't sample root processes as %@ is not run with root permissions", v8];
  }
}

- (void)collectDefaults
{
  v3 = [(CPLDiagnoseCommand *)self processes];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001666C;
  v4[3] = &unk_100035148;
  v4[4] = self;
  [v3 enumerateKeysAndObjectsUsingBlock:v4];

  [(CPLDiagnoseCommand *)self collectOutputOfCommand:@"/usr/bin/defaults read /var/mobile/Library/Preferences/com.apple.mediaanalysis.plist" label:@"Getting defaults for com.apple.mediaanalysis" filename:@"com.apple.mediaanalysis-defaults.txt"];
}

- (void)_printWrapperStatus:(id)a3
{
  v3 = a3;
  v4 = [v3 parameters];
  v5 = [v4 libraryIdentifier];
  if ([v3 isOpened])
  {
LABEL_7:
    v10 = [[NSString alloc] initWithFormat:@" (%lu clients)", objc_msgSend(v3, "clientCount")];
    goto LABEL_8;
  }

  v6 = [v3 openError];

  if (v6)
  {
    v7 = [NSString alloc];
    v8 = [v3 openError];
    v9 = [v8 localizedDescription];
    v10 = [v7 initWithFormat:@" (%@)", v9];

    if (v10)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if ([v3 clientCount])
  {
    v10 = [[NSString alloc] initWithFormat:@" (opening with %lu clients)", objc_msgSend(v3, "clientCount")];
    if (v10)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v10 = @" (opening)";
LABEL_8:
  v29 = v3;
  v26 = v10;
  v27 = v5;
  [(CPLCTLCommand *)self printFormat:@"  * %@%@:", v5, v10];
  v28 = v4;
  v11 = [v4 asPlist];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v12 = [v11 allKeys];
  v13 = [v12 sortedArrayUsingSelector:"compare:"];

  v14 = [v13 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = @"libraryIdentifier";
    v17 = *v32;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v32 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v31 + 1) + 8 * i);
        if (([v19 isEqualToString:v16] & 1) == 0)
        {
          v20 = [v11 objectForKeyedSubscript:v19];
          if ([v19 isEqualToString:@"options"])
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v21 = +[CPLLibraryManager descriptionForLibraryOptions:](CPLLibraryManager, "descriptionForLibraryOptions:", [v20 integerValue]);
              goto LABEL_21;
            }
          }

          if ([v19 hasSuffix:@"Path"] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v22 = v16;
            v23 = v13;
            v24 = [[NSURL alloc] initFileURLWithPath:v20 isDirectory:1];
            v25 = [(CPLDiagnoseCommand *)self _simplifiedPathForURL:v24];

            v13 = v23;
            v16 = v22;
          }

          else
          {
            v21 = [v20 description];
LABEL_21:
            v25 = v21;
          }

          [(CPLCTLCommand *)self printFormat:@"      %@: %@", v19, v25];

          continue;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v15);
  }
}

- (void)collectCloudPhotodGlobalStatus
{
  [(CPLCTLCommand *)self printFormat:@"- Collecting global status for cloudphotod"];
  diagnosticLog = self->_diagnosticLog;
  if (diagnosticLog)
  {
    v4 = [(NSURL *)self->_outputFolder URLByAppendingPathComponent:@"cloudphotod-status.log" isDirectory:0];
    v5 = fopen([v4 fileSystemRepresentation], "a+");
    if (v5)
    {
      self->_diagnosticLog = v5;
      [(CPLCTLCommand *)self setLogOutputFd:fileno(v5)];
    }

    else
    {
      v6 = [(CPLDiagnoseCommand *)self _simplifiedPathForURL:v4];
      v7 = __error();
      [(CPLCTLCommand *)self printFormat:@"  can't create cloudphotod status log at %@: %s", v6, strerror(*v7)];

      diagnosticLog = 0;
    }
  }

  v8 = [(CPLCTLCommand *)self daemonConnection];
  [v8 queue];
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 1;
  v58[0] = 0;
  v58[1] = v58;
  v58[2] = 0x2020000000;
  v59 = 0;
  v56[0] = 0;
  v56[1] = v56;
  v56[2] = 0x3032000000;
  v56[3] = sub_1000171BC;
  v56[4] = sub_1000171CC;
  v57 = 0;
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_1000171D4;
  v9 = v52[3] = &unk_100034E20;
  v53 = v9;
  v54 = v58;
  v55 = v56;
  v10 = objc_retainBlock(v52);
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_100017258;
  v45[3] = &unk_1000351C0;
  v49 = v56;
  v50 = v58;
  v28 = v8;
  v46 = v28;
  v11 = v10;
  v47 = self;
  v48 = v11;
  v51 = &v60;
  v29 = objc_retainBlock(v45);
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_10001747C;
  v39[3] = &unk_1000351E8;
  v43 = v56;
  v12 = v9;
  v40 = v12;
  v13 = v11;
  v41 = self;
  v42 = v13;
  v44 = &v60;
  v14 = objc_retainBlock(v39);
  [(CPLCTLCommand *)self printFormat:@"- Collecting daemon status"];
  if (*(v61 + 24) == 1)
  {
    v15 = (v29[2])();
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1000175F4;
    v37[3] = &unk_100035210;
    v37[4] = self;
    v38 = v13;
    [v15 getDaemonStatusWithCompletionHandler:v37];

    (v14[2])(v14);
  }

  else
  {
    [(CPLCTLCommand *)self printFormat:@"  skipped"];
  }

  [(CPLCTLCommand *)self printFormat:@"- Collecting registered daemon engines"];
  v36 = 0;
  v16 = [(CPLDiagnoseCommand *)self getEngineWrapperStatusesWithError:&v36];
  v17 = v36;
  v18 = v17;
  if (!v16)
  {
    v19 = [v17 localizedDescription];
    [(CPLCTLCommand *)self printFormat:@"  failed: %@", v19];
LABEL_21:

    goto LABEL_23;
  }

  if ([v16 count])
  {
    [(CPLCTLCommand *)self printFormat:&stru_100035A18];
    v27 = v18;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v19 = v16;
    v20 = [v19 countByEnumeratingWithState:&v32 objects:v64 count:16];
    if (v20)
    {
      v26 = v12;
      v21 = *v33;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v33 != v21)
          {
            objc_enumerationMutation(v19);
          }

          [(CPLDiagnoseCommand *)self _printWrapperStatus:*(*(&v32 + 1) + 8 * i)];
          [(CPLCTLCommand *)self printFormat:&stru_100035A18];
        }

        v20 = [v19 countByEnumeratingWithState:&v32 objects:v64 count:16];
      }

      while (v20);
      v12 = v26;
    }

    v18 = v27;
    goto LABEL_21;
  }

  [(CPLCTLCommand *)self printFormat:@"    no registered engines"];
LABEL_23:
  [(CPLCTLCommand *)self printFormat:@"- Collecting connected librarymanagers"];
  if (*(v61 + 24) == 1)
  {
    v23 = (v29[2])();
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100017870;
    v30[3] = &unk_100035238;
    v30[4] = self;
    v31 = v13;
    [v23 getDaemonLibraryManagerStatusesWithCompletionHandler:v30];

    (v14[2])(v14);
  }

  if (diagnosticLog)
  {
    v24 = self->_diagnosticLog;
    if (v24)
    {
      fclose(v24);
    }

    self->_diagnosticLog = diagnosticLog;
    [(CPLCTLCommand *)self setLogOutputFd:fileno(diagnosticLog)];
  }

  if (*(v61 + 24))
  {
    v25 = @"- Collecting global status for cloudphotod: done";
  }

  else
  {
    v25 = @"- Collecting global status for cloudphotod: failed";
  }

  [(CPLCTLCommand *)self printFormat:v25];

  _Block_object_dispose(v56, 8);
  _Block_object_dispose(v58, 8);
  _Block_object_dispose(&v60, 8);
}

- (void)collectCloudPhotodStatusWithLibraryIdentifier:(id)a3 subdirectory:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(CPLCTLCommand *)self printFormat:@"- Collecting %@ status for %@", @"cloudphotod", v6];
  v38 = 0;
  v8 = [(CPLCTLCommand *)self openedLibraryManagerWithLibraryIdentifier:v6 timeout:1 withTargetUserIdentifier:0 error:&v38];
  v9 = v38;
  v10 = v9;
  if (v8)
  {
    v11 = dispatch_semaphore_create(0);
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = sub_1000171BC;
    v36 = sub_1000171CC;
    v37 = 0;
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = sub_1000171BC;
    v30 = sub_1000171CC;
    v31 = 0;
    v12 = [(NSURL *)self->_outputFile lastPathComponent];
    v13 = [NSString stringWithFormat:@"Collecting CPL diagnostics in %@", v12];
    [v8 addInfoToLog:v13];

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100017E98;
    v22[3] = &unk_100035260;
    v24 = &v26;
    v25 = &v32;
    v14 = v11;
    v23 = v14;
    [v8 getStatusForComponents:0 completionHandler:v22];
    v15 = dispatch_time(0, 40000000000);
    if (dispatch_semaphore_wait(v14, v15))
    {
      [(CPLCTLCommand *)self printFormat:@"  took too long"];
    }

    else
    {
      v16 = v33[5];
      if (v16)
      {
        v17 = [v16 localizedDescription];
        [(CPLCTLCommand *)self printFormat:@"  failed: %@", v17];
      }

      else
      {
        outputFolder = self->_outputFolder;
        if (v7)
        {
          v19 = [(NSURL *)outputFolder URLByAppendingPathComponent:v7];
        }

        else
        {
          v19 = outputFolder;
        }

        v20 = v19;
        v21 = +[NSFileManager defaultManager];
        [v21 createDirectoryAtURL:v20 withIntermediateDirectories:1 attributes:0 error:0];

        v17 = [(NSURL *)v20 URLByAppendingPathComponent:@"cplstatus.txt" isDirectory:0];

        [v27[5] writeToURL:v17 atomically:0 encoding:4 error:0];
      }
    }

    [(CPLCTLCommand *)self closeLibraryManager:v8];

    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(&v32, 8);
  }

  else
  {
    v14 = [v9 localizedDescription];
    [(CPLCTLCommand *)self printFormat:@"  failed to contact %@: %@", @"cloudphotod", v14];
  }
}

- (void)collectAppLibraryIdentifiers
{
  v2 = self;
  [(CPLCTLCommand *)self printFormat:@"- Collecting Registered App Libraries"];
  v36 = 0;
  v3 = [(CPLCTLCommand *)v2 getLibraryIdentifiersWithDomain:3 error:&v36];
  v4 = v36;
  v5 = v4;
  if (v3)
  {
    -[CPLCTLCommand printFormat:](v2, "printFormat:", @"  found %lu libraries", [v3 count]);
    v6 = [(NSURL *)v2->_outputFolder URLByAppendingPathComponent:@"AppLibraries.txt" isDirectory:0];
    if ([v3 count])
    {
      v26 = v6;
      v27 = v2;
      v28 = v5;
      v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v29 = v3;
      obj = v3;
      v8 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v33;
        do
        {
          v11 = 0;
          do
          {
            if (*v33 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v32 + 1) + 8 * v11);
            v13 = [NSString alloc];
            v14 = [v12 name];
            v15 = [v12 uuid];
            v16 = [v12 containerIdentifier];
            v17 = [v12 path];
            v18 = [v17 stringByAbbreviatingWithTildeInPath];
            v19 = [v13 initWithFormat:@"* %@ / %@ - %@\n    path: %@", v14, v15, v16, v18];
            [v7 addObject:v19];

            v11 = v11 + 1;
          }

          while (v9 != v11);
          v9 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
        }

        while (v9);
      }

      v20 = [v7 componentsJoinedByString:@"\n"];

      v5 = v28;
      v3 = v29;
      v6 = v26;
      v2 = v27;
    }

    else
    {
      v20 = @"* No App Libraries registered";
    }

    [(CPLCTLCommand *)v2 printFormat:@"%@", v20];
    v21 = [[NSString alloc] initWithFormat:@"Registered App Libraries:\n%@\n", v20];

    v31 = 0;
    v22 = [v21 writeToURL:v6 atomically:1 encoding:4 error:&v31];
    v23 = v31;
    if ((v22 & 1) == 0)
    {
      v24 = [v6 lastPathComponent];
      v25 = [v23 localizedDescription];
      [(CPLCTLCommand *)v2 printFormat:@"  failed to write to %@: %@", v24, v25];
    }
  }

  else
  {
    v6 = [v4 localizedDescription];
    [(CPLCTLCommand *)v2 printFormat:@"  failed: %@", v6];
  }
}

- (void)collectAccountStatus
{
  [(CPLCTLCommand *)self printFormat:@"- Collecting Account status"];
  v3 = objc_alloc_init(NSMutableString);
  v4 = objc_alloc_init(ACAccountStore);
  v5 = [v4 aa_primaryAppleAccount];

  if (v5)
  {
    v6 = [v5 aa_personID];
    [v3 appendFormat:@"DSID: %@\n", v6];

    v7 = [v5 isEnabledForDataclass:ACAccountDataclassCloudPhotos];
    v8 = [v5 isEnabledForDataclass:ACAccountDataclassMediaStream];
    v9 = [v5 isEnabledForDataclass:ACAccountDataclassSharedStreams];
    v10 = [v5 isEnabledForDataclass:ACAccountDataclassImagePlayground];
    v11 = objc_alloc_init(NSMutableArray);
    v12 = v11;
    if (v7)
    {
      [v11 addObject:@"CPL"];
      if (!v8)
      {
LABEL_4:
        if (!v9)
        {
          goto LABEL_5;
        }

        goto LABEL_12;
      }
    }

    else if (!v8)
    {
      goto LABEL_4;
    }

    [v12 addObject:@"MPS"];
    if (!v9)
    {
LABEL_5:
      if (!v10)
      {
LABEL_7:
        if ([v12 count])
        {
          v13 = [v12 componentsJoinedByString:@" "];
          [v3 appendFormat:@"%@\n", v13];
        }

        else
        {
          [v3 appendString:@"No dataclasses enabled\n"];
        }

        goto LABEL_16;
      }

LABEL_6:
      [v12 addObject:@"ImagePlayground"];
      goto LABEL_7;
    }

LABEL_12:
    [v12 addObject:@"SharedAlbum"];
    if (!v10)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  [v3 appendString:@"Unable to read accounts\n"];
LABEL_16:
  v14 = [(NSURL *)self->_outputFolder URLByAppendingPathComponent:@"account_status.txt" isDirectory:0];
  v18 = 0;
  v15 = [v3 writeToURL:v14 atomically:0 encoding:4 error:&v18];
  v16 = v18;
  v17 = v16;
  if ((v15 & 1) == 0)
  {
    [(CPLCTLCommand *)self printFormat:@"- Failed to write account_status.txt: %@, error: %@", v14, v16];
  }
}

- (void)collectDuetInfo
{
  if (self->_hasFullShellCommands && self->_isAppleInternal)
  {
    [(CPLDiagnoseCommand *)self collectOutputOfCommand:@"/usr/local/bin/cdattrhist2 -name com.apple.coreduet.attribute.screenLock -t i -q" label:@"Getting screen lock/unlock events" filename:@"screenlocks.txt"];

    [(CPLDiagnoseCommand *)self collectOutputOfCommand:@"/usr/local/bin/cdattrhist2 -name com.apple.coreduet.attribute.sleepWake -t i -q" label:@"Getting sleep/wake events" filename:@"sleepwake.txt"];
  }
}

- (void)collectLocalLibraryMetadataInfo
{
  if (self->_isAppleInternal)
  {
    if (!self->_skipLibraryPreprocessing)
    {
      v16[0] = self->_photosctlCommand;
      v16[1] = @"allmomentsmetadata";
      v16[2] = @"all_moments_details.plist";
      v3 = [NSArray arrayWithObjects:v16 count:3];
      [(CPLDiagnoseCommand *)self collectOutputOfCommandAndArguments:v3 label:@"Dumping all moments metadata" filename:0 outputIsStderr:0 timeout:1];

      v15[0] = self->_photosctlCommand;
      v15[1] = @"printchangestore";
      v4 = [NSArray arrayWithObjects:v15 count:2];
      [(CPLDiagnoseCommand *)self collectOutputOfCommandAndArguments:v4 label:@"Getting the changestore" filename:@"changestore.txt" outputIsStderr:1 timeout:1];

      v14[0] = self->_photosctlCommand;
      v14[1] = @"listnonsharedphotouuids";
      v5 = [NSArray arrayWithObjects:v14 count:2];
      [(CPLDiagnoseCommand *)self collectOutputOfCommandAndArguments:v5 label:@"Getting local photo GUIDs" filename:@"local_photo_guids.txt" outputIsStderr:0 timeout:1];

      v13[0] = self->_photosctlCommand;
      v13[1] = @"hascompletedrestore";
      v6 = [NSArray arrayWithObjects:v13 count:2];
      [(CPLDiagnoseCommand *)self collectOutputOfCommandAndArguments:v6 label:@"Getting assetsd restoring state" filename:0 outputIsStderr:0 timeout:1];

      v12[0] = self->_photosctlCommand;
      v12[1] = @"incompleterestoreprocesses";
      v7 = [NSArray arrayWithObjects:v12 count:2];
      [(CPLDiagnoseCommand *)self collectOutputOfCommandAndArguments:v7 label:@"Getting assetsd incomplete restore processes" filename:0 outputIsStderr:0 timeout:1];

      v11[0] = self->_photosctlCommand;
      v11[1] = @"listincomplete";
      v8 = [NSArray arrayWithObjects:v11 count:2];
      [(CPLDiagnoseCommand *)self collectOutputOfCommandAndArguments:v8 label:@"Getting assetsd incomplete list" filename:@"incompletelist.txt" outputIsStderr:0 timeout:1];
    }

    v10[0] = self->_photosctlCommand;
    v10[1] = @"cpl";
    v10[2] = @"status";
    v9 = [NSArray arrayWithObjects:v10 count:3];
    [(CPLDiagnoseCommand *)self collectOutputOfCommandAndArguments:v9 label:@"Getting cpl state" filename:@"cplstate.txt" outputIsStderr:0 timeout:1];
  }
}

- (void)collectTaskInfo
{
  v3 = [(CPLDiagnoseCommand *)self processes];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000188D4;
  v4[3] = &unk_100035148;
  v4[4] = self;
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
}

- (void)collectPreferences
{
  v3 = [(NSURL *)self->_outputFolder URLByAppendingPathComponent:@"Preferences"];
  v4 = +[NSFileManager defaultManager];
  [v4 createDirectoryAtURL:v3 withIntermediateDirectories:0 attributes:0 error:0];

  [(CPLDiagnoseCommand *)self writePreferenceInDomain:0 withKey:@"AppleLanguages" toDirectory:v3 currentUser:1];
  [(CPLDiagnoseCommand *)self writePreferenceInDomain:0 withKey:@"AppleLocale" toDirectory:v3 currentUser:1];
  v5 = [(CPLDiagnoseCommand *)self processes];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100018B04;
  v7[3] = &unk_100035288;
  v7[4] = self;
  v8 = v3;
  v6 = v3;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)collectSysdiagnose:(id)a3
{
  v4 = a3;
  if (!self->_skipSysdiagnose)
  {
    v5 = +[NSMutableDictionary dictionary];
    [v5 setObject:&__kCFBooleanFalse forKeyedSubscript:@"coSysdiagnose"];
    [v5 setObject:&__kCFBooleanFalse forKeyedSubscript:@"shouldDisplayTarBall"];
    [v5 setObject:&__kCFBooleanFalse forKeyedSubscript:@"shouldCreateTarBall"];
    [(CPLCTLCommand *)self printFormat:@"- Collecting sysdiagnose (background)"];
    +[NSDate timeIntervalSinceReferenceDate];
    v7 = v6;
    if (self->_fullSysdiagnoseLogArchive)
    {
      [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:@"capOverrideFullLogarchive"];
      [(CPLCTLCommand *)self printFormat:@"  collect full system log archive"];
    }

    v8 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100018D20;
    block[3] = &unk_1000352B0;
    v13 = v7;
    v11 = v5;
    v12 = self;
    v9 = v5;
    dispatch_group_async(v4, v8, block);
  }
}

- (void)collectSilentMover
{
  [(CPLDiagnoseCommand *)self setUserMode:1];
  v15 = [@"/var/mobile/Media/PhotoData/private/com.apple.assetsd" stringByAppendingPathComponent:@"cplprivateengines.plist"];
  [CPLPrivateEngineAlias setOverridePrivateEngineAliasPath:?];
  v3 = [CPLPrivateEngineAlias privateEngineAliasWithName:@"silent-mover"];
  v4 = [CPLPrivateEngineAlias privateEngineAliasWithName:@"per-device-silent-mover"];
  if (v3)
  {
    v5 = [v3 cplDirectoryURL];
    if ([v5 checkResourceIsReachableAndReturnError:0])
    {
      [(CPLDiagnoseCommand *)self collectFileAtURL:v5 suffix:0 destinationDirectory:self->_outputFolder];
      v6 = [NSURL fileURLWithPath:@"/AppleInternal/Library/Photos/Backend/CPL/silent-mover.py" isDirectory:0];
      outputFolder = self->_outputFolder;
      v8 = [v5 lastPathComponent];
      v9 = [(NSURL *)outputFolder URLByAppendingPathComponent:v8];
      [(CPLDiagnoseCommand *)self collectFileAtURL:v6 suffix:0 destinationDirectory:v9];
    }
  }

  if (v4)
  {
    v10 = [v4 cplDirectoryURL];
    if ([v10 checkResourceIsReachableAndReturnError:0])
    {
      [(CPLDiagnoseCommand *)self collectFileAtURL:v10 suffix:0 destinationDirectory:self->_outputFolder];
      v11 = [NSURL fileURLWithPath:@"/AppleInternal/Library/Photos/Backend/CPL/silent-mover.py" isDirectory:0];
      v12 = self->_outputFolder;
      v13 = [v10 lastPathComponent];
      v14 = [(NSURL *)v12 URLByAppendingPathComponent:v13];
      [(CPLDiagnoseCommand *)self collectFileAtURL:v11 suffix:0 destinationDirectory:v14];
    }
  }

  [(CPLDiagnoseCommand *)self revertToRootMode:1];
}

- (void)startDiagnostic
{
  v3 = dispatch_group_create();
  [(CPLCTLCommand *)self printFormat:@"Diagnostics for %s", self->host];
  [(CPLCTLCommand *)self printFormat:@"============================"];
  v4 = __CPLEnvironmentDictionary();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 allKeys];
  v6 = [v5 sortedArrayUsingSelector:"compare:"];

  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v4 objectForKey:v11];
        [(CPLCTLCommand *)self printFormat:@"  %@:\t%@", v11, v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  [(CPLDiagnoseCommand *)self printDiskCapacity:@"start"];
  [(CPLDiagnoseCommand *)self collectPreferences];
  [(CPLDiagnoseCommand *)self collectSysdiagnose:v3];
  if (self->_hasFullShellCommands)
  {
    [(CPLDiagnoseCommand *)self sampleProcesses];
    if (self->_isRoot)
    {
      [(CPLDiagnoseCommand *)self collectTaskInfo];
    }

    [(CPLDiagnoseCommand *)self signalProcesses];
    if (self->_isAppleInternal)
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100019580;
      v15[3] = &unk_100034BD0;
      v15[4] = self;
      [(CPLDiagnoseCommand *)self runAsUser:v15];
    }
  }

  [(CPLDiagnoseCommand *)self determineLibraryPaths];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000195A0;
  v14[3] = &unk_100034BD0;
  v14[4] = self;
  [(CPLDiagnoseCommand *)self runAsUser:v14];
  [(CPLDiagnoseCommand *)self collectFiles];
  [(CPLDiagnoseCommand *)self collectDuetInfo];
  [(CPLDiagnoseCommand *)self collectDiagnosticLogs];
  [(CPLDiagnoseCommand *)self collectStoryDiagnosticsFiles];
  if (self->_hasFullShellCommands)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000196EC;
    v13[3] = &unk_100034BD0;
    v13[4] = self;
    [(CPLDiagnoseCommand *)self runAsUser:v13];
  }

  if ([(CPLDiagnoseCommand *)self includeSPL])
  {
    [(CPLDiagnoseCommand *)self collectFileListingAtPath:@"/var/mobile/Media/DCIM" label:@"Getting DCIM contents" filename:@"DCIM_contents.txt" extendedDetail:0];
    [(CPLDiagnoseCommand *)self collectFileListingAtPath:@"/var/mobile/Media/PhotoData" label:@"Getting PhotoData contents" filename:@"PhotoData_contents.txt" extendedDetail:0];
    [(CPLDiagnoseCommand *)self collectFileListingAtPath:@"/var/mobile/Media/Photos" label:@"Getting Photos contents" filename:@"Photos_contents.txt" extendedDetail:0];
    [(CPLDiagnoseCommand *)self collectFileListingAtPath:@"/var/mobile/Media/PhotoStreamsData" label:@"Getting PhotoStreamsData contents" filename:@"PhotoStreamsData_contents.txt" extendedDetail:0];
    [(CPLDiagnoseCommand *)self collectFileListingAtPath:@"/var/mobile/Media/Deferred" label:@"Getting Deferred contents" filename:@"Deferred_contents.txt" extendedDetail:0];
  }

  [(CPLDiagnoseCommand *)self collectFileListingAtPath:@"/var/MobileAsset/AssetsV2/com_apple_MobileAsset_LinguisticData" label:@"Getting Asset Linguistic Data contents" filename:@"MobileAssetLinguisticData_contents.txt" extendedDetail:0];
  if (!self->_skipSysdiagnose)
  {
    [(CPLCTLCommand *)self printFormat:@"- Wait for sysdiagnose"];
  }

  dispatch_group_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  if (!self->_skipSysdiagnose && self->_sysdiagnoseFailed)
  {
    [(CPLCTLCommand *)self printError:@"- sysdiagnose failed: see earlier error"];
  }
}

- (void)collectFilePaths:(id)a3 toSubdirectory:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSURL *)self->_outputFolder URLByAppendingPathComponent:v7 isDirectory:1];
  v9 = +[NSFileManager defaultManager];
  v10 = [v8 path];
  v25 = 0;
  v11 = [v9 createDirectoryAtPath:v10 withIntermediateDirectories:1 attributes:0 error:&v25];
  v12 = v25;

  if (v11)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v13 = v6;
    v14 = [v13 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v14)
    {
      v15 = v14;
      v20 = v6;
      v16 = *v22;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [NSURL fileURLWithPath:*(*(&v21 + 1) + 8 * i)];
          [(CPLDiagnoseCommand *)self collectFileAtURL:v18 suffix:0 destinationDirectory:v8];
        }

        v15 = [v13 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v15);
      v6 = v20;
    }
  }

  else
  {
    [(CPLCTLCommand *)self printError:@"Failed to create subdirectory %@: %@", v7, v12];
    incompleteTasks = self->incompleteTasks;
    v13 = [NSString stringWithFormat:@"Failed collecting %@.", v6];
    [(NSMutableArray *)incompleteTasks addObject:v13];
  }
}

- (id)interestingFilesInDirectoryPath:(id)a3 withPredicate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSFileManager defaultManager];
  v14 = 0;
  v9 = [v8 contentsOfDirectoryAtPath:v6 error:&v14];
  v10 = v14;

  if (v9)
  {
    v11 = [v9 filteredArrayUsingPredicate:v7];
    v12 = [(CPLDiagnoseCommand *)self prependPath:v6 toStringsInArray:v11];
  }

  else
  {
    [(CPLCTLCommand *)self printError:@"Failed to get contents of %@: %@", v6, v10];
    v12 = &__NSArray0__struct;
  }

  return v12;
}

- (void)addFilesFromVisionCacheToDictionary:(id)a3
{
  v4 = a3;
  v5 = [NSPredicate predicateWithFormat:@"SELF IN %@", &off_10003B898];
  v6 = [NSPredicate predicateWithFormat:@"SELF like %@", @"*.cmap"];
  v10[0] = v5;
  v10[1] = v6;
  v7 = [NSArray arrayWithObjects:v10 count:2];
  v8 = [NSCompoundPredicate orPredicateWithSubpredicates:v7];

  v9 = [(CPLDiagnoseCommand *)self interestingFilesInDirectoryPath:@"/var/mobile/Media/PhotoData/Caches/VisionService" withPredicate:v8];
  [v4 setObject:v9 forKeyedSubscript:@"VisionService"];
}

- (id)mediaAnalysisSystemDatabasePath
{
  v2 = [(CPLDiagnoseCommand *)self userLibraryDir];
  v3 = [v2 stringByAppendingPathComponent:@"MediaAnalysis/MediaAnalysis.sqlite"];

  return v3;
}

+ (id)supportedFeatureAreas
{
  v4 = @"universalsearch";
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (void)collectFeatureAreaDiagnostics
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_featureAreas;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v8 + 1) + 8 * v7) isEqualToString:{@"universalsearch", v8}])
        {
          [(CPLDiagnoseCommand *)self _collectUniversalSearchFeatureAreaDiagnostics];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_collectUniversalSearchFeatureAreaDiagnostics
{
  [(CPLCTLCommand *)self printFormat:@"- Collecting diagnostics for feature area: %@", @"universalsearch"];
  v4[0] = self->_photosctlCommand;
  v4[1] = @"search";
  v4[2] = @"universalsearchstatus";
  v4[3] = @"details";
  v3 = [NSArray arrayWithObjects:v4 count:4];
  [(CPLDiagnoseCommand *)self collectOutputOfCommandAndArguments:v3 label:@"Getting Universal Search status details" filename:@"universalSearchStatus.txt" outputIsStderr:0 timeout:1];
}

- (void)collectStoryDiagnosticsFiles
{
  if (self->_includeStoryDiagnostics && self->_isAppleInternal)
  {
    v3 = [(NSString *)self->_libraryPath stringByAppendingPathComponent:@"internal/storydiagnostics/"];
    [(CPLDiagnoseCommand *)self collectFileAtPath:v3];
  }
}

- (void)determineLibraryPaths
{
  if (sub_10001D1E8(self, self->_libraryPath, @"/var/mobile/Media"))
  {
    [(CPLCTLCommand *)self printFormat:@"  specified library path is the System Library"];
    self->_targetLibraryIsSPL = 1;
  }

  libraryPath = self->_libraryPath;
  v4 = [objc_opt_class() _syndicationLibraryPath];
  LODWORD(libraryPath) = sub_10001D1E8(self, libraryPath, v4);

  if (libraryPath)
  {
    [(CPLCTLCommand *)self printFormat:@"  specified library path is the Syndication library"];
    self->_targetLibraryIsSyndication = 1;
  }
}

@end