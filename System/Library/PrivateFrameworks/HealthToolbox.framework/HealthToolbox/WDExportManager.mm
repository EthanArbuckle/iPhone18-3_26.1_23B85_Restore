@interface WDExportManager
+ (id)allSupportedMedicalTypes;
- (BOOL)_addSourceDirectory:(id)a3 asPath:(id)a4 archive:(id)a5 fileManager:(id)a6;
- (BOOL)_writeElectrocardiogramsToDisk:(id)a3 header:(id)a4 version:(id)a5;
- (HKApplicationProviding)applicationProvider;
- (WDExportManager)initWithProfile:(id)a3;
- (id)_electrocardiogramHeaderWithName:(id)a3 dateOfBirth:(id)a4;
- (id)_formatBPMForBeatToBeatReading:(id)a3;
- (id)_formatTimeForBeatToBeatReading:(id)a3;
- (id)_preferredUnitForObjectType:(id)a3;
- (void)_archiveExportDirectory:(id)a3 toFile:(id)a4;
- (void)_completeAndCloseStreamingXML;
- (void)_exportElectrocardiogramsWithName:(id)a3 dateOfBirth:(id)a4;
- (void)_exportHealthRecords;
- (void)_getAllOrdinaryDataTypesOfCategory:(int64_t)a3 withArray:(id)a4;
- (void)_getAllOrdinaryDataTypesOfClass:(Class)a3 withArray:(id)a4;
- (void)_outputSerialQueue_beginWritingQuantityType:(id)a3 startDate:(id)a4 endDate:(id)a5;
- (void)_outputSerialQueue_finishWritingQuantityType:(id)a3 count:(unint64_t)a4;
- (void)_outputSerialQueue_writeSamples:(id)a3 forQuantityType:(id)a4;
- (void)_queryForDateRanges;
- (void)_queryForSamplesOfType:(id)a3 batchHandler:(id)a4;
- (void)_writeActivitySummaries;
- (void)_writeAudiogramType;
- (void)_writeCDAEntryWithValue:(id)a3 type:(id)a4 sourceName:(id)a5 sourceVersion:(id)a6 device:(id)a7 unit:(id)a8 metadata:(id)a9 startDate:(id)a10 endDate:(id)a11;
- (void)_writeCDAHeaderWithName:(id)a3 birthData:(id)a4 biologicalSex:(int64_t)a5;
- (void)_writeCDAOrganizerEnd;
- (void)_writeCDAResultsHeader;
- (void)_writeCDAResultsOrganizerStart;
- (void)_writeCDASectionFooter;
- (void)_writeCDAVitalHeader;
- (void)_writeCDAVitalsOrganizerStartWithStartDate:(id)a3 endDate:(id)a4;
- (void)_writeCategoryType:(id)a3;
- (void)_writeContactsRx:(id)a3;
- (void)_writeContactsRxSphere:(id)a3 cylinder:(id)a4 axis:(id)a5 add:(id)a6 baseCurve:(id)a7 diameter:(id)a8;
- (void)_writeCorrelationType:(id)a3;
- (void)_writeDataForActivitySummaries;
- (void)_writeDataForAudiogramType;
- (void)_writeDataForCategoryType:(id)a3;
- (void)_writeDataForCorrelationType:(id)a3;
- (void)_writeDataForHRVAndTachograms;
- (void)_writeDataForMedicalRecords:(id)a3;
- (void)_writeDataForVisionRx;
- (void)_writeDataForWorkoutRoutes:(id)a3 semaphore:(id)a4;
- (void)_writeDataForWorkoutType;
- (void)_writeGlassesRx:(id)a3;
- (void)_writeGlassesRxSphere:(id)a3 cylinder:(id)a4 axis:(id)a5 add:(id)a6 vertex:(id)a7 prismAmount:(id)a8 prismAngle:(id)a9 farPD:(id)a10 nearPD:(id)a11;
- (void)_writeHRVAndTachograms;
- (void)_writeHealthRecord:(id)a3 documentDirectory:(id)a4 fileNamesInUse:(id)a5;
- (void)_writeMedicalRecords;
- (void)_writePrescriptionType;
- (void)_writeQuantityType:(id)a3;
- (void)_writeVisionRx:(id)a3;
- (void)_writeVisionRxDevice:(id)a3 metadata:(id)a4;
- (void)_writeVisionRxSphere:(id)a3 cylinder:(id)a4 axis:(id)a5 add:(id)a6;
- (void)_writeVisionRxType:(unint64_t)a3 dateIssued:(id)a4 expirationDate:(id)a5;
- (void)_writeWorkoutRouteForWorkout:(id)a3 semaphore:(id)a4;
- (void)_writeWorkoutType;
- (void)_writeXMLActivitySummary:(id)a3 activeEnergyBurnedUnit:(id)a4;
- (void)_writeXMLAudiogramSensitivityPoint:(id)a3;
- (void)_writeXMLAudiogramStartWithAudiogram:(id)a3;
- (void)_writeXMLCorrelationStartWithType:(id)a3 sourceName:(id)a4 sourceVersion:(id)a5 device:(id)a6 metadata:(id)a7 creationDate:(id)a8 startDate:(id)a9 endDate:(id)a10;
- (void)_writeXMLMedicalRecordWithType:(id)a3 identifier:(id)a4 sourceName:(id)a5 sourceURL:(id)a6 fhirVersion:(id)a7 receivedDate:(id)a8 jsonFilePath:(id)a9;
- (void)_writeXMLMetadataEntries:(id)a3;
- (void)_writeXMLObjectAttributes:(id)a3;
- (void)_writeXMLPersonWithDateOfBirth:(id)a3 biologicalSex:(int64_t)a4 bloodType:(int64_t)a5 skinType:(int64_t)a6 cardioFitnessMedicationsUse:(id)a7;
- (void)_writeXMLRecordWithType:(id)a3 sourceName:(id)a4 sourceVersion:(id)a5 device:(id)a6 unit:(id)a7 metadata:(id)a8 hrvMetadataList:(id)a9 creationDate:(id)a10 startDate:(id)a11 endDate:(id)a12 value:(id)a13;
- (void)_writeXMLSampleAttributes:(id)a3;
- (void)_writeXMLWorkoutActivity:(id)a3;
- (void)_writeXMLWorkoutEvent:(id)a3;
- (void)_writeXMLWorkoutRouteFileReference:(id)a3;
- (void)_writeXMLWorkoutRouteStart:(id)a3;
- (void)_writeXMLWorkoutStartWithActivityType:(id)a3 duration:(id)a4 durationUnit:(id)a5 sourceName:(id)a6 sourceVersion:(id)a7 device:(id)a8 metadata:(id)a9 creationDate:(id)a10 startDate:(id)a11 endDate:(id)a12;
- (void)_writeXMLWorkoutStatistics:(id)a3;
- (void)cancelCurrentExport;
- (void)cleanupExportFilesWithError:(id)a3;
- (void)createExportFileWithCompletion:(id)a3;
@end

@implementation WDExportManager

- (WDExportManager)initWithProfile:(id)a3
{
  v5 = a3;
  v37.receiver = self;
  v37.super_class = WDExportManager;
  v6 = [(WDExportManager *)&v37 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_profile, a3);
    v8 = HKCreateSerialDispatchQueue();
    outputSerialQueue = v7->_outputSerialQueue;
    v7->_outputSerialQueue = v8;

    v10 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
    v11 = [v10 firstObject];
    documentsPath = v7->_documentsPath;
    v7->_documentsPath = v11;

    v13 = v7->_documentsPath;
    v14 = WDBundle();
    v15 = [v14 localizedStringForKey:@"EXPORT_DATA_DIRECTORY" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
    v16 = [(NSString *)v13 stringByAppendingPathComponent:v15];
    exportPath = v7->_exportPath;
    v7->_exportPath = v16;

    v18 = v7->_exportPath;
    v19 = WDBundle();
    v20 = [v19 localizedStringForKey:@"EXPORT_DATA_FILE_XML" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
    v21 = [v20 stringByAppendingString:@".xml"];
    v22 = [(NSString *)v18 stringByAppendingPathComponent:v21];
    filePath = v7->_filePath;
    v7->_filePath = v22;

    v24 = v7->_exportPath;
    v25 = WDBundle();
    v26 = [v25 localizedStringForKey:@"EXPORT_DATA_FILE_CDA" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
    v27 = [v26 stringByAppendingString:@".xml"];
    v28 = [(NSString *)v24 stringByAppendingPathComponent:v27];
    CDAFilePath = v7->_CDAFilePath;
    v7->_CDAFilePath = v28;

    v30 = v7->_documentsPath;
    v31 = WDBundle();
    v32 = [v31 localizedStringForKey:@"EXPORT_DATE_FILE_ZIP" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
    v33 = [v32 stringByAppendingString:@".zip"];
    v34 = [(NSString *)v30 stringByAppendingPathComponent:v33];
    archivePath = v7->_archivePath;
    v7->_archivePath = v34;

    [(WDExportManager *)v7 setExportInProgress:0];
    [(WDExportManager *)v7 setExportFailed:0];
  }

  return v7;
}

- (void)cancelCurrentExport
{
  if ([(WDExportManager *)self exportInProgress])
  {

    [(WDExportManager *)self setExportFailed:1];
  }
}

- (void)cleanupExportFilesWithError:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  if ([v5 fileExistsAtPath:self->_exportPath])
  {
    exportPath = self->_exportPath;
    v11 = v4;
    [v5 removeItemAtPath:exportPath error:&v11];
    v7 = v11;

    v4 = v7;
  }

  if ([v5 fileExistsAtPath:self->_archivePath])
  {
    archivePath = self->_archivePath;
    v10 = v4;
    [v5 removeItemAtPath:archivePath error:&v10];
    v9 = v10;

    v4 = v9;
  }
}

- (void)createExportFileWithCompletion:(id)a3
{
  v4 = a3;
  if (![(WDExportManager *)self exportInProgress])
  {
    WeakRetained = objc_loadWeakRetained(&self->_applicationProvider);
    v6 = [WeakRetained application];
    [v6 setIdleTimerDisabled:1];

    [(WDExportManager *)self setExportInProgress:1];
    v7 = MEMORY[0x277CBEBB0];
    v8 = [MEMORY[0x277CBEBB0] localTimeZone];
    v9 = [v7 timeZoneForSecondsFromGMT:{objc_msgSend(v8, "secondsFromGMT")}];

    v10 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
    v11 = objc_opt_new();
    xmlDateFormatter = self->_xmlDateFormatter;
    self->_xmlDateFormatter = v11;

    [(NSDateFormatter *)self->_xmlDateFormatter setLocale:v10];
    [(NSDateFormatter *)self->_xmlDateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss ZZZ"];
    [(NSDateFormatter *)self->_xmlDateFormatter setTimeZone:v9];
    v13 = objc_opt_new();
    cdaDateFormatter = self->_cdaDateFormatter;
    self->_cdaDateFormatter = v13;

    [(NSDateFormatter *)self->_cdaDateFormatter setLocale:v10];
    [(NSDateFormatter *)self->_cdaDateFormatter setDateFormat:@"yyyyMMddHHmmssZZZ"];
    [(NSDateFormatter *)self->_cdaDateFormatter setTimeZone:v9];
    v15 = v4;
    HKDispatchAsyncOnGlobalConcurrentQueue();
  }
}

void __50__WDExportManager_createExportFileWithCompletion___block_invoke(uint64_t a1)
{
  v124[1] = *MEMORY[0x277D85DE8];
  v89 = [MEMORY[0x277CCAA00] defaultManager];
  v2 = (a1 + 32);
  if ([v89 fileExistsAtPath:*(*(a1 + 32) + 80)])
  {
    v3 = *(*v2 + 10);
    v119 = 0;
    [v89 removeItemAtPath:v3 error:&v119];
    v4 = v119;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(*v2 + 10);
  v6 = *MEMORY[0x277CCA190];
  v7 = *MEMORY[0x277CCA1B0];
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObject:*MEMORY[0x277CCA190] forKey:*MEMORY[0x277CCA1B0]];
  [v89 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:v8 error:0];

  v9 = *(*v2 + 11);
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v6 forKey:v7];
  [v89 createFileAtPath:v9 contents:0 attributes:v10];

  v11 = *(*v2 + 12);
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v6 forKey:v7];
  [v89 createFileAtPath:v11 contents:0 attributes:v12];

  v13 = *(*v2 + 13);
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v6 forKey:v7];
  [v89 createFileAtPath:v13 contents:0 attributes:v14];

  if ([v89 fileExistsAtPath:*(*v2 + 11)] && (objc_msgSend(v89, "fileExistsAtPath:", *(*v2 + 12)) & 1) != 0)
  {
    v15 = v4;
  }

  else
  {
    _HKInitializeLogging();
    v16 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __50__WDExportManager_createExportFileWithCompletion___block_invoke_cold_1(a1 + 32);
    }

    v123 = *MEMORY[0x277CCA450];
    v124[0] = @"Export file(s) could not be created.";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v124 forKeys:&v123 count:1];
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HealthExport" code:100 userInfo:v17];

    (*(*(a1 + 40) + 16))();
  }

  v18 = dispatch_semaphore_create(0);
  v19 = *(*v2 + 5);
  *(*v2 + 5) = v18;

  [*v2 _queryForDateRanges];
  *(*v2 + 3) = xmlNewTextWriterFilename([*(*v2 + 11) UTF8String], 0);
  xmlTextWriterSetIndent(*(*v2 + 3), 1);
  xmlTextWriterSetIndentString(*(*v2 + 3), " ");
  xmlTextWriterStartDocument(*(*v2 + 3), 0, "UTF-8", 0);
  xmlTextWriterWriteDTD(*(*v2 + 3), "HealthData", 0, 0, aHealthkitExpor);
  xmlTextWriterStartElement(*(*v2 + 3), "HealthData");
  v20 = *(*v2 + 3);
  v21 = [MEMORY[0x277CBEAF8] currentLocale];
  v22 = [v21 localeIdentifier];
  v23 = v22;
  xmlTextWriterWriteAttribute(v20, "locale", [v22 UTF8String]);

  *(*v2 + 4) = xmlNewTextWriterFilename([*(*v2 + 12) UTF8String], 0);
  xmlTextWriterSetIndent(*(*v2 + 4), 1);
  xmlTextWriterSetIndentString(*(*v2 + 4), " ");
  xmlTextWriterStartDocument(*(*v2 + 4), 0, 0, 0);
  xmlTextWriterStartPI(*(*v2 + 4), "xml-stylesheet");
  xmlTextWriterWriteString(*(*v2 + 4), "type=text/xsl");
  xmlTextWriterWriteString(*(*v2 + 4), " ");
  xmlTextWriterWriteString(*(*v2 + 4), "href=CDA.xsl");
  xmlTextWriterEndPI(*(*v2 + 4));
  xmlTextWriterStartElement(*(*v2 + 4), "ClinicalDocument");
  xmlTextWriterWriteAttributeNS(*(*v2 + 4), "xmlns", "xsi", 0, "http://www.w3.org/2001/XMLSchema-instance");
  xmlTextWriterWriteAttributeNS(*(*v2 + 4), "xsi", "schemaLocation", 0, "urn:hl7-org:v3 ../../../CDA%20R2/cda-schemas-and-samples/infrastructure/cda/CDA.xsd");
  xmlTextWriterWriteAttribute(*(*v2 + 4), "xmlns", "urn:hl7-org:v3");
  xmlTextWriterWriteAttributeNS(*(*v2 + 4), "xmlns", "cda", 0, "urn:hl7-org:v3");
  xmlTextWriterWriteAttributeNS(*(*v2 + 4), "xmlns", "sdtc", 0, "urn:l7-org:sdtc");
  xmlTextWriterWriteAttributeNS(*(*v2 + 4), "xmlns", "fhir", 0, "http://hl7.org/fhir/v3");

  v24 = [*(*v2 + 1) healthStore];
  v118 = 0;
  v84 = [v24 dateOfBirthComponentsWithError:&v118];
  v25 = v118;

  v26 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
  v27 = [v26 dateFromComponents:v84];

  if (!v27 && v25)
  {
    _HKInitializeLogging();
    v28 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      __50__WDExportManager_createExportFileWithCompletion___block_invoke_cold_2();
    }
  }

  v29 = [*(*v2 + 1) healthStore];
  v117 = 0;
  v30 = [v29 biologicalSexWithError:&v117];
  v31 = v117;

  if (!v30 && v31)
  {
    _HKInitializeLogging();
    v32 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      __50__WDExportManager_createExportFileWithCompletion___block_invoke_cold_3();
    }
  }

  v33 = [*(*v2 + 1) healthStore];
  v116 = 0;
  v86 = [v33 bloodTypeWithError:&v116];
  v34 = v116;

  if (!v86 && v34)
  {
    _HKInitializeLogging();
    v35 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      __50__WDExportManager_createExportFileWithCompletion___block_invoke_cold_4();
    }
  }

  v36 = [*(*v2 + 1) healthStore];
  v115 = 0;
  v85 = [v36 fitzpatrickSkinTypeWithError:&v115];
  v37 = v115;

  if (!v85 && v37)
  {
    _HKInitializeLogging();
    v38 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      __50__WDExportManager_createExportFileWithCompletion___block_invoke_cold_5();
    }
  }

  v39 = [*(*v2 + 1) healthStore];
  v114 = 0;
  v40 = [v39 _cardioFitnessMedicationsUseWithError:&v114];
  v87 = v114;

  if (!v40 && v87)
  {
    _HKInitializeLogging();
    v41 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      __50__WDExportManager_createExportFileWithCompletion___block_invoke_cold_6();
    }
  }

  v88 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([v40 takingCalciumChannelBlockers])
  {
    v42 = WDBundle();
    v43 = [v42 localizedStringForKey:@"CALCIUM_CHANNEL_USE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
    [v88 addObject:v43];
  }

  if ([v40 takingBetaBlockers])
  {
    v44 = WDBundle();
    v45 = [v44 localizedStringForKey:@"BETA_BLOCKERS" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
    [v88 addObject:v45];
  }

  if (([v40 medicationsAreSet] & 1) == 0)
  {
    v46 = WDBundle();
    v47 = [v46 localizedStringForKey:@"NONE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
    [v88 addObject:v47];
  }

  v83 = [v88 componentsJoinedByString:{@", "}];
  [*v2 _writeXMLPersonWithDateOfBirth:v27 biologicalSex:objc_msgSend(v30 bloodType:"biologicalSex") skinType:objc_msgSend(v86 cardioFitnessMedicationsUse:{"bloodType"), objc_msgSend(v85, "skinType"), v83}];
  v108 = 0;
  v109 = &v108;
  v110 = 0x3032000000;
  v111 = __Block_byref_object_copy_;
  v112 = __Block_byref_object_dispose_;
  v113 = 0;
  v48 = objc_alloc(MEMORY[0x277CCD5E8]);
  v49 = [*(*v2 + 1) healthStore];
  v50 = [v48 initWithHealthStore:v49];

  v104[0] = MEMORY[0x277D85DD0];
  v104[1] = 3221225472;
  v104[2] = __50__WDExportManager_createExportFileWithCompletion___block_invoke_370;
  v104[3] = &unk_2796E7170;
  v51 = *v2;
  v107 = &v108;
  v104[4] = v51;
  v82 = v27;
  v105 = v82;
  v81 = v30;
  v106 = v81;
  [v50 fetchMedicalIDDataWithCompletion:v104];
  dispatch_semaphore_wait(*(*v2 + 5), 0xFFFFFFFFFFFFFFFFLL);
  v52 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v53 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v54 = *(*v2 + 6);
  *(*v2 + 6) = v53;

  [*v2 _getAllOrdinaryDataTypesOfCategory:1 withArray:*(*v2 + 6)];
  [v52 addObjectsFromArray:*(*v2 + 6)];
  v55 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v56 = *(*v2 + 7);
  *(*v2 + 7) = v55;

  [*v2 _getAllOrdinaryDataTypesOfCategory:0 withArray:*(*v2 + 7)];
  [v52 addObjectsFromArray:*(*v2 + 7)];
  [*v2 _getAllOrdinaryDataTypesOfCategory:2 withArray:v52];
  if (([*v2 exportFailed] & 1) == 0)
  {
    v57 = a1;
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v58 = v52;
    v59 = [v58 countByEnumeratingWithState:&v100 objects:v122 count:16];
    if (v59)
    {
      v60 = *v101;
LABEL_44:
      v61 = 0;
      while (1)
      {
        if (*v101 != v60)
        {
          objc_enumerationMutation(v58);
        }

        [*v2 _writeQuantityType:*(*(&v100 + 1) + 8 * v61)];
        if ([*v2 exportFailed])
        {
          break;
        }

        if (v59 == ++v61)
        {
          v59 = [v58 countByEnumeratingWithState:&v100 objects:v122 count:16];
          if (v59)
          {
            goto LABEL_44;
          }

          break;
        }
      }
    }

    a1 = v57;
  }

  if (([*v2 exportFailed] & 1) == 0)
  {
    v62 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [*v2 _getAllOrdinaryDataTypesOfClass:objc_opt_class() withArray:v62];
    v63 = a1;
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v64 = v62;
    v65 = [v64 countByEnumeratingWithState:&v96 objects:v121 count:16];
    if (v65)
    {
      v66 = *v97;
LABEL_54:
      v67 = 0;
      while (1)
      {
        if (*v97 != v66)
        {
          objc_enumerationMutation(v64);
        }

        [*v2 _writeCategoryType:*(*(&v96 + 1) + 8 * v67)];
        dispatch_semaphore_wait(*(*v2 + 5), 0xFFFFFFFFFFFFFFFFLL);
        if ([*v2 exportFailed])
        {
          break;
        }

        if (v65 == ++v67)
        {
          v65 = [v64 countByEnumeratingWithState:&v96 objects:v121 count:16];
          if (v65)
          {
            goto LABEL_54;
          }

          break;
        }
      }
    }

    a1 = v63;
  }

  if (([*v2 exportFailed] & 1) == 0)
  {
    v68 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [*v2 _getAllOrdinaryDataTypesOfClass:objc_opt_class() withArray:v68];
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v69 = v68;
    v70 = [v69 countByEnumeratingWithState:&v92 objects:v120 count:16];
    if (v70)
    {
      v71 = *v93;
LABEL_64:
      v72 = 0;
      while (1)
      {
        if (*v93 != v71)
        {
          objc_enumerationMutation(v69);
        }

        [*v2 _writeCorrelationType:*(*(&v92 + 1) + 8 * v72)];
        dispatch_semaphore_wait(*(*v2 + 5), 0xFFFFFFFFFFFFFFFFLL);
        if ([*v2 exportFailed])
        {
          break;
        }

        if (v70 == ++v72)
        {
          v70 = [v69 countByEnumeratingWithState:&v92 objects:v120 count:16];
          if (v70)
          {
            goto LABEL_64;
          }

          break;
        }
      }
    }
  }

  if (([*v2 exportFailed] & 1) == 0)
  {
    [*v2 _writeAudiogramType];
    dispatch_semaphore_wait(*(*v2 + 5), 0xFFFFFFFFFFFFFFFFLL);
  }

  if (([*v2 exportFailed] & 1) == 0)
  {
    [*v2 _writeWorkoutType];
    dispatch_semaphore_wait(*(*v2 + 5), 0xFFFFFFFFFFFFFFFFLL);
  }

  if (([*v2 exportFailed] & 1) == 0)
  {
    [*v2 _writeActivitySummaries];
    dispatch_semaphore_wait(*(*v2 + 5), 0xFFFFFFFFFFFFFFFFLL);
  }

  if (([*v2 exportFailed] & 1) == 0)
  {
    [*v2 _writeHRVAndTachograms];
    dispatch_semaphore_wait(*(*v2 + 5), 0xFFFFFFFFFFFFFFFFLL);
  }

  if (([*v2 exportFailed] & 1) == 0)
  {
    [*v2 _writePrescriptionType];
    dispatch_semaphore_wait(*(*v2 + 5), 0xFFFFFFFFFFFFFFFFLL);
  }

  if (([*v2 exportFailed] & 1) == 0)
  {
    [*v2 _writeMedicalRecords];
    dispatch_semaphore_wait(*(*v2 + 5), 0xFFFFFFFFFFFFFFFFLL);
  }

  [*v2 _completeAndCloseStreamingXML];
  [*v2 _exportHealthRecords];
  [*v2 _exportElectrocardiogramsWithName:v109[5] dateOfBirth:v82];
  v73 = [MEMORY[0x277CCABD8] mainQueue];
  v91[0] = MEMORY[0x277D85DD0];
  v91[1] = 3221225472;
  v91[2] = __50__WDExportManager_createExportFileWithCompletion___block_invoke_3;
  v91[3] = &unk_2796E6D18;
  v91[4] = *v2;
  [v73 addOperationWithBlock:v91];

  v74 = [*v2 exportFailed];
  v75 = *v2;
  if (v74)
  {
    [v75 cleanupExportFilesWithError:v87];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    [v75 _archiveExportDirectory:v75[10] toFile:v75[13]];
    v76 = *(a1 + 40);
    v77 = [MEMORY[0x277CBEBC0] fileURLWithPath:*(*(a1 + 32) + 104)];
    (*(v76 + 16))(v76, v77, v87);
  }

  v78 = *v2;
  v79 = *(*v2 + 2);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__WDExportManager_createExportFileWithCompletion___block_invoke_4;
  block[3] = &unk_2796E6D18;
  block[4] = v78;
  dispatch_async(v79, block);

  _Block_object_dispose(&v108, 8);
  v80 = *MEMORY[0x277D85DE8];
}

void __50__WDExportManager_createExportFileWithCompletion___block_invoke_370(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 name];
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 16);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__WDExportManager_createExportFileWithCompletion___block_invoke_2;
  v11[3] = &unk_2796E7148;
  v11[4] = v8;
  v12 = v3;
  v13 = v7;
  v14 = *(a1 + 48);
  v10 = v3;
  dispatch_async(v9, v11);
  dispatch_semaphore_signal(*(*(a1 + 32) + 40));
}

void __50__WDExportManager_createExportFileWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) name];
  [v2 _writeCDAHeaderWithName:v3 birthData:*(a1 + 48) biologicalSex:{objc_msgSend(*(a1 + 56), "biologicalSex")}];
}

void __50__WDExportManager_createExportFileWithCompletion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 144));
  v1 = [WeakRetained application];
  [v1 setIdleTimerDisabled:0];
}

uint64_t __50__WDExportManager_createExportFileWithCompletion___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setExportInProgress:0];
  v2 = *(a1 + 32);

  return [v2 setExportFailed:0];
}

+ (id)allSupportedMedicalTypes
{
  if (allSupportedMedicalTypes_onceToken != -1)
  {
    +[WDExportManager allSupportedMedicalTypes];
  }

  v3 = allSupportedMedicalTypes_sampleTypes;

  return v3;
}

uint64_t __43__WDExportManager_allSupportedMedicalTypes__block_invoke()
{
  v0 = [MEMORY[0x277CCD8D8] medicalRecordTypesWithOptions:3];
  v1 = allSupportedMedicalTypes_sampleTypes;
  allSupportedMedicalTypes_sampleTypes = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)_queryForDateRanges
{
  v3 = dispatch_semaphore_create(0);
  v4 = objc_alloc(MEMORY[0x277CCDD80]);
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __38__WDExportManager__queryForDateRanges__block_invoke;
  v12 = &unk_2796E71C0;
  v13 = self;
  v14 = v3;
  v5 = v3;
  v6 = [v4 initWithDateIntervalHandler:&v9];
  v7 = [(WDProfile *)self->_profile healthStore:v9];
  [v7 executeQuery:v6];

  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v8 = [(WDProfile *)self->_profile healthStore];
  [v8 stopQuery:v6];
}

void __38__WDExportManager__queryForDateRanges__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 32);
  if (v7)
  {
    objc_storeStrong(v9 + 16, a3);
  }

  else
  {
    [v9 setExportFailed:1];
    _HKInitializeLogging();
    v10 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __38__WDExportManager__queryForDateRanges__block_invoke_cold_1();
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)_queryForSamplesOfType:(id)a3 batchHandler:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy_;
  v39 = __Block_byref_object_dispose_;
  v40 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v8 = dispatch_semaphore_create(0);
  do
  {
    _HKInitializeLogging();
    v9 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v36[5];
      *buf = 138543618;
      v42 = v6;
      v43 = 2114;
      v44 = v10;
      _os_log_impl(&dword_251E85000, v9, OS_LOG_TYPE_DEFAULT, "Querying for %{public}@ starting with anchor: %{public}@", buf, 0x16u);
    }

    v11 = objc_alloc(MEMORY[0x277CCCFF0]);
    v12 = v36[5];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __55__WDExportManager__queryForSamplesOfType_batchHandler___block_invoke;
    v20[3] = &unk_2796E71E8;
    v13 = v6;
    v21 = v13;
    v24 = &v31;
    v25 = &v27;
    v26 = &v35;
    v14 = v7;
    v23 = v14;
    v15 = v8;
    v22 = v15;
    v16 = [v11 initWithType:v13 predicate:0 anchor:v12 limit:2000 resultsHandler:v20];
    v17 = [(WDProfile *)self->_profile healthStore];
    [v17 executeQuery:v16];

    dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
    v18 = [(WDProfile *)self->_profile healthStore];
    [v18 stopQuery:v16];
  }

  while ((v32[3] & 1) == 0 && ![(WDExportManager *)self exportFailed]);
  if (*(v28 + 24) == 1)
  {
    [(WDExportManager *)self setExportFailed:1];
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);

  v19 = *MEMORY[0x277D85DE8];
}

void __55__WDExportManager__queryForSamplesOfType_batchHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v21 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  _HKInitializeLogging();
  v14 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 134218242;
    v18 = [v10 count];
    v19 = 2114;
    v20 = v12;
    _os_log_impl(&dword_251E85000, v14, OS_LOG_TYPE_DEFAULT, "Got %lld samples with anchor: %{public}@", &v17, 0x16u);
  }

  if (v13)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
    {
      __55__WDExportManager__queryForSamplesOfType_batchHandler___block_invoke_cold_1(a1);
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
    v15 = *(*(a1 + 64) + 8);
  }

  else
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), a5);
    if ([v10 count])
    {
      (*(*(a1 + 48) + 16))();
      goto LABEL_11;
    }

    if ([v11 count])
    {
      goto LABEL_11;
    }

    v15 = *(*(a1 + 56) + 8);
  }

  *(v15 + 24) = 1;
LABEL_11:
  dispatch_semaphore_signal(*(a1 + 40));

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_writeQuantityType:(id)a3
{
  v4 = a3;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v15[3] = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __38__WDExportManager__writeQuantityType___block_invoke;
  v10[3] = &unk_2796E7238;
  v12 = &v16;
  v13 = v15;
  v10[4] = self;
  v14 = v20;
  v5 = v4;
  v11 = v5;
  [(WDExportManager *)self _queryForSamplesOfType:v5 batchHandler:v10];
  if (v17[3] && ![(WDExportManager *)self exportFailed])
  {
    outputSerialQueue = self->_outputSerialQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __38__WDExportManager__writeQuantityType___block_invoke_4;
    v7[3] = &unk_2796E7260;
    v7[4] = self;
    v8 = v5;
    v9 = &v16;
    dispatch_async(outputSerialQueue, v7);
  }

  dispatch_sync(self->_outputSerialQueue, &__block_literal_global_386);

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v20, 8);
}

void __38__WDExportManager__writeQuantityType___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  *(*(a1[6] + 8) + 24) += [v3 count];
  *(*(a1[7] + 8) + 24) += [v3 count];
  v5 = a1[4];
  v4 = a1[5];
  v6 = *(v5 + 16);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__WDExportManager__writeQuantityType___block_invoke_2;
  v8[3] = &unk_2796E7210;
  v11 = a1[8];
  v8[4] = v5;
  v9 = v4;
  v7 = v3;
  v10 = v7;
  dispatch_async(v6, v8);
  if (*(*(a1[7] + 8) + 24) >> 4 >= 0x271uLL)
  {
    dispatch_sync(*(a1[4] + 16), &__block_literal_global_383);
    *(*(a1[7] + 8) + 24) = 0;
  }
}

uint64_t __38__WDExportManager__writeQuantityType___block_invoke_2(void *a1)
{
  v2 = *(a1[7] + 8);
  if ((*(v2 + 24) & 1) == 0)
  {
    *(v2 + 24) = 1;
    v3 = [*(a1[4] + 128) objectForKeyedSubscript:a1[5]];
    v4 = a1[4];
    v5 = a1[5];
    v6 = [v3 startDate];
    v7 = [v3 endDate];
    [v4 _outputSerialQueue_beginWritingQuantityType:v5 startDate:v6 endDate:v7];
  }

  v9 = a1[5];
  v8 = a1[6];
  v10 = a1[4];

  return [v10 _outputSerialQueue_writeSamples:v8 forQuantityType:v9];
}

- (void)_writeCategoryType:(id)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CCAC98]);
  v6 = [v5 initWithKey:*MEMORY[0x277CCCD38] ascending:1];
  v7 = objc_alloc(MEMORY[0x277CCD8D0]);
  v19[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __38__WDExportManager__writeCategoryType___block_invoke;
  v16 = &unk_2796E7288;
  v17 = self;
  v18 = v4;
  v9 = v4;
  v10 = [v7 initWithSampleType:v9 predicate:0 limit:0 sortDescriptors:v8 resultsHandler:&v13];

  v11 = [(WDProfile *)self->_profile healthStore:v13];
  [v11 executeQuery:v10];

  v12 = *MEMORY[0x277D85DE8];
}

void __38__WDExportManager__writeCategoryType___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = *(a1 + 32);
  if (v6 || !a4)
  {
    v8 = v7[2];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__WDExportManager__writeCategoryType___block_invoke_2;
    block[3] = &unk_2796E6C00;
    block[4] = v7;
    v10 = v6;
    v11 = *(a1 + 40);
    dispatch_async(v8, block);
  }

  else
  {
    [v7 setExportFailed:1];
    dispatch_semaphore_signal(*(*(a1 + 32) + 40));
  }
}

uint64_t __38__WDExportManager__writeCategoryType___block_invoke_2(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 64), *(a1 + 40));
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 _writeDataForCategoryType:v3];
}

- (void)_writeCorrelationType:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CCD248]);
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __41__WDExportManager__writeCorrelationType___block_invoke;
  v12 = &unk_2796E72B0;
  v13 = self;
  v14 = v4;
  v6 = v4;
  v7 = [v5 initWithType:v6 predicate:0 samplePredicates:0 completion:&v9];
  v8 = [(WDProfile *)self->_profile healthStore:v9];
  [v8 executeQuery:v7];
}

void __41__WDExportManager__writeCorrelationType___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = *(a1 + 32);
  if (v6 || !a4)
  {
    v8 = v7[2];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__WDExportManager__writeCorrelationType___block_invoke_2;
    block[3] = &unk_2796E6C00;
    block[4] = v7;
    v10 = v6;
    v11 = *(a1 + 40);
    dispatch_async(v8, block);
  }

  else
  {
    [v7 setExportFailed:1];
    dispatch_semaphore_signal(*(*(a1 + 32) + 40));
  }
}

uint64_t __41__WDExportManager__writeCorrelationType___block_invoke_2(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 64), *(a1 + 40));
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 _writeDataForCorrelationType:v3];
}

- (void)_writeAudiogramType
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CCAC98]);
  v4 = [v3 initWithKey:*MEMORY[0x277CCCD38] ascending:1];
  v5 = objc_alloc(MEMORY[0x277CCD8D0]);
  v6 = [MEMORY[0x277CCD720] audiogramSampleType];
  v12[0] = v4;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __38__WDExportManager__writeAudiogramType__block_invoke;
  v11[3] = &unk_2796E6FC8;
  v11[4] = self;
  v8 = [v5 initWithSampleType:v6 predicate:0 limit:0 sortDescriptors:v7 resultsHandler:v11];

  v9 = [(WDProfile *)self->_profile healthStore];
  [v9 executeQuery:v8];

  v10 = *MEMORY[0x277D85DE8];
}

void __38__WDExportManager__writeAudiogramType__block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = *(a1 + 32);
  if (v6 || !a4)
  {
    v8 = v7[2];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __38__WDExportManager__writeAudiogramType__block_invoke_2;
    v9[3] = &unk_2796E6BD8;
    v9[4] = v7;
    v10 = v6;
    dispatch_async(v8, v9);
  }

  else
  {
    [v7 setExportFailed:1];
    dispatch_semaphore_signal(*(*(a1 + 32) + 40));
  }
}

uint64_t __38__WDExportManager__writeAudiogramType__block_invoke_2(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 64), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 _writeDataForAudiogramType];
}

- (void)_writeWorkoutType
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CCAC98]);
  v4 = [v3 initWithKey:*MEMORY[0x277CCCD38] ascending:1];
  v5 = objc_alloc(MEMORY[0x277CCD8D0]);
  v6 = [MEMORY[0x277CCD720] workoutType];
  v12[0] = v4;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __36__WDExportManager__writeWorkoutType__block_invoke;
  v11[3] = &unk_2796E6FC8;
  v11[4] = self;
  v8 = [v5 initWithSampleType:v6 predicate:0 limit:0 sortDescriptors:v7 resultsHandler:v11];

  v9 = [(WDProfile *)self->_profile healthStore];
  [v9 executeQuery:v8];

  v10 = *MEMORY[0x277D85DE8];
}

void __36__WDExportManager__writeWorkoutType__block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = *(a1 + 32);
  if (v6 || !a4)
  {
    v8 = v7[2];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __36__WDExportManager__writeWorkoutType__block_invoke_2;
    v9[3] = &unk_2796E6BD8;
    v9[4] = v7;
    v10 = v6;
    dispatch_async(v8, v9);
  }

  else
  {
    [v7 setExportFailed:1];
    dispatch_semaphore_signal(*(*(a1 + 32) + 40));
  }
}

uint64_t __36__WDExportManager__writeWorkoutType__block_invoke_2(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 64), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 _writeDataForWorkoutType];
}

- (void)_writeWorkoutRouteForWorkout:(id)a3 semaphore:(id)a4
{
  v23[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = HKCreateSerialDispatchQueue();
  v9 = objc_alloc(MEMORY[0x277CCAC98]);
  v10 = [v9 initWithKey:*MEMORY[0x277CCCD38] ascending:1];
  v11 = objc_alloc(MEMORY[0x277CCD8D0]);
  v12 = [MEMORY[0x277CCD920] workoutRouteType];
  v13 = [MEMORY[0x277CCD838] predicateForObjectsFromWorkout:v7];

  v23[0] = v10;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __58__WDExportManager__writeWorkoutRouteForWorkout_semaphore___block_invoke;
  v20[3] = &unk_2796E72D8;
  v20[4] = self;
  v21 = v6;
  v22 = v8;
  v15 = v8;
  v16 = v6;
  v17 = [v11 initWithSampleType:v12 predicate:v13 limit:0 sortDescriptors:v14 resultsHandler:v20];

  v18 = [(WDProfile *)self->_profile healthStore];
  [v18 executeQuery:v17];

  v19 = *MEMORY[0x277D85DE8];
}

void __58__WDExportManager__writeWorkoutRouteForWorkout_semaphore___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = v6;
  if (v6 || !a4)
  {
    v8 = *(a1 + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__WDExportManager__writeWorkoutRouteForWorkout_semaphore___block_invoke_2;
    block[3] = &unk_2796E6C00;
    block[4] = *(a1 + 32);
    v10 = v6;
    v11 = *(a1 + 40);
    dispatch_async(v8, block);
  }

  else
  {
    [*(a1 + 32) setExportFailed:1];
    dispatch_semaphore_signal(*(a1 + 40));
  }
}

- (void)_writeActivitySummaries
{
  v3 = objc_alloc(MEMORY[0x277CCCFB8]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__WDExportManager__writeActivitySummaries__block_invoke;
  v6[3] = &unk_2796E7300;
  v6[4] = self;
  v4 = [v3 initWithPredicate:0 resultsHandler:v6];
  v5 = [(WDProfile *)self->_profile healthStore];
  [v5 executeQuery:v4];
}

void __42__WDExportManager__writeActivitySummaries__block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = *(a1 + 32);
  if (v6 || !a4)
  {
    v8 = v7[2];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __42__WDExportManager__writeActivitySummaries__block_invoke_2;
    v9[3] = &unk_2796E6BD8;
    v9[4] = v7;
    v10 = v6;
    dispatch_async(v8, v9);
  }

  else
  {
    [v7 setExportFailed:1];
    dispatch_semaphore_signal(*(*(a1 + 32) + 40));
  }
}

uint64_t __42__WDExportManager__writeActivitySummaries__block_invoke_2(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 64), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 _writeDataForActivitySummaries];
}

- (void)_writeHRVAndTachograms
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CCAC98]);
  v4 = [v3 initWithKey:*MEMORY[0x277CCCD38] ascending:1];
  v5 = objc_alloc(MEMORY[0x277CCD8D0]);
  v6 = [MEMORY[0x277CCD830] dataTypeWithCode:139];
  v12[0] = v4;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __41__WDExportManager__writeHRVAndTachograms__block_invoke;
  v11[3] = &unk_2796E6FC8;
  v11[4] = self;
  v8 = [v5 initWithSampleType:v6 predicate:0 limit:0 sortDescriptors:v7 resultsHandler:v11];

  v9 = [(WDProfile *)self->_profile healthStore];
  [v9 executeQuery:v8];

  v10 = *MEMORY[0x277D85DE8];
}

void __41__WDExportManager__writeHRVAndTachograms__block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = *(a1 + 32);
  if (v6 || !a4)
  {
    v8 = v7[2];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __41__WDExportManager__writeHRVAndTachograms__block_invoke_2;
    v9[3] = &unk_2796E6BD8;
    v9[4] = v7;
    v10 = v6;
    dispatch_async(v8, v9);
  }

  else
  {
    [v7 setExportFailed:1];
    dispatch_semaphore_signal(*(*(a1 + 32) + 40));
  }
}

uint64_t __41__WDExportManager__writeHRVAndTachograms__block_invoke_2(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 64), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 _writeDataForHRVAndTachograms];
}

- (void)_writePrescriptionType
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CCAC98]);
  v4 = [v3 initWithKey:*MEMORY[0x277CCCD38] ascending:1];
  v5 = objc_alloc(MEMORY[0x277CCD8D0]);
  v6 = [MEMORY[0x277CCD7A8] visionPrescriptionType];
  v12[0] = v4;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __41__WDExportManager__writePrescriptionType__block_invoke;
  v11[3] = &unk_2796E6FC8;
  v11[4] = self;
  v8 = [v5 initWithSampleType:v6 predicate:0 limit:0 sortDescriptors:v7 resultsHandler:v11];

  v9 = [(WDProfile *)self->_profile healthStore];
  [v9 executeQuery:v8];

  v10 = *MEMORY[0x277D85DE8];
}

void __41__WDExportManager__writePrescriptionType__block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = *(a1 + 32);
  if (v6 || !a4)
  {
    v8 = v7[2];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __41__WDExportManager__writePrescriptionType__block_invoke_2;
    v9[3] = &unk_2796E6BD8;
    v9[4] = v7;
    v10 = v6;
    dispatch_async(v8, v9);
  }

  else
  {
    [v7 setExportFailed:1];
    dispatch_semaphore_signal(*(*(a1 + 32) + 40));
  }
}

uint64_t __41__WDExportManager__writePrescriptionType__block_invoke_2(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 64), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 _writeDataForVisionRx];
}

- (void)_writeMedicalRecords
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CCAC98]);
  v19 = [v3 initWithKey:*MEMORY[0x277CCCD38] ascending:1];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [objc_opt_class() allSupportedMedicalTypes];
  v4 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        if ([(WDExportManager *)self exportFailed])
        {
          _HKInitializeLogging();
          v16 = HKLogWellnessDashboard();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            [WDExportManager _writeMedicalRecords];
          }

          goto LABEL_13;
        }

        v9 = dispatch_semaphore_create(0);
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __39__WDExportManager__writeMedicalRecords__block_invoke;
        v20[3] = &unk_2796E72D8;
        v20[4] = self;
        v20[5] = v8;
        v21 = v9;
        v10 = v9;
        v11 = MEMORY[0x253092270](v20);
        v12 = objc_alloc(MEMORY[0x277CCD8D0]);
        v26 = v19;
        v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
        v14 = [v12 initWithSampleType:v8 predicate:0 limit:0 sortDescriptors:v13 resultsHandler:v11];

        v15 = [(WDProfile *)self->_profile healthStore];
        [v15 executeQuery:v14];

        dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
      }

      v5 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  dispatch_semaphore_signal(self->_sem);
  v17 = *MEMORY[0x277D85DE8];
}

void __39__WDExportManager__writeMedicalRecords__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  if (v6 || !v7)
  {
    v10 = v8[2];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__WDExportManager__writeMedicalRecords__block_invoke_400;
    block[3] = &unk_2796E6C00;
    block[4] = v8;
    v12 = v6;
    v13 = *(a1 + 48);
    dispatch_async(v10, block);
  }

  else
  {
    [v8 setExportFailed:1];
    _HKInitializeLogging();
    v9 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __39__WDExportManager__writeMedicalRecords__block_invoke_cold_1(a1);
    }

    dispatch_semaphore_signal(*(a1 + 48));
  }
}

intptr_t __39__WDExportManager__writeMedicalRecords__block_invoke_400(uint64_t a1)
{
  [*(a1 + 32) _writeDataForMedicalRecords:*(a1 + 40)];
  v2 = *(a1 + 48);

  return dispatch_semaphore_signal(v2);
}

- (void)_outputSerialQueue_beginWritingQuantityType:(id)a3 startDate:(id)a4 endDate:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(NSMutableArray *)self->_resultsTypes firstObject];

  if (v10 == v13)
  {
    [(WDExportManager *)self _writeCDAResultsHeader];
  }

  v11 = [(NSMutableArray *)self->_vitalsTypes firstObject];

  v12 = v13;
  if (v11 == v13)
  {
    [(WDExportManager *)self _writeCDAVitalHeader];
    v12 = v13;
  }

  if (getCategoryOfType(v12))
  {
    if (getCategoryOfType(v13) == 1)
    {
      [(WDExportManager *)self _writeCDAResultsOrganizerStart];
    }
  }

  else
  {
    [(WDExportManager *)self _writeCDAVitalsOrganizerStartWithStartDate:v8 endDate:v9];
  }
}

- (void)_outputSerialQueue_writeSamples:(id)a3 forQuantityType:(id)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v35 = self;
  v41 = a4;
  v32 = [(WDExportManager *)self _preferredUnitForObjectType:?];
  v34 = [v32 description];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v6;
  v33 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v33)
  {
    v31 = *v44;
    do
    {
      v7 = 0;
      do
      {
        if (*v44 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v40 = v7;
        v8 = *(*(&v43 + 1) + 8 * v7);
        v9 = MEMORY[0x277CCABB0];
        v10 = [v8 quantity];
        [v10 doubleValueForUnit:v32];
        v42 = [v9 numberWithDouble:?];

        v11 = [v41 identifier];
        v38 = [v8 sourceRevision];
        v37 = [v38 source];
        v12 = [v37 name];
        v36 = [v8 sourceRevision];
        v13 = [v36 version];
        v14 = [v8 device];
        v15 = [v14 description];
        v16 = [v8 metadata];
        v17 = [v8 _creationDate];
        v18 = [v8 startDate];
        v19 = [v8 endDate];
        [(WDExportManager *)v35 _writeXMLRecordWithType:v11 sourceName:v12 sourceVersion:v13 device:v15 unit:v34 metadata:v16 hrvMetadataList:0 creationDate:v17 startDate:v18 endDate:v19 value:v42];

        if (!getCategoryOfType(v41) || getCategoryOfType(v41) == 1)
        {
          v39 = [v8 sourceRevision];
          v20 = [v39 source];
          v21 = [v20 name];
          v22 = [v8 sourceRevision];
          v23 = [v22 version];
          v24 = [v8 device];
          v25 = [v24 description];
          v26 = [v8 metadata];
          v27 = [v8 startDate];
          v28 = [v8 endDate];
          [(WDExportManager *)v35 _writeCDAEntryWithValue:v42 type:v41 sourceName:v21 sourceVersion:v23 device:v25 unit:v34 metadata:v26 startDate:v27 endDate:v28];
        }

        v7 = v40 + 1;
      }

      while (v33 != v40 + 1);
      v33 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v33);
  }

  if ([(NSArray *)v35->_completedRecords count]&& (!getCategoryOfType(v41) || getCategoryOfType(v41) == 1))
  {
    [(WDExportManager *)v35 _writeCDAOrganizerEnd];
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_outputSerialQueue_finishWritingQuantityType:(id)a3 count:(unint64_t)a4
{
  v10 = a3;
  CategoryOfType = getCategoryOfType(v10);
  if (a4 && CategoryOfType <= 1)
  {
    [(WDExportManager *)self _writeCDAOrganizerEnd];
  }

  v7 = [(NSMutableArray *)self->_resultsTypes lastObject];
  if (v7 == v10)
  {
  }

  else
  {
    v8 = [(NSMutableArray *)self->_vitalsTypes lastObject];

    v9 = v10;
    if (v8 != v10)
    {
      goto LABEL_9;
    }
  }

  [(WDExportManager *)self _writeCDASectionFooter];
  v9 = v10;
LABEL_9:
}

- (void)_writeDataForCategoryType:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v18 = a3;
  v19 = self;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = self->_completedRecords;
  v20 = [(NSArray *)obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v20)
  {
    v17 = *v28;
    do
    {
      v4 = 0;
      do
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v27 + 1) + 8 * v4);
        v26 = [v18 identifier];
        v25 = [v5 sourceRevision];
        v24 = [v25 source];
        v6 = [v24 name];
        v23 = [v5 sourceRevision];
        v21 = [v23 version];
        v22 = [v5 device];
        v7 = [v22 description];
        v8 = [v5 metadata];
        v9 = [v5 _creationDate];
        v10 = [v5 startDate];
        v11 = [v5 endDate];
        v12 = [v5 sampleType];
        v13 = stringForCategoryValue([v12 code], objc_msgSend(v5, "value"));
        [(WDExportManager *)v19 _writeXMLRecordWithType:v26 sourceName:v6 sourceVersion:v21 device:v7 unit:0 metadata:v8 hrvMetadataList:0 creationDate:v9 startDate:v10 endDate:v11 value:v13];

        ++v4;
      }

      while (v20 != v4);
      v20 = [(NSArray *)obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v20);
  }

  completedRecords = v19->_completedRecords;
  v19->_completedRecords = 0;

  dispatch_semaphore_signal(v19->_sem);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)_writeDataForCorrelationType:(id)a3
{
  v61 = *MEMORY[0x277D85DE8];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = self->_completedRecords;
  v34 = [(NSArray *)obj countByEnumeratingWithState:&v55 objects:v60 count:16];
  if (v34)
  {
    v33 = *v56;
    do
    {
      v3 = 0;
      do
      {
        if (*v56 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v35 = v3;
        v4 = *(*(&v55 + 1) + 8 * v3);
        v49 = [v4 sampleType];
        v5 = [v49 identifier];
        v47 = [v4 sourceRevision];
        v45 = [v47 source];
        v6 = [v45 name];
        v43 = [v4 sourceRevision];
        v7 = [v43 version];
        v8 = [v4 device];
        v9 = [v8 description];
        v10 = [v4 metadata];
        v11 = [v4 _creationDate];
        v12 = [v4 startDate];
        v13 = [v4 endDate];
        [(WDExportManager *)self _writeXMLCorrelationStartWithType:v5 sourceName:v6 sourceVersion:v7 device:v9 metadata:v10 creationDate:v11 startDate:v12 endDate:v13];

        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v36 = [v4 objects];
        v38 = [v36 countByEnumeratingWithState:&v51 objects:v59 count:16];
        if (v38)
        {
          v37 = *v52;
          do
          {
            v14 = 0;
            do
            {
              if (*v52 != v37)
              {
                objc_enumerationMutation(v36);
              }

              v15 = *(*(&v51 + 1) + 8 * v14);
              objc_opt_class();
              v48 = v14;
              if (objc_opt_isKindOfClass())
              {
                v16 = [v15 sampleType];
                v17 = [(WDExportManager *)self _preferredUnitForObjectType:v16];

                v18 = MEMORY[0x277CCABB0];
                v19 = [v15 quantity];
                [v19 doubleValueForUnit:v17];
                v50 = [v18 numberWithDouble:?];
LABEL_15:

                goto LABEL_17;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v19 = [v15 sampleType];
                v50 = stringForCategoryValue([v19 code], objc_msgSend(v15, "value"));
                v17 = 0;
                goto LABEL_15;
              }

              v50 = 0;
              v17 = 0;
LABEL_17:
              v40 = v17;
              v46 = [v15 sampleType];
              v20 = [v46 identifier];
              v44 = [v15 sourceRevision];
              v42 = [v44 source];
              v21 = [v42 name];
              v41 = [v15 sourceRevision];
              v22 = [v41 version];
              v23 = [v15 device];
              v24 = [v23 description];
              v25 = [v17 description];
              v26 = [v15 metadata];
              v27 = [v15 _creationDate];
              v28 = [v15 startDate];
              v29 = [v15 endDate];
              [(WDExportManager *)self _writeXMLRecordWithType:v20 sourceName:v21 sourceVersion:v22 device:v24 unit:v25 metadata:v26 hrvMetadataList:0 creationDate:v27 startDate:v28 endDate:v29 value:v50];

              v14 = v48 + 1;
            }

            while (v38 != v48 + 1);
            v38 = [v36 countByEnumeratingWithState:&v51 objects:v59 count:16];
          }

          while (v38);
        }

        [(WDExportManager *)self _writeXMLCorrelationEnd];
        v3 = v35 + 1;
      }

      while (v35 + 1 != v34);
      v34 = [(NSArray *)obj countByEnumeratingWithState:&v55 objects:v60 count:16];
    }

    while (v34);
  }

  completedRecords = self->_completedRecords;
  self->_completedRecords = 0;

  dispatch_semaphore_signal(self->_sem);
  v31 = *MEMORY[0x277D85DE8];
}

- (void)_writeDataForAudiogramType
{
  v29 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = self->_completedRecords;
  v3 = [(NSArray *)obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v3)
  {
    v4 = v3;
    v18 = *v24;
    do
    {
      v5 = 0;
      do
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v23 + 1) + 8 * v5);
        v7 = objc_autoreleasePoolPush();
        [(WDExportManager *)self _writeXMLAudiogramStartWithAudiogram:v6];
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v8 = [v6 sensitivityPoints];
        v9 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v20;
          do
          {
            v12 = 0;
            do
            {
              if (*v20 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v19 + 1) + 8 * v12);
              v14 = objc_autoreleasePoolPush();
              [(WDExportManager *)self _writeXMLAudiogramSensitivityPoint:v13];
              objc_autoreleasePoolPop(v14);
              ++v12;
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v10);
        }

        [(WDExportManager *)self _writeXMLAudiogramEnd];
        objc_autoreleasePoolPop(v7);
        ++v5;
      }

      while (v5 != v4);
      v4 = [(NSArray *)obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v4);
  }

  completedRecords = self->_completedRecords;
  self->_completedRecords = 0;

  dispatch_semaphore_signal(self->_sem);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)_writeDataForWorkoutType
{
  v74 = *MEMORY[0x277D85DE8];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = self->_completedRecords;
  v44 = [(NSArray *)obj countByEnumeratingWithState:&v66 objects:v73 count:16];
  if (v44)
  {
    v43 = *v67;
    do
    {
      for (i = 0; i != v44; i = v26 + 1)
      {
        if (*v67 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v50 = i;
        v4 = *(*(&v66 + 1) + 8 * i);
        [v4 workoutActivityType];
        v53 = _HKWorkoutActivityNameForActivityType();
        v5 = MEMORY[0x277CCABB0];
        [v4 duration];
        v52 = [v5 numberWithDouble:v6 / 60.0];
        v49 = [MEMORY[0x277CCDAB0] minuteUnit];
        v51 = [v49 description];
        v48 = [v4 sourceRevision];
        v47 = [v48 source];
        v7 = [v47 name];
        v46 = [v4 sourceRevision];
        v8 = [v46 version];
        v45 = [v4 device];
        v9 = [v45 description];
        v10 = [v4 metadata];
        v11 = [v4 _creationDate];
        v12 = [v4 startDate];
        v13 = [v4 endDate];
        [(WDExportManager *)self _writeXMLWorkoutStartWithActivityType:v53 duration:v52 durationUnit:v51 sourceName:v7 sourceVersion:v8 device:v9 metadata:v10 creationDate:v11 startDate:v12 endDate:v13];

        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v14 = [v4 workoutEvents];
        v15 = [v14 countByEnumeratingWithState:&v62 objects:v72 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v63;
          do
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v63 != v17)
              {
                objc_enumerationMutation(v14);
              }

              [(WDExportManager *)self _writeXMLWorkoutEvent:*(*(&v62 + 1) + 8 * j)];
            }

            v16 = [v14 countByEnumeratingWithState:&v62 objects:v72 count:16];
          }

          while (v16);
        }

        v19 = [v4 workoutActivities];
        if ([v19 count] >= 2)
        {

          v26 = v50;
LABEL_18:
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v19 = [v4 workoutActivities];
          v27 = [v19 countByEnumeratingWithState:&v58 objects:v71 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v59;
            do
            {
              for (k = 0; k != v28; ++k)
              {
                if (*v59 != v29)
                {
                  objc_enumerationMutation(v19);
                }

                [(WDExportManager *)self _writeXMLWorkoutActivity:*(*(&v58 + 1) + 8 * k)];
              }

              v28 = [v19 countByEnumeratingWithState:&v58 objects:v71 count:16];
            }

            while (v28);
          }

LABEL_27:

          goto LABEL_28;
        }

        v20 = [v4 workoutActivities];
        if ([v20 count] != 1)
        {

          v26 = v50;
          goto LABEL_27;
        }

        v21 = [v4 workoutActivities];
        v22 = [v21 objectAtIndexedSubscript:0];
        v23 = [v22 UUID];
        v24 = [v4 UUID];
        v25 = [v23 isEqual:v24];

        v26 = v50;
        if ((v25 & 1) == 0)
        {
          goto LABEL_18;
        }

LABEL_28:
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v31 = [v4 allStatistics];
        v32 = [v31 allValues];

        v33 = [v32 countByEnumeratingWithState:&v54 objects:v70 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v55;
          do
          {
            for (m = 0; m != v34; ++m)
            {
              if (*v55 != v35)
              {
                objc_enumerationMutation(v32);
              }

              v37 = *(*(&v54 + 1) + 8 * m);
              xmlTextWriterStartElement(self->_writer, "WorkoutStatistics");
              [(WDExportManager *)self _writeXMLWorkoutStatistics:v37];
              xmlTextWriterEndElement(self->_writer);
            }

            v34 = [v32 countByEnumeratingWithState:&v54 objects:v70 count:16];
          }

          while (v34);
        }

        v38 = dispatch_semaphore_create(0);
        [(WDExportManager *)self _writeWorkoutRouteForWorkout:v4 semaphore:v38];
        dispatch_semaphore_wait(v38, 0xFFFFFFFFFFFFFFFFLL);
        v39 = [v4 metadata];
        [(WDExportManager *)self _writeXMLMetadataEntries:v39];

        [(WDExportManager *)self _writeXMLWorkoutEnd];
      }

      v44 = [(NSArray *)obj countByEnumeratingWithState:&v66 objects:v73 count:16];
    }

    while (v44);
  }

  completedRecords = self->_completedRecords;
  self->_completedRecords = 0;

  dispatch_semaphore_signal(self->_sem);
  v41 = *MEMORY[0x277D85DE8];
}

- (void)_writeDataForWorkoutRoutes:(id)a3 semaphore:(id)a4
{
  v54[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v53 = *MEMORY[0x277CCA1B0];
  v54[0] = *MEMORY[0x277CCA198];
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:&v53 count:1];
  v40 = self;
  [(NSString *)self->_exportPath stringByAppendingPathComponent:@"workout-routes"];
  v37 = v49 = 0;
  LODWORD(a4) = [v8 createDirectoryAtPath:? withIntermediateDirectories:? attributes:? error:?];
  v10 = 0;
  v11 = v10;
  if (a4)
  {
    v30 = v10;
    v31 = v9;
    v32 = v8;
    v33 = v7;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v34 = v6;
    obj = v6;
    v38 = [obj countByEnumeratingWithState:&v45 objects:v52 count:16];
    if (v38)
    {
      v36 = *v46;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v46 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v45 + 1) + 8 * i);
          [(WDExportManager *)v40 _writeXMLWorkoutRouteStart:v13];
          v39 = [MEMORY[0x277CCD478] fileNameForRoute:v13];
          v14 = [v37 stringByAppendingPathComponent:?];
          v15 = [MEMORY[0x277CBEBC0] fileURLWithPath:v14];
          v16 = [objc_alloc(MEMORY[0x277CCD478]) initWithURL:v15 route:v13];
          v17 = WDBundle();
          v18 = [v17 localizedStringForKey:@"EXPORT_DATA_DIRECTORY" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
          v19 = [v14 componentsSeparatedByString:v18];
          v20 = [v19 lastObject];

          [(WDExportManager *)v40 _writeXMLWorkoutRouteFileReference:v20];
          v21 = dispatch_semaphore_create(0);
          v22 = objc_alloc(MEMORY[0x277CCDC88]);
          v42[0] = MEMORY[0x277D85DD0];
          v42[1] = 3221225472;
          v42[2] = __56__WDExportManager__writeDataForWorkoutRoutes_semaphore___block_invoke;
          v42[3] = &unk_2796E7328;
          v23 = v16;
          v43 = v23;
          v24 = v21;
          v44 = v24;
          v25 = [v22 initWithRoute:v13 dataHandler:v42];
          v26 = [(WDProfile *)v40->_profile healthStore];
          [v26 executeQuery:v25];

          dispatch_semaphore_wait(v24, 0xFFFFFFFFFFFFFFFFLL);
          v41 = 0;
          LOBYTE(v22) = [v23 finishWithError:&v41];
          v27 = v41;
          if ((v22 & 1) == 0)
          {
            _HKInitializeLogging();
            v28 = *MEMORY[0x277CCC2B0];
            if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v51 = v27;
              _os_log_error_impl(&dword_251E85000, v28, OS_LOG_TYPE_ERROR, "Error exporting workout route to GPX: %{public}@", buf, 0xCu);
            }
          }

          [(WDExportManager *)v40 _writeXMLWorkoutRouteEnd];
        }

        v38 = [obj countByEnumeratingWithState:&v45 objects:v52 count:16];
      }

      while (v38);
    }

    v7 = v33;
    v6 = v34;
    v9 = v31;
    v8 = v32;
    v11 = v30;
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
    {
      [WDExportManager _writeDataForWorkoutRoutes:semaphore:];
    }
  }

  dispatch_semaphore_signal(v7);

  v29 = *MEMORY[0x277D85DE8];
}

intptr_t __56__WDExportManager__writeDataForWorkoutRoutes_semaphore___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  result = [*(a1 + 32) appendLocations:a3 error:0];
  if (a5 || (a4 & 1) != 0 || !result)
  {
    v9 = *(a1 + 40);

    return dispatch_semaphore_signal(v9);
  }

  return result;
}

- (void)_writeDataForActivitySummaries
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCC918]];
  v4 = [(WDExportManager *)self _preferredUnitForObjectType:v3];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_completedRecords;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(WDExportManager *)self _writeXMLActivitySummary:*(*(&v12 + 1) + 8 * v9++) activeEnergyBurnedUnit:v4, v12];
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  completedRecords = self->_completedRecords;
  self->_completedRecords = 0;

  dispatch_semaphore_signal(self->_sem);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)_writeDataForHRVAndTachograms
{
  v27 = *MEMORY[0x277D85DE8];
  v16 = [MEMORY[0x277CCD830] dataTypeWithCode:139];
  v3 = [(WDExportManager *)self _preferredUnitForObjectType:?];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self->_completedRecords;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      v7 = 0;
      do
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * v7);
        v9 = dispatch_semaphore_create(0);
        v10 = MEMORY[0x277CCD528];
        v11 = [(WDProfile *)self->_profile healthStore];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __48__WDExportManager__writeDataForHRVAndTachograms__block_invoke;
        v17[3] = &unk_2796E7350;
        v17[4] = self;
        v18 = v16;
        v19 = v8;
        v20 = v3;
        v21 = v9;
        v12 = v9;
        [v10 queryForParentSequenceOfHRV:v8 healthStore:v11 completion:v17];

        dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSArray *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }

  completedRecords = self->_completedRecords;
  self->_completedRecords = 0;

  dispatch_semaphore_signal(self->_sem);
  v14 = *MEMORY[0x277D85DE8];
}

void __48__WDExportManager__writeDataForHRVAndTachograms__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v20 = [MEMORY[0x277CCD528] instantaneousBPMsForHeartbeatSeriesSample:a2];
  }

  else
  {
    v20 = 0;
  }

  v3 = *(a1 + 32);
  v19 = [*(a1 + 40) identifier];
  v18 = [*(a1 + 48) sourceRevision];
  v17 = [v18 source];
  v4 = [v17 name];
  v16 = [*(a1 + 48) sourceRevision];
  v5 = [v16 version];
  v15 = [*(a1 + 48) device];
  v14 = [v15 description];
  v13 = [*(a1 + 56) description];
  v6 = [*(a1 + 48) metadata];
  v12 = [*(a1 + 48) _creationDate];
  v7 = [*(a1 + 48) startDate];
  v8 = [*(a1 + 48) endDate];
  v9 = MEMORY[0x277CCABB0];
  v10 = [*(a1 + 48) quantity];
  [v10 doubleValueForUnit:*(a1 + 56)];
  v11 = [v9 numberWithDouble:?];
  [v3 _writeXMLRecordWithType:v19 sourceName:v4 sourceVersion:v5 device:v14 unit:v13 metadata:v6 hrvMetadataList:v20 creationDate:v12 startDate:v7 endDate:v8 value:v11];

  dispatch_semaphore_signal(*(a1 + 64));
}

- (void)_writeDataForVisionRx
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1(&dword_251E85000, v0, v1, "Unable to create attachment directory: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __40__WDExportManager__writeDataForVisionRx__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (v6 || !a3)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  else
  {
    [*(a1 + 32) setExportFailed:1];
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void __40__WDExportManager__writeDataForVisionRx__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (!v6 && v5 || ([v6 writeToFile:*(a1 + 40) atomically:1] & 1) == 0)
  {
    [*(a1 + 32) setExportFailed:1];
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

- (void)_writeDataForMedicalRecords:(id)a3
{
  v41[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  exportPath = self->_exportPath;
  v7 = WDBundle();
  v8 = [v7 localizedStringForKey:@"EXPORT_DATA_CR_DIRECTORY" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
  v9 = [(NSString *)exportPath stringByAppendingPathComponent:v8];

  v40 = *MEMORY[0x277CCA1B0];
  v41[0] = *MEMORY[0x277CCA190];
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];
  v38 = 0;
  v11 = [v5 createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:v10 error:&v38];
  v12 = v38;
  v13 = v12;
  if (v11)
  {
    v25 = v12;
    v26 = v10;
    v27 = v5;
    v28 = v4;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v4;
    v14 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v35;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v35 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v34 + 1) + 8 * i);
          if ([(WDExportManager *)self exportFailed])
          {
            _HKInitializeLogging();
            v23 = HKLogWellnessDashboard();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              [WDExportManager _writeDataForMedicalRecords:];
            }

            goto LABEL_17;
          }

          v19 = dispatch_semaphore_create(0);
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = __47__WDExportManager__writeDataForMedicalRecords___block_invoke;
          v30[3] = &unk_2796E73C8;
          v30[4] = self;
          v31 = v19;
          v32 = v18;
          v33 = v9;
          v20 = v19;
          v21 = MEMORY[0x253092270](v30);
          v22 = [(WDProfile *)self->_profile healthRecordsStore];
          [v22 fetchExportedPropertiesForHealthRecord:v18 completion:v21];

          dispatch_semaphore_wait(v20, 0xFFFFFFFFFFFFFFFFLL);
        }

        v15 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:

    v5 = v27;
    v4 = v28;
    v13 = v25;
    v10 = v26;
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
    {
      [WDExportManager _writeDataForMedicalRecords:];
    }

    [(WDExportManager *)self setExportFailed:1];
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __47__WDExportManager__writeDataForMedicalRecords___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v9 = [*(a1 + 48) sourceRevision];
    v10 = [v9 source];
    v40 = [v10 name];

    v11 = [*(a1 + 48) UUID];
    v41 = [v11 UUIDString];

    v12 = [v5 objectForKeyedSubscript:*MEMORY[0x277CCC390]];
    objc_opt_class();
    v48 = 0;
    v13 = HKSafeObject();
    v14 = 0;

    if (v14)
    {
      v15 = 0;
    }

    else
    {
      v16 = [v5 objectForKeyedSubscript:*MEMORY[0x277CCC388]];
      objc_opt_class();
      v47 = 0;
      v15 = HKSafeObject();
      v14 = 0;

      if (!v14)
      {
        v29 = [v5 objectForKeyedSubscript:*MEMORY[0x277CCC398]];
        objc_opt_class();
        v46 = 0;
        v17 = HKSafeObject();
        v14 = 0;

        if (!v14)
        {
          v30 = [v5 objectForKeyedSubscript:*MEMORY[0x277CCC380]];
          objc_opt_class();
          v45 = 0;
          v18 = HKSafeObject();
          v14 = 0;

          if (!v14)
          {
            v31 = [v5 objectForKeyedSubscript:*MEMORY[0x277CCC370]];
            objc_opt_class();
            v44 = 0;
            v19 = HKSafeObject();
            v14 = 0;

            if (!v14)
            {
              v38 = [v5 objectForKeyedSubscript:*MEMORY[0x277CCC378]];
              objc_opt_class();
              v43 = 0;
              v20 = HKSafeObject();
              v14 = 0;

              if (!v14)
              {
                v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@.json", v13, v41];
                [*(a1 + 56) stringByAppendingPathComponent:v14];
                v39 = v42 = 0;
                [v20 writeToFile:? atomically:? encoding:? error:?];
                v7 = v42;
                if (v7)
                {
                  _HKInitializeLogging();
                  v36 = HKLogWellnessDashboard();
                  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                  {
                    __47__WDExportManager__writeDataForMedicalRecords___block_invoke_cold_3();
                  }

                  [*(a1 + 32) setExportFailed:1];
                  dispatch_semaphore_signal(*(a1 + 40));
                }

                else
                {
                  v37 = [*(*(a1 + 32) + 112) stringFromDate:v18];
                  v34 = WDBundle();
                  v33 = [v34 localizedStringForKey:@"EXPORT_DATA_DIRECTORY" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
                  v32 = [v39 componentsSeparatedByString:v33];
                  v35 = [v32 lastObject];

                  [*(a1 + 32) _writeXMLMedicalRecordWithType:v13 identifier:v15 sourceName:v40 sourceURL:v17 fhirVersion:v19 receivedDate:v37 jsonFilePath:v35];
                  dispatch_semaphore_signal(*(a1 + 40));
                }

                goto LABEL_15;
              }

LABEL_12:
              _HKInitializeLogging();
              v21 = HKLogWellnessDashboard();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                __47__WDExportManager__writeDataForMedicalRecords___block_invoke_cold_2(v21, v22, v23, v24, v25, v26, v27, v28);
              }

              [*(a1 + 32) setExportFailed:1];
              dispatch_semaphore_signal(*(a1 + 40));
              v7 = 0;
LABEL_15:

              goto LABEL_16;
            }

LABEL_11:
            v20 = 0;
            goto LABEL_12;
          }

LABEL_10:
          v19 = 0;
          goto LABEL_11;
        }

LABEL_9:
        v18 = 0;
        goto LABEL_10;
      }
    }

    v17 = 0;
    goto LABEL_9;
  }

  v7 = v6;
  _HKInitializeLogging();
  v8 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __47__WDExportManager__writeDataForMedicalRecords___block_invoke_cold_1();
  }

  [*(a1 + 32) setExportFailed:1];
  dispatch_semaphore_signal(*(a1 + 40));
LABEL_16:
}

- (void)_writeXMLRecordWithType:(id)a3 sourceName:(id)a4 sourceVersion:(id)a5 device:(id)a6 unit:(id)a7 metadata:(id)a8 hrvMetadataList:(id)a9 creationDate:(id)a10 startDate:(id)a11 endDate:(id)a12 value:(id)a13
{
  v66 = *MEMORY[0x277D85DE8];
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v59 = a8;
  v24 = a9;
  v25 = a10;
  v26 = a11;
  v58 = a12;
  v56 = a13;
  xmlTextWriterStartElement(self->_writer, "Record");
  v55 = v19;
  xmlTextWriterWriteAttribute(self->_writer, "type", [v19 UTF8String]);
  xmlTextWriterWriteAttribute(self->_writer, "sourceName", [v20 UTF8String]);
  if ([v21 length])
  {
    xmlTextWriterWriteAttribute(self->_writer, "sourceVersion", [v21 UTF8String]);
  }

  if ([v22 length])
  {
    xmlTextWriterWriteAttribute(self->_writer, "device", [v22 UTF8String]);
  }

  v27 = v56;
  if ([v23 length])
  {
    xmlTextWriterWriteAttribute(self->_writer, "unit", [v23 UTF8String]);
  }

  v57 = v23;
  if (v25)
  {
    writer = self->_writer;
    v29 = [(NSDateFormatter *)self->_xmlDateFormatter stringFromDate:v25];
    xmlTextWriterWriteAttribute(writer, "creationDate", [v29 UTF8String]);
  }

  v30 = self->_writer;
  v31 = [(NSDateFormatter *)self->_xmlDateFormatter stringFromDate:v26];
  xmlTextWriterWriteAttribute(v30, "startDate", [v31 UTF8String]);

  v32 = self->_writer;
  v33 = [(NSDateFormatter *)self->_xmlDateFormatter stringFromDate:v58];
  xmlTextWriterWriteAttribute(v32, "endDate", [v33 UTF8String]);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = self->_writer;
    v35 = MEMORY[0x277CCACA8];
    [v56 doubleValue];
    v37 = [v35 stringWithFormat:@"%g", v36];
    xmlTextWriterWriteAttribute(v34, "value", [v37 UTF8String]);

    v38 = v57;
  }

  else
  {
    objc_opt_class();
    v38 = v57;
    if (objc_opt_isKindOfClass())
    {
      xmlTextWriterWriteAttribute(self->_writer, "value", [v56 UTF8String]);
    }
  }

  [(WDExportManager *)self _writeXMLMetadataEntries:v59];
  if (v24)
  {
    v49 = v26;
    v50 = v25;
    v52 = v22;
    v53 = v21;
    v54 = v20;
    xmlTextWriterStartElement(self->_writer, "HeartRateVariabilityMetadataList");
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v51 = v24;
    obj = v24;
    v39 = [obj countByEnumeratingWithState:&v61 objects:v65 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v62;
      do
      {
        for (i = 0; i != v40; ++i)
        {
          if (*v62 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v43 = *(*(&v61 + 1) + 8 * i);
          xmlTextWriterStartElement(self->_writer, "InstantaneousBeatsPerMinute");
          v44 = self->_writer;
          v45 = [(WDExportManager *)self _formatBPMForBeatToBeatReading:v43];
          xmlTextWriterWriteAttribute(v44, "bpm", [v45 UTF8String]);

          v46 = self->_writer;
          v47 = [(WDExportManager *)self _formatTimeForBeatToBeatReading:v43];
          xmlTextWriterWriteAttribute(v46, "time", [v47 UTF8String]);

          xmlTextWriterEndElement(self->_writer);
        }

        v40 = [obj countByEnumeratingWithState:&v61 objects:v65 count:16];
      }

      while (v40);
    }

    xmlTextWriterEndElement(self->_writer);
    v21 = v53;
    v20 = v54;
    v24 = v51;
    v22 = v52;
    v27 = v56;
    v38 = v57;
    v26 = v49;
    v25 = v50;
  }

  xmlTextWriterEndElement(self->_writer);

  v48 = *MEMORY[0x277D85DE8];
}

- (void)_writeXMLCorrelationStartWithType:(id)a3 sourceName:(id)a4 sourceVersion:(id)a5 device:(id)a6 metadata:(id)a7 creationDate:(id)a8 startDate:(id)a9 endDate:(id)a10
{
  v34 = a5;
  v16 = a6;
  v17 = a8;
  v18 = a9;
  writer = self->_writer;
  v20 = a10;
  v21 = a7;
  v22 = a4;
  v23 = a3;
  xmlTextWriterStartElement(writer, "Correlation");
  v24 = self->_writer;
  v25 = [v23 UTF8String];

  xmlTextWriterWriteAttribute(v24, "type", v25);
  v26 = self->_writer;
  v27 = [v22 UTF8String];

  xmlTextWriterWriteAttribute(v26, "sourceName", v27);
  if ([v34 length])
  {
    xmlTextWriterWriteAttribute(self->_writer, "sourceVersion", [v34 UTF8String]);
  }

  if ([v16 length])
  {
    xmlTextWriterWriteAttribute(self->_writer, "device", [v16 UTF8String]);
  }

  if (v17)
  {
    v28 = self->_writer;
    v29 = [(NSDateFormatter *)self->_xmlDateFormatter stringFromDate:v17];
    xmlTextWriterWriteAttribute(v28, "creationDate", [v29 UTF8String]);
  }

  v30 = self->_writer;
  v31 = [(NSDateFormatter *)self->_xmlDateFormatter stringFromDate:v18];
  xmlTextWriterWriteAttribute(v30, "startDate", [v31 UTF8String]);

  v32 = self->_writer;
  v33 = [(NSDateFormatter *)self->_xmlDateFormatter stringFromDate:v20];

  xmlTextWriterWriteAttribute(v32, "endDate", [v33 UTF8String]);
  [(WDExportManager *)self _writeXMLMetadataEntries:v21];
}

- (void)_writeXMLAudiogramStartWithAudiogram:(id)a3
{
  v37 = a3;
  xmlTextWriterStartElement(self->_writer, "Audiogram");
  writer = self->_writer;
  v5 = [v37 sampleType];
  v6 = [v5 identifier];
  xmlTextWriterWriteAttribute(writer, "type", [v6 UTF8String]);

  v7 = self->_writer;
  v8 = [v37 sourceRevision];
  v9 = [v8 source];
  v10 = [v9 name];
  xmlTextWriterWriteAttribute(v7, "sourceName", [v10 UTF8String]);

  v11 = [v37 sourceRevision];
  v12 = [v11 version];
  v13 = [v12 length];

  if (v13)
  {
    v14 = self->_writer;
    v15 = [v37 sourceRevision];
    v16 = [v15 version];
    xmlTextWriterWriteAttribute(v14, "sourceVersion", [v16 UTF8String]);
  }

  v17 = [v37 device];
  v18 = [v17 description];
  v19 = [v18 length];

  if (v19)
  {
    v20 = self->_writer;
    v21 = [v37 device];
    v22 = [v21 description];
    xmlTextWriterWriteAttribute(v20, "device", [v22 UTF8String]);
  }

  v23 = [v37 _creationDate];

  if (v23)
  {
    v24 = self->_writer;
    xmlDateFormatter = self->_xmlDateFormatter;
    v26 = [v37 _creationDate];
    v27 = [(NSDateFormatter *)xmlDateFormatter stringFromDate:v26];
    xmlTextWriterWriteAttribute(v24, "creationDate", [v27 UTF8String]);
  }

  v28 = self->_writer;
  v29 = self->_xmlDateFormatter;
  v30 = [v37 startDate];
  v31 = [(NSDateFormatter *)v29 stringFromDate:v30];
  xmlTextWriterWriteAttribute(v28, "startDate", [v31 UTF8String]);

  v32 = self->_writer;
  v33 = self->_xmlDateFormatter;
  v34 = [v37 endDate];
  v35 = [(NSDateFormatter *)v33 stringFromDate:v34];
  xmlTextWriterWriteAttribute(v32, "endDate", [v35 UTF8String]);

  v36 = [v37 metadata];
  [(WDExportManager *)self _writeXMLMetadataEntries:v36];
}

- (void)_writeXMLAudiogramSensitivityPoint:(id)a3
{
  v78 = a3;
  xmlTextWriterStartElement(self->_writer, "SensitivityPoint");
  v4 = [v78 frequency];
  v5 = [v4 _unit];

  v6 = [v78 frequency];
  [v6 doubleValueForUnit:v5];
  v8 = v7;

  writer = self->_writer;
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%g", v8];
  xmlTextWriterWriteAttribute(writer, "frequencyValue", [v10 UTF8String]);

  v11 = self->_writer;
  v12 = [v5 unitString];
  xmlTextWriterWriteAttribute(v11, "frequencyUnit", [v12 UTF8String]);

  v13 = [v78 tests];
  v14 = [v13 hk_filter:&__block_literal_global_476];

  v15 = [v14 firstObject];
  v16 = v15;
  v77 = v15;
  if (v15)
  {
    v17 = [v15 sensitivity];
    v18 = [v17 _unit];
    [v17 doubleValueForUnit:v18];
    v19 = self->_writer;
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%g", v20];
    xmlTextWriterWriteAttribute(v19, "leftEarValue", [v21 UTF8String]);

    v22 = self->_writer;
    v23 = [v18 unitString];
    xmlTextWriterWriteAttribute(v22, "leftEarUnit", [v23 UTF8String]);

    v24 = self->_writer;
    v25 = MEMORY[0x277CCACA8];
    v26 = [v16 masked];
    v27 = @"YES";
    if (!v26)
    {
      v27 = @"NO";
    }

    v28 = [v25 stringWithFormat:@"%@", v27];
    xmlTextWriterWriteAttribute(v24, "leftEarMasked", [v28 UTF8String]);

    v29 = [v16 clampingRange];
    v30 = v29;
    if (v29)
    {
      v31 = [v29 lowerBound];
      v32 = v31;
      if (v31)
      {
        [v31 doubleValueForUnit:v18];
        v33 = self->_writer;
        v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%g", v34];
        xmlTextWriterWriteAttribute(v33, "leftEarClampingRangeLowerBound", [v35 UTF8String]);
      }

      v36 = [v30 upperBound];
      v37 = v36;
      if (v36)
      {
        [v36 doubleValueForUnit:v18];
        v38 = self->_writer;
        [MEMORY[0x277CCACA8] stringWithFormat:@"%g", v39];
        v40 = v14;
        v42 = v41 = v5;
        xmlTextWriterWriteAttribute(v38, "leftEarClampingRangeUpperBound", [v42 UTF8String]);

        v5 = v41;
        v14 = v40;
      }

      v16 = v77;
    }
  }

  v43 = [v78 tests];
  v44 = [v43 hk_filter:&__block_literal_global_492];

  v45 = [v44 firstObject];
  v46 = v45;
  if (v45)
  {
    v47 = [v45 sensitivity];
    v48 = [v47 _unit];
    v76 = v47;
    [v47 doubleValueForUnit:v48];
    v49 = self->_writer;
    v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"%g", v50];
    xmlTextWriterWriteAttribute(v49, "rightEarValue", [v51 UTF8String]);

    v52 = self->_writer;
    v53 = [v48 unitString];
    xmlTextWriterWriteAttribute(v52, "rightEarUnit", [v53 UTF8String]);

    v54 = self->_writer;
    v55 = MEMORY[0x277CCACA8];
    v56 = [v46 masked];
    v57 = @"YES";
    if (!v56)
    {
      v57 = @"NO";
    }

    v58 = [v55 stringWithFormat:@"%@", v57];
    xmlTextWriterWriteAttribute(v54, "rightEarMasked", [v58 UTF8String]);

    v59 = [v46 clampingRange];
    v60 = v59;
    if (v59)
    {
      v75 = v5;
      v61 = [v59 lowerBound];
      v62 = v61;
      if (v61)
      {
        [v61 doubleValueForUnit:v48];
        v63 = self->_writer;
        [MEMORY[0x277CCACA8] stringWithFormat:@"%g", v64];
        v66 = v65 = v14;
        xmlTextWriterWriteAttribute(v63, "rightEarClampingRangeLowerBound", [v66 UTF8String]);

        v14 = v65;
      }

      v67 = [v60 upperBound];
      v68 = v67;
      if (v67)
      {
        [v67 doubleValueForUnit:v48];
        v69 = v14;
        v70 = self->_writer;
        v72 = [MEMORY[0x277CCACA8] stringWithFormat:@"%g", v71];
        v73 = [v72 UTF8String];
        v74 = v70;
        v14 = v69;
        xmlTextWriterWriteAttribute(v74, "rightEarClampingRangeUpperBound", v73);
      }

      v5 = v75;
    }

    v16 = v77;
  }

  xmlTextWriterEndElement(self->_writer);
}

BOOL __54__WDExportManager__writeXMLAudiogramSensitivityPoint___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 type])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 side] == 0;
  }

  return v3;
}

BOOL __54__WDExportManager__writeXMLAudiogramSensitivityPoint___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 type])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 side] == 1;
  }

  return v3;
}

- (void)_writeXMLWorkoutStartWithActivityType:(id)a3 duration:(id)a4 durationUnit:(id)a5 sourceName:(id)a6 sourceVersion:(id)a7 device:(id)a8 metadata:(id)a9 creationDate:(id)a10 startDate:(id)a11 endDate:(id)a12
{
  v37 = a3;
  v35 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a10;
  v34 = a11;
  writer = self->_writer;
  v24 = a12;
  v33 = a9;
  xmlTextWriterStartElement(writer, "Workout");
  if ([v37 length])
  {
    xmlTextWriterWriteAttribute(self->_writer, "workoutActivityType", [v37 UTF8String]);
  }

  v36 = v18;
  if (v35 && [v18 length])
  {
    v25 = self->_writer;
    v26 = [v35 description];
    xmlTextWriterWriteAttribute(v25, "duration", [v26 UTF8String]);

    xmlTextWriterWriteAttribute(self->_writer, "durationUnit", [v36 UTF8String]);
  }

  xmlTextWriterWriteAttribute(self->_writer, "sourceName", [v19 UTF8String]);
  if ([v20 length])
  {
    xmlTextWriterWriteAttribute(self->_writer, "sourceVersion", [v20 UTF8String]);
  }

  if ([v21 length])
  {
    xmlTextWriterWriteAttribute(self->_writer, "device", [v21 UTF8String]);
  }

  if (v22)
  {
    v27 = self->_writer;
    v28 = [(NSDateFormatter *)self->_xmlDateFormatter stringFromDate:v22];
    xmlTextWriterWriteAttribute(v27, "creationDate", [v28 UTF8String]);
  }

  v29 = self->_writer;
  v30 = [(NSDateFormatter *)self->_xmlDateFormatter stringFromDate:v34];
  xmlTextWriterWriteAttribute(v29, "startDate", [v30 UTF8String]);

  v31 = self->_writer;
  v32 = [(NSDateFormatter *)self->_xmlDateFormatter stringFromDate:v24];

  xmlTextWriterWriteAttribute(v31, "endDate", [v32 UTF8String]);
  [(WDExportManager *)self _writeXMLMetadataEntries:v33];
}

- (void)_writeXMLWorkoutEvent:(id)a3
{
  v22 = a3;
  xmlTextWriterStartElement(self->_writer, "WorkoutEvent");
  writer = self->_writer;
  v5 = [v22 type] - 2;
  if (v5 > 6)
  {
    v6 = @"HKWorkoutEventTypePause";
  }

  else
  {
    v6 = off_2796E75C8[v5];
  }

  xmlTextWriterWriteAttribute(writer, "type", [(__CFString *)v6 UTF8String]);
  v7 = self->_writer;
  xmlDateFormatter = self->_xmlDateFormatter;
  v9 = [v22 dateInterval];
  v10 = [v9 startDate];
  v11 = [(NSDateFormatter *)xmlDateFormatter stringFromDate:v10];
  xmlTextWriterWriteAttribute(v7, "date", [v11 UTF8String]);

  v12 = MEMORY[0x277CCABB0];
  v13 = [v22 dateInterval];
  [v13 duration];
  v15 = [v12 numberWithDouble:v14 / 60.0];

  v16 = [MEMORY[0x277CCDAB0] minuteUnit];
  v17 = [v16 description];

  [v15 doubleValue];
  if (fabs(v18) > 2.22044605e-16 && [v17 length])
  {
    v19 = self->_writer;
    v20 = [v15 description];
    xmlTextWriterWriteAttribute(v19, "duration", [v20 UTF8String]);

    xmlTextWriterWriteAttribute(self->_writer, "durationUnit", [v17 UTF8String]);
  }

  v21 = [v22 metadata];
  [(WDExportManager *)self _writeXMLMetadataEntries:v21];

  xmlTextWriterEndElement(self->_writer);
}

- (void)_writeXMLWorkoutActivity:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  xmlTextWriterStartElement(self->_writer, "WorkoutActivity");
  writer = self->_writer;
  v6 = [v4 UUID];
  v7 = [v6 UUIDString];
  xmlTextWriterWriteAttribute(writer, "uuid", [v7 UTF8String]);

  v8 = self->_writer;
  xmlDateFormatter = self->_xmlDateFormatter;
  v10 = [v4 startDate];
  v11 = [(NSDateFormatter *)xmlDateFormatter stringFromDate:v10];
  xmlTextWriterWriteAttribute(v8, "startDate", [v11 UTF8String]);

  v12 = self->_writer;
  v13 = self->_xmlDateFormatter;
  v14 = [v4 endDate];
  v15 = [(NSDateFormatter *)v13 stringFromDate:v14];
  xmlTextWriterWriteAttribute(v12, "endDate", [v15 UTF8String]);

  v16 = MEMORY[0x277CCABB0];
  [v4 duration];
  v18 = [v16 numberWithDouble:v17 / 60.0];
  v19 = [MEMORY[0x277CCDAB0] minuteUnit];
  v20 = [v19 description];

  [v18 doubleValue];
  if (fabs(v21) > 2.22044605e-16 && [v20 length])
  {
    v22 = self->_writer;
    v23 = [v18 description];
    xmlTextWriterWriteAttribute(v22, "duration", [v23 UTF8String]);

    xmlTextWriterWriteAttribute(self->_writer, "durationUnit", [v20 UTF8String]);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v24 = [v4 workoutEvents];
  v25 = [v24 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v43;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v43 != v27)
        {
          objc_enumerationMutation(v24);
        }

        [(WDExportManager *)self _writeXMLWorkoutEvent:*(*(&v42 + 1) + 8 * i)];
      }

      v26 = [v24 countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v26);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v29 = [v4 allStatistics];
  v30 = [v29 allValues];

  v31 = [v30 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v39;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v39 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v38 + 1) + 8 * j);
        xmlTextWriterStartElement(self->_writer, "WorkoutStatistics");
        [(WDExportManager *)self _writeXMLWorkoutStatistics:v35];
        xmlTextWriterEndElement(self->_writer);
      }

      v32 = [v30 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v32);
  }

  v36 = [v4 metadata];
  [(WDExportManager *)self _writeXMLMetadataEntries:v36];

  xmlTextWriterEndElement(self->_writer);
  v37 = *MEMORY[0x277D85DE8];
}

- (void)_writeXMLObjectAttributes:(id)a3
{
  v19 = a3;
  v4 = [v19 sourceRevision];
  v5 = [v4 source];
  writer = self->_writer;
  v7 = [v5 name];
  xmlTextWriterWriteAttribute(writer, "sourceName", [v7 UTF8String]);

  v8 = [v4 version];
  v9 = [v8 length];

  if (v9)
  {
    v10 = self->_writer;
    v11 = [v4 version];
    xmlTextWriterWriteAttribute(v10, "sourceVersion", [v11 UTF8String]);
  }

  v12 = [v19 device];
  v13 = [v12 description];

  if ([v13 length])
  {
    xmlTextWriterWriteAttribute(self->_writer, "device", [v13 UTF8String]);
  }

  v14 = [v19 _creationDate];

  if (v14)
  {
    v15 = self->_writer;
    xmlDateFormatter = self->_xmlDateFormatter;
    v17 = [v19 _creationDate];
    v18 = [(NSDateFormatter *)xmlDateFormatter stringFromDate:v17];
    xmlTextWriterWriteAttribute(v15, "creationDate", [v18 UTF8String]);
  }
}

- (void)_writeXMLSampleAttributes:(id)a3
{
  v4 = a3;
  [(WDExportManager *)self _writeXMLObjectAttributes:v4];
  writer = self->_writer;
  xmlDateFormatter = self->_xmlDateFormatter;
  v7 = [v4 startDate];
  v8 = [(NSDateFormatter *)xmlDateFormatter stringFromDate:v7];
  xmlTextWriterWriteAttribute(writer, "startDate", [v8 UTF8String]);

  v9 = self->_writer;
  v10 = self->_xmlDateFormatter;
  v12 = [v4 endDate];

  v11 = [(NSDateFormatter *)v10 stringFromDate:v12];
  xmlTextWriterWriteAttribute(v9, "endDate", [v11 UTF8String]);
}

- (void)_writeXMLMetadataEntries:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        v9 = 0;
        do
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * v9);
          if ((_HKMetadataKeyIsPrivate() & 1) == 0)
          {
            xmlTextWriterStartElement(self->_writer, "MetadataEntry");
            xmlTextWriterWriteAttribute(self->_writer, "key", [v10 UTF8String]);
            v11 = [v5 valueForKey:v10];
            writer = self->_writer;
            v13 = [v11 description];
            xmlTextWriterWriteAttribute(writer, "value", [v13 UTF8String]);

            xmlTextWriterEndElement(self->_writer);
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_writeXMLWorkoutRouteStart:(id)a3
{
  writer = self->_writer;
  v5 = a3;
  xmlTextWriterStartElement(writer, "WorkoutRoute");
  [(WDExportManager *)self _writeXMLSampleAttributes:v5];
  v6 = [v5 metadata];

  [(WDExportManager *)self _writeXMLMetadataEntries:v6];
}

- (void)_writeXMLWorkoutRouteFileReference:(id)a3
{
  writer = self->_writer;
  v5 = a3;
  xmlTextWriterStartElement(writer, "FileReference");
  v6 = self->_writer;
  v7 = [v5 UTF8String];

  xmlTextWriterWriteAttribute(v6, "path", v7);
  v8 = self->_writer;

  xmlTextWriterEndElement(v8);
}

- (void)_writeXMLWorkoutStatistics:(id)a3
{
  v43 = a3;
  writer = self->_writer;
  v5 = [v43 quantityType];
  v6 = [v5 identifier];
  xmlTextWriterWriteAttribute(writer, "type", [v6 UTF8String]);

  v7 = self->_writer;
  xmlDateFormatter = self->_xmlDateFormatter;
  v9 = [v43 startDate];
  v10 = [(NSDateFormatter *)xmlDateFormatter stringFromDate:v9];
  xmlTextWriterWriteAttribute(v7, "startDate", [v10 UTF8String]);

  v11 = self->_writer;
  v12 = self->_xmlDateFormatter;
  v13 = [v43 endDate];
  v14 = [(NSDateFormatter *)v12 stringFromDate:v13];
  xmlTextWriterWriteAttribute(v11, "endDate", [v14 UTF8String]);

  v15 = [v43 quantityType];
  v16 = [(WDExportManager *)self _preferredUnitForObjectType:v15];

  v17 = [v43 averageQuantity];

  if (v17)
  {
    v18 = self->_writer;
    v19 = MEMORY[0x277CCACA8];
    v20 = [v43 averageQuantity];
    [v20 doubleValueForUnit:v16];
    v22 = [v19 stringWithFormat:@"%g", v21];
    xmlTextWriterWriteAttribute(v18, "average", [v22 UTF8String]);
  }

  v23 = [v43 minimumQuantity];

  if (v23)
  {
    v24 = self->_writer;
    v25 = MEMORY[0x277CCACA8];
    v26 = [v43 minimumQuantity];
    [v26 doubleValueForUnit:v16];
    v28 = [v25 stringWithFormat:@"%g", v27];
    xmlTextWriterWriteAttribute(v24, "minimum", [v28 UTF8String]);
  }

  v29 = [v43 maximumQuantity];

  if (v29)
  {
    v30 = self->_writer;
    v31 = MEMORY[0x277CCACA8];
    v32 = [v43 maximumQuantity];
    [v32 doubleValueForUnit:v16];
    v34 = [v31 stringWithFormat:@"%g", v33];
    xmlTextWriterWriteAttribute(v30, "maximum", [v34 UTF8String]);
  }

  v35 = [v43 sumQuantity];

  if (v35)
  {
    v36 = self->_writer;
    v37 = MEMORY[0x277CCACA8];
    v38 = [v43 sumQuantity];
    [v38 doubleValueForUnit:v16];
    v40 = [v37 stringWithFormat:@"%g", v39];
    xmlTextWriterWriteAttribute(v36, "sum", [v40 UTF8String]);
  }

  v41 = self->_writer;
  v42 = [v16 unitString];
  xmlTextWriterWriteAttribute(v41, "unit", [v42 UTF8String]);
}

- (void)_writeXMLActivitySummary:(id)a3 activeEnergyBurnedUnit:(id)a4
{
  v69 = a3;
  v6 = a4;
  xmlTextWriterStartElement(self->_writer, "ActivitySummary");
  v7 = [v69 _gregorianDateComponents];
  v8 = v7;
  if (v7)
  {
    writer = self->_writer;
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%04ld-%02ld-%02ld", objc_msgSend(v7, "year"), objc_msgSend(v7, "month"), objc_msgSend(v7, "day")];
    xmlTextWriterWriteAttribute(writer, "dateComponents", [v10 UTF8String]);
  }

  v11 = [v69 activeEnergyBurned];

  if (v11)
  {
    v12 = self->_writer;
    v13 = MEMORY[0x277CCACA8];
    v14 = [v69 activeEnergyBurned];
    [v14 doubleValueForUnit:v6];
    v16 = [v13 stringWithFormat:@"%g", v15];
    xmlTextWriterWriteAttribute(v12, "activeEnergyBurned", [v16 UTF8String]);
  }

  v17 = [v69 activeEnergyBurnedGoal];

  if (v17)
  {
    v18 = self->_writer;
    v19 = MEMORY[0x277CCACA8];
    v20 = [v69 activeEnergyBurnedGoal];
    [v20 doubleValueForUnit:v6];
    v22 = [v19 stringWithFormat:@"%g", v21];
    xmlTextWriterWriteAttribute(v18, "activeEnergyBurnedGoal", [v22 UTF8String]);
  }

  v23 = [v69 activeEnergyBurned];
  if (v23)
  {
  }

  else
  {
    v24 = [v69 activeEnergyBurnedGoal];

    if (!v24)
    {
      goto LABEL_11;
    }
  }

  v25 = self->_writer;
  v26 = [v6 unitString];
  xmlTextWriterWriteAttribute(v25, "activeEnergyBurnedUnit", [v26 UTF8String]);

LABEL_11:
  v27 = [v69 appleMoveTime];

  if (v27)
  {
    v28 = self->_writer;
    v29 = MEMORY[0x277CCACA8];
    v30 = [v69 appleMoveTime];
    v31 = [MEMORY[0x277CCDAB0] minuteUnit];
    [v30 doubleValueForUnit:v31];
    v33 = [v29 stringWithFormat:@"%g", v32];
    xmlTextWriterWriteAttribute(v28, "appleMoveTime", [v33 UTF8String]);
  }

  v34 = [v69 appleMoveTimeGoal];

  if (v34)
  {
    v35 = self->_writer;
    v36 = MEMORY[0x277CCACA8];
    v37 = [v69 appleMoveTimeGoal];
    v38 = [MEMORY[0x277CCDAB0] minuteUnit];
    [v37 doubleValueForUnit:v38];
    v40 = [v36 stringWithFormat:@"%g", v39];
    xmlTextWriterWriteAttribute(v35, "appleMoveTimeGoal", [v40 UTF8String]);
  }

  v41 = [v69 appleExerciseTime];

  if (v41)
  {
    v42 = self->_writer;
    v43 = MEMORY[0x277CCACA8];
    v44 = [v69 appleExerciseTime];
    v45 = [MEMORY[0x277CCDAB0] minuteUnit];
    [v44 doubleValueForUnit:v45];
    v47 = [v43 stringWithFormat:@"%g", v46];
    xmlTextWriterWriteAttribute(v42, "appleExerciseTime", [v47 UTF8String]);
  }

  v48 = [v69 appleExerciseTimeGoal];

  if (v48)
  {
    v49 = self->_writer;
    v50 = MEMORY[0x277CCACA8];
    v51 = [v69 appleExerciseTimeGoal];
    v52 = [MEMORY[0x277CCDAB0] minuteUnit];
    [v51 doubleValueForUnit:v52];
    v54 = [v50 stringWithFormat:@"%g", v53];
    xmlTextWriterWriteAttribute(v49, "appleExerciseTimeGoal", [v54 UTF8String]);
  }

  v55 = [v69 appleStandHours];

  if (v55)
  {
    v56 = self->_writer;
    v57 = MEMORY[0x277CCACA8];
    v58 = [v69 appleStandHours];
    v59 = [MEMORY[0x277CCDAB0] countUnit];
    [v58 doubleValueForUnit:v59];
    v61 = [v57 stringWithFormat:@"%g", v60];
    xmlTextWriterWriteAttribute(v56, "appleStandHours", [v61 UTF8String]);
  }

  v62 = [v69 appleStandHoursGoal];

  if (v62)
  {
    v63 = self->_writer;
    v64 = MEMORY[0x277CCACA8];
    v65 = [v69 appleStandHoursGoal];
    v66 = [MEMORY[0x277CCDAB0] countUnit];
    [v65 doubleValueForUnit:v66];
    v68 = [v64 stringWithFormat:@"%g", v67];
    xmlTextWriterWriteAttribute(v63, "appleStandHoursGoal", [v68 UTF8String]);
  }

  xmlTextWriterEndElement(self->_writer);
}

- (void)_writeCDAVitalsOrganizerStartWithStartDate:(id)a3 endDate:(id)a4
{
  writerCDA = self->_writerCDA;
  v7 = a4;
  v8 = a3;
  xmlTextWriterStartElement(writerCDA, "entry");
  xmlTextWriterWriteAttribute(self->_writerCDA, "typeCode", "DRIV");
  xmlTextWriterStartElement(self->_writerCDA, "organizer");
  xmlTextWriterWriteAttribute(self->_writerCDA, "classCode", "CLUSTER");
  xmlTextWriterWriteAttribute(self->_writerCDA, "moodCode", "EVN");
  xmlTextWriterStartElement(self->_writerCDA, "templateId");
  xmlTextWriterWriteAttribute(self->_writerCDA, "root", "2.16.840.1.113883.10.20.22.4.26");
  xmlTextWriterEndElement(self->_writerCDA);
  xmlTextWriterStartElement(self->_writerCDA, "id");
  xmlTextWriterWriteAttribute(self->_writerCDA, "root", "c6f88320-67ad-11db-bd13-0800200c9a66");
  xmlTextWriterEndElement(self->_writerCDA);
  xmlTextWriterStartElement(self->_writerCDA, "code");
  xmlTextWriterWriteAttribute(self->_writerCDA, "code", "46680005");
  xmlTextWriterWriteAttribute(self->_writerCDA, "codeSystem", "2.16.840.1.113883.6.96");
  xmlTextWriterWriteAttribute(self->_writerCDA, "codeSystemName", "SNOMED CT");
  xmlTextWriterWriteAttribute(self->_writerCDA, "displayName", "Vital signs");
  xmlTextWriterEndElement(self->_writerCDA);
  xmlTextWriterStartElement(self->_writerCDA, "statusCode");
  xmlTextWriterWriteAttribute(self->_writerCDA, "code", "completed");
  xmlTextWriterEndElement(self->_writerCDA);
  xmlTextWriterStartElement(self->_writerCDA, "effectiveTime");
  xmlTextWriterStartElement(self->_writerCDA, "low");
  v9 = self->_writerCDA;
  v10 = [(NSDateFormatter *)self->_cdaDateFormatter stringFromDate:v8];

  xmlTextWriterWriteAttribute(v9, "value", [v10 UTF8String]);
  xmlTextWriterEndElement(self->_writerCDA);
  xmlTextWriterStartElement(self->_writerCDA, "high");
  v11 = self->_writerCDA;
  v12 = [(NSDateFormatter *)self->_cdaDateFormatter stringFromDate:v7];

  xmlTextWriterWriteAttribute(v11, "value", [v12 UTF8String]);
  xmlTextWriterEndElement(self->_writerCDA);
  v13 = self->_writerCDA;

  xmlTextWriterEndElement(v13);
}

- (void)_writeCDAResultsOrganizerStart
{
  xmlTextWriterStartElement(self->_writerCDA, "entry");
  xmlTextWriterWriteAttribute(self->_writerCDA, "typeCode", "DRIV");
  xmlTextWriterStartElement(self->_writerCDA, "organizer");
  xmlTextWriterWriteAttribute(self->_writerCDA, "classCode", "BATTERY");
  xmlTextWriterWriteAttribute(self->_writerCDA, "moodCode", "EVN");
  xmlTextWriterStartElement(self->_writerCDA, "templateId");
  xmlTextWriterWriteAttribute(self->_writerCDA, "root", "2.16.840.1.113883.10.20.22.4.1");
  xmlTextWriterEndElement(self->_writerCDA);
  xmlTextWriterStartElement(self->_writerCDA, "id");
  xmlTextWriterWriteAttribute(self->_writerCDA, "root", "7d5a02b0-67a4-11db-bd13-0800200c9a66");
  xmlTextWriterEndElement(self->_writerCDA);
  xmlTextWriterStartElement(self->_writerCDA, "code");
  xmlTextWriterWriteAttribute(self->_writerCDA, "xsi:type", "CE");
  xmlTextWriterWriteAttribute(self->_writerCDA, "code", "386053000");
  xmlTextWriterWriteAttribute(self->_writerCDA, "displayName", "Result");
  xmlTextWriterWriteAttribute(self->_writerCDA, "codeSystem", "2.16.840.1.113883.6.96");
  xmlTextWriterWriteAttribute(self->_writerCDA, "codeSystemName", "SNOMED CT");
  xmlTextWriterEndElement(self->_writerCDA);
  xmlTextWriterStartElement(self->_writerCDA, "statusCode");
  xmlTextWriterWriteAttribute(self->_writerCDA, "code", "completed");
  writerCDA = self->_writerCDA;

  xmlTextWriterEndElement(writerCDA);
}

- (void)_writeCDAOrganizerEnd
{
  xmlTextWriterEndElement(self->_writerCDA);
  writerCDA = self->_writerCDA;

  xmlTextWriterEndElement(writerCDA);
}

- (void)_writeCDAEntryWithValue:(id)a3 type:(id)a4 sourceName:(id)a5 sourceVersion:(id)a6 device:(id)a7 unit:(id)a8 metadata:(id)a9 startDate:(id)a10 endDate:(id)a11
{
  v98 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v18 = a4;
  v92 = a5;
  v19 = a6;
  v20 = a7;
  v91 = a8;
  v21 = a9;
  v22 = a10;
  v23 = v18;
  v24 = a11;
  xmlTextWriterStartElement(self->_writerCDA, "component");
  xmlTextWriterStartElement(self->_writerCDA, "observation");
  xmlTextWriterWriteAttribute(self->_writerCDA, "classCode", "OBS");
  xmlTextWriterWriteAttribute(self->_writerCDA, "moodCode", "EVN");
  xmlTextWriterStartElement(self->_writerCDA, "templateId");
  xmlTextWriterWriteAttribute(self->_writerCDA, "root", "2.16.840.1.113883.10.20.22.4.27");
  xmlTextWriterEndElement(self->_writerCDA);
  xmlTextWriterStartElement(self->_writerCDA, "id");
  xmlTextWriterWriteAttribute(self->_writerCDA, "root", "c6f88321-67ad-11db-bd13-0800200c9a66");
  xmlTextWriterEndElement(self->_writerCDA);
  xmlTextWriterStartElement(self->_writerCDA, "code");
  writerCDA = self->_writerCDA;
  v26 = [v18 code];
  if (v26 > 17)
  {
    v36 = @"8310-5";
    v37 = @"251853006";
    if (v26 != 87)
    {
      v37 = 0;
    }

    if (v26 != 62)
    {
      v36 = v37;
    }

    if ((v26 - 71) >= 3)
    {
      v27 = v36;
    }

    else
    {
      v27 = @"106048009";
    }

    v31 = @"274776000";
    v38 = @"248750004";
    v39 = @"9279-1";
    if (v26 != 61)
    {
      v39 = 0;
    }

    if (v26 != 19)
    {
      v38 = v39;
    }

    if (v26 != 18)
    {
      v31 = v38;
    }

    v35 = v26 <= 61;
  }

  else
  {
    v27 = @"8480-6";
    v28 = @"8462-4";
    if (v26 != 17)
    {
      v28 = 0;
    }

    if (v26 != 16)
    {
      v27 = v28;
    }

    v29 = @"2710-2";
    v30 = @"365812005";
    if (v26 != 15)
    {
      v30 = 0;
    }

    if (v26 != 14)
    {
      v29 = v30;
    }

    if (v26 <= 15)
    {
      v27 = v29;
    }

    v31 = @"3141-9";
    v32 = @"8867-4";
    if (v26 != 5)
    {
      v32 = 0;
    }

    if (v26 != 3)
    {
      v31 = v32;
    }

    v33 = @"39156-5";
    v34 = @"8302-2";
    if (v26 != 2)
    {
      v34 = 0;
    }

    if (v26)
    {
      v33 = v34;
    }

    if (v26 <= 2)
    {
      v31 = v33;
    }

    v35 = v26 <= 13;
  }

  if (v35)
  {
    v40 = v31;
  }

  else
  {
    v40 = v27;
  }

  xmlTextWriterWriteAttribute(writerCDA, "code", [(__CFString *)v40 UTF8String]);
  if (getCategoryOfType(v18))
  {
    if (getCategoryOfType(v18) != 1)
    {
      goto LABEL_45;
    }

    v41 = "SNOMED CT";
    v42 = "2.16.840.1.113883.6.96";
  }

  else
  {
    v41 = "LOINC";
    v42 = "2.16.840.1.113883.6.1";
  }

  xmlTextWriterWriteAttribute(self->_writerCDA, "codeSystem", v42);
  xmlTextWriterWriteAttribute(self->_writerCDA, "codeSystemName", v41);
LABEL_45:
  v43 = self->_writerCDA;
  v44 = [v18 code];
  if (v44 > 17)
  {
    v54 = @"Body Temperature";
    v55 = @"Oral fluid input";
    if (v44 != 87)
    {
      v55 = 0;
    }

    if (v44 != 62)
    {
      v54 = v55;
    }

    if ((v44 - 71) >= 3)
    {
      v45 = v54;
    }

    else
    {
      v45 = @"Respiratory finding";
    }

    v49 = @"Finding of alcohol in blood";
    v56 = @"Peripheral blood flow";
    v57 = @"Respiratory rate";
    if (v44 != 61)
    {
      v57 = 0;
    }

    if (v44 != 19)
    {
      v56 = v57;
    }

    if (v44 != 18)
    {
      v49 = v56;
    }

    v53 = v44 <= 61;
  }

  else
  {
    v45 = @"Sysstolic blood pressure";
    v46 = @"Diastolic blood pressure";
    if (v44 != 17)
    {
      v46 = 0;
    }

    if (v44 != 16)
    {
      v45 = v46;
    }

    v47 = @"Oxygen saturation";
    v48 = @"Blood glucose level";
    if (v44 != 15)
    {
      v48 = 0;
    }

    if (v44 != 14)
    {
      v47 = v48;
    }

    if (v44 <= 15)
    {
      v45 = v47;
    }

    v49 = @"Body weight Measured";
    v50 = @"Heart rate";
    if (v44 != 5)
    {
      v50 = 0;
    }

    if (v44 != 3)
    {
      v49 = v50;
    }

    v51 = @"Body mass index";
    v52 = @"Height";
    if (v44 != 2)
    {
      v52 = 0;
    }

    if (v44)
    {
      v51 = v52;
    }

    if (v44 <= 2)
    {
      v49 = v51;
    }

    v53 = v44 <= 13;
  }

  if (v53)
  {
    v58 = v49;
  }

  else
  {
    v58 = v45;
  }

  xmlTextWriterWriteAttribute(v43, "displayName", [(__CFString *)v58 UTF8String]);
  xmlTextWriterEndElement(self->_writerCDA);
  xmlTextWriterStartElement(self->_writerCDA, "text");
  xmlTextWriterStartElement(self->_writerCDA, "sourceName");
  xmlTextWriterWriteString(self->_writerCDA, [v92 UTF8String]);
  xmlTextWriterEndElement(self->_writerCDA);
  if ([v19 length])
  {
    xmlTextWriterStartElement(self->_writerCDA, "sourceVersion");
    xmlTextWriterWriteString(self->_writerCDA, [v19 UTF8String]);
    xmlTextWriterEndElement(self->_writerCDA);
  }

  if ([v20 length])
  {
    xmlTextWriterStartElement(self->_writerCDA, "device");
    xmlTextWriterWriteString(self->_writerCDA, [v20 UTF8String]);
    xmlTextWriterEndElement(self->_writerCDA);
  }

  xmlTextWriterStartElement(self->_writerCDA, "value");
  objc_opt_class();
  v90 = v20;
  if (objc_opt_isKindOfClass())
  {
    v59 = self->_writerCDA;
    v60 = MEMORY[0x277CCACA8];
    [v17 doubleValue];
    v62 = [v60 stringWithFormat:@"%g", v61];
    xmlTextWriterWriteString(v59, [v62 UTF8String]);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      xmlTextWriterWriteString(self->_writerCDA, [v17 UTF8String]);
    }
  }

  xmlTextWriterEndElement(self->_writerCDA);
  xmlTextWriterStartElement(self->_writerCDA, "type");
  v63 = self->_writerCDA;
  v64 = [v18 identifier];
  xmlTextWriterWriteString(v63, [v64 UTF8String]);

  xmlTextWriterEndElement(self->_writerCDA);
  xmlTextWriterStartElement(self->_writerCDA, "unit");
  xmlTextWriterWriteString(self->_writerCDA, [v91 UTF8String]);
  xmlTextWriterEndElement(self->_writerCDA);
  if (v21)
  {
    v84 = v24;
    v85 = v22;
    v87 = v19;
    v88 = v18;
    v89 = v17;
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v86 = v21;
    v65 = v21;
    v66 = [v65 countByEnumeratingWithState:&v93 objects:v97 count:16];
    if (v66)
    {
      v67 = v66;
      v68 = *v94;
      do
      {
        for (i = 0; i != v67; ++i)
        {
          if (*v94 != v68)
          {
            objc_enumerationMutation(v65);
          }

          v70 = *(*(&v93 + 1) + 8 * i);
          if ((_HKMetadataKeyIsPrivate() & 1) == 0)
          {
            xmlTextWriterStartElement(self->_writerCDA, "metadataEntry");
            xmlTextWriterStartElement(self->_writerCDA, "key");
            xmlTextWriterWriteString(self->_writerCDA, [v70 UTF8String]);
            xmlTextWriterEndElement(self->_writerCDA);
            v71 = [v65 valueForKey:v70];
            xmlTextWriterStartElement(self->_writerCDA, "value");
            v72 = self->_writerCDA;
            v73 = [v71 description];
            xmlTextWriterWriteString(v72, [v73 UTF8String]);

            xmlTextWriterEndElement(self->_writerCDA);
            xmlTextWriterEndElement(self->_writerCDA);
          }
        }

        v67 = [v65 countByEnumeratingWithState:&v93 objects:v97 count:16];
      }

      while (v67);
    }

    v23 = v88;
    v17 = v89;
    v21 = v86;
    v19 = v87;
    v24 = v84;
    v22 = v85;
  }

  xmlTextWriterEndElement(self->_writerCDA);
  xmlTextWriterStartElement(self->_writerCDA, "statusCode");
  xmlTextWriterWriteAttribute(self->_writerCDA, "code", "completed");
  xmlTextWriterEndElement(self->_writerCDA);
  xmlTextWriterStartElement(self->_writerCDA, "effectiveTime");
  xmlTextWriterStartElement(self->_writerCDA, "low");
  v74 = self->_writerCDA;
  v75 = [(NSDateFormatter *)self->_cdaDateFormatter stringFromDate:v22];
  xmlTextWriterWriteAttribute(v74, "value", [v75 UTF8String]);

  xmlTextWriterEndElement(self->_writerCDA);
  xmlTextWriterStartElement(self->_writerCDA, "high");
  v76 = self->_writerCDA;
  v77 = [(NSDateFormatter *)self->_cdaDateFormatter stringFromDate:v24];
  xmlTextWriterWriteAttribute(v76, "value", [v77 UTF8String]);

  xmlTextWriterEndElement(self->_writerCDA);
  xmlTextWriterEndElement(self->_writerCDA);
  xmlTextWriterStartElement(self->_writerCDA, "value");
  xmlTextWriterWriteAttribute(self->_writerCDA, "xsi:type", "PQ");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v78 = self->_writerCDA;
    v79 = MEMORY[0x277CCACA8];
    [v17 doubleValue];
    v81 = [v79 stringWithFormat:@"%g", v80];
    xmlTextWriterWriteAttribute(v78, "value", [v81 UTF8String]);

    v82 = v90;
  }

  else
  {
    objc_opt_class();
    v82 = v90;
    if (objc_opt_isKindOfClass())
    {
      xmlTextWriterWriteAttribute(self->_writerCDA, "value", [v17 UTF8String]);
    }
  }

  xmlTextWriterWriteAttribute(self->_writerCDA, "unit", [v91 UTF8String]);
  xmlTextWriterEndElement(self->_writerCDA);
  xmlTextWriterStartElement(self->_writerCDA, "interpretationCode");
  xmlTextWriterWriteAttribute(self->_writerCDA, "code", "N");
  xmlTextWriterWriteAttribute(self->_writerCDA, "codeSystem", "2.16.840.1.113883.5.83");
  xmlTextWriterEndElement(self->_writerCDA);
  xmlTextWriterEndElement(self->_writerCDA);
  xmlTextWriterEndElement(self->_writerCDA);

  v83 = *MEMORY[0x277D85DE8];
}

- (void)_writeXMLMedicalRecordWithType:(id)a3 identifier:(id)a4 sourceName:(id)a5 sourceURL:(id)a6 fhirVersion:(id)a7 receivedDate:(id)a8 jsonFilePath:(id)a9
{
  writer = self->_writer;
  v17 = a9;
  v18 = a8;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  xmlTextWriterStartElement(writer, "ClinicalRecord");
  v24 = self->_writer;
  v25 = [v23 UTF8String];

  xmlTextWriterWriteAttribute(v24, "type", v25);
  v26 = self->_writer;
  v27 = [v22 UTF8String];

  xmlTextWriterWriteAttribute(v26, "identifier", v27);
  v28 = self->_writer;
  v29 = [v21 UTF8String];

  xmlTextWriterWriteAttribute(v28, "sourceName", v29);
  v30 = self->_writer;
  v31 = [v20 UTF8String];

  xmlTextWriterWriteAttribute(v30, "sourceURL", v31);
  v32 = self->_writer;
  v33 = [v19 UTF8String];

  xmlTextWriterWriteAttribute(v32, "fhirVersion", v33);
  v34 = self->_writer;
  v35 = [v18 UTF8String];

  xmlTextWriterWriteAttribute(v34, "receivedDate", v35);
  v36 = self->_writer;
  v37 = [v17 UTF8String];

  xmlTextWriterWriteAttribute(v36, "resourceFilePath", v37);
  v38 = self->_writer;

  xmlTextWriterEndElement(v38);
}

- (void)_writeXMLPersonWithDateOfBirth:(id)a3 biologicalSex:(int64_t)a4 bloodType:(int64_t)a5 skinType:(int64_t)a6 cardioFitnessMedicationsUse:(id)a7
{
  writer = self->_writer;
  v13 = a7;
  v14 = a3;
  xmlTextWriterStartElement(writer, "ExportDate");
  v15 = self->_writer;
  xmlDateFormatter = self->_xmlDateFormatter;
  v17 = [MEMORY[0x277CBEAA8] date];
  v18 = [(NSDateFormatter *)xmlDateFormatter stringFromDate:v17];
  xmlTextWriterWriteAttribute(v15, "value", [v18 UTF8String]);

  xmlTextWriterEndElement(self->_writer);
  xmlTextWriterStartElement(self->_writer, "Me");
  v34 = objc_opt_new();
  [v34 setDateFormat:@"yyyy-MM-dd"];
  v19 = self->_writer;
  v20 = [*MEMORY[0x277CCBB18] UTF8String];
  v21 = [v34 stringFromDate:v14];

  xmlTextWriterWriteAttribute(v19, v20, [v21 UTF8String]);
  v22 = self->_writer;
  v23 = [*MEMORY[0x277CCBB08] UTF8String];
  if (a4 > 3)
  {
    v24 = 0;
  }

  else
  {
    v24 = off_2796E7600[a4];
  }

  xmlTextWriterWriteAttribute(v22, v23, [(__CFString *)v24 UTF8String]);
  v25 = self->_writer;
  v26 = [*MEMORY[0x277CCBB10] UTF8String];
  if (a5 > 8)
  {
    v27 = 0;
  }

  else
  {
    v27 = off_2796E7620[a5];
  }

  xmlTextWriterWriteAttribute(v25, v26, [(__CFString *)v27 UTF8String]);
  v28 = self->_writer;
  v29 = [*MEMORY[0x277CCBB20] UTF8String];
  if (a6 > 6)
  {
    v30 = 0;
  }

  else
  {
    v30 = off_2796E7668[a6];
  }

  xmlTextWriterWriteAttribute(v28, v29, [(__CFString *)v30 UTF8String]);
  v31 = self->_writer;
  v32 = [*MEMORY[0x277CCDED0] UTF8String];
  v33 = [v13 UTF8String];

  xmlTextWriterWriteAttribute(v31, v32, v33);
  xmlTextWriterEndElement(self->_writer);
}

- (void)_writeCDAHeaderWithName:(id)a3 birthData:(id)a4 biologicalSex:(int64_t)a5
{
  v26 = a3;
  writerCDA = self->_writerCDA;
  v9 = a4;
  xmlTextWriterStartElement(writerCDA, "realmCode");
  xmlTextWriterWriteAttribute(self->_writerCDA, "code", "US");
  xmlTextWriterEndElement(self->_writerCDA);
  xmlTextWriterStartElement(self->_writerCDA, "typeId");
  xmlTextWriterWriteAttribute(self->_writerCDA, "root", "2.16.840.1.113883.1.3");
  xmlTextWriterWriteAttribute(self->_writerCDA, "extension", "POCD_HD000040");
  xmlTextWriterEndElement(self->_writerCDA);
  xmlTextWriterStartElement(self->_writerCDA, "templateId");
  xmlTextWriterWriteAttribute(self->_writerCDA, "root", "2.16.840.1.113883.10.20.22.1.2");
  xmlTextWriterEndElement(self->_writerCDA);
  xmlTextWriterStartElement(self->_writerCDA, "id");
  xmlTextWriterWriteAttribute(self->_writerCDA, "extension", "Health Export CDA");
  xmlTextWriterWriteAttribute(self->_writerCDA, "root", "1.1.1.1.1.1.1.1.1");
  xmlTextWriterEndElement(self->_writerCDA);
  xmlTextWriterStartElement(self->_writerCDA, "code");
  xmlTextWriterWriteAttribute(self->_writerCDA, "codeSystem", "2.16.840.1.113883.6.1");
  xmlTextWriterWriteAttribute(self->_writerCDA, "codeSystemName", "LOINC");
  xmlTextWriterWriteAttribute(self->_writerCDA, "code", "34109-9");
  xmlTextWriterWriteAttribute(self->_writerCDA, "displayName", "Note");
  xmlTextWriterEndElement(self->_writerCDA);
  xmlTextWriterStartElement(self->_writerCDA, "title");
  xmlTextWriterWriteString(self->_writerCDA, "Health Data Export");
  xmlTextWriterEndElement(self->_writerCDA);
  xmlTextWriterStartElement(self->_writerCDA, "effectiveTime");
  v10 = self->_writerCDA;
  cdaDateFormatter = self->_cdaDateFormatter;
  v12 = [MEMORY[0x277CBEAA8] date];
  v13 = [(NSDateFormatter *)cdaDateFormatter stringFromDate:v12];
  xmlTextWriterWriteAttribute(v10, "value", [v13 UTF8String]);

  xmlTextWriterEndElement(self->_writerCDA);
  xmlTextWriterStartElement(self->_writerCDA, "confidentialityCode");
  xmlTextWriterWriteAttribute(self->_writerCDA, "code", "N");
  xmlTextWriterWriteAttribute(self->_writerCDA, "codeSystem", "2.16.840.1.113883.5.25");
  xmlTextWriterEndElement(self->_writerCDA);
  xmlTextWriterStartElement(self->_writerCDA, "recordTarget");
  xmlTextWriterStartElement(self->_writerCDA, "patientRole");
  xmlTextWriterStartElement(self->_writerCDA, "id");
  xmlTextWriterWriteAttribute(self->_writerCDA, "root", "2.16.840.1.113883.4.6");
  xmlTextWriterWriteAttribute(self->_writerCDA, "nullFlavor", "NA");
  xmlTextWriterEndElement(self->_writerCDA);
  xmlTextWriterStartElement(self->_writerCDA, "patient");
  if (v26)
  {
    xmlTextWriterStartElement(self->_writerCDA, "name");
    xmlTextWriterWriteAttribute(self->_writerCDA, "use", "CL");
    xmlTextWriterWriteString(self->_writerCDA, [v26 UTF8String]);
    xmlTextWriterEndElement(self->_writerCDA);
  }

  if (a5 && a5 != 3)
  {
    if (a5 == 1)
    {
      v14 = @"F";
    }

    else
    {
      v14 = @"M";
    }

    v15 = @"Male";
    if (a5 == 1)
    {
      v15 = @"Female";
    }

    v16 = self->_writerCDA;
    v17 = v15;
    v18 = v14;
    xmlTextWriterStartElement(v16, "administrativeGenderCode");
    v19 = self->_writerCDA;
    v20 = [(__CFString *)v18 UTF8String];

    xmlTextWriterWriteAttribute(v19, "code", v20);
    xmlTextWriterWriteAttribute(self->_writerCDA, "codeSystem", "2.16.840.1.113883.5.1");
    v21 = self->_writerCDA;
    v22 = [(__CFString *)v17 UTF8String];

    xmlTextWriterWriteAttribute(v21, "displayName", v22);
    xmlTextWriterEndElement(self->_writerCDA);
  }

  v23 = objc_opt_new();
  [v23 setDateFormat:@"yyyyMMdd"];
  xmlTextWriterStartElement(self->_writerCDA, "birthTime");
  v24 = self->_writerCDA;
  v25 = [v23 stringFromDate:v9];

  xmlTextWriterWriteAttribute(v24, "value", [v25 UTF8String]);
  xmlTextWriterEndElement(self->_writerCDA);
  xmlTextWriterEndElement(self->_writerCDA);
  xmlTextWriterEndElement(self->_writerCDA);
  xmlTextWriterEndElement(self->_writerCDA);
}

- (void)_writeCDAVitalHeader
{
  xmlTextWriterStartElement(self->_writerCDA, "component");
  xmlTextWriterStartElement(self->_writerCDA, "section");
  xmlTextWriterStartElement(self->_writerCDA, "templateId");
  xmlTextWriterWriteAttribute(self->_writerCDA, "root", "2.16.840.1.113883.10.20.22.2.4.1");
  xmlTextWriterEndElement(self->_writerCDA);
  xmlTextWriterStartElement(self->_writerCDA, "code");
  xmlTextWriterWriteAttribute(self->_writerCDA, "codeSystem", "2.16.840.1.113883.6.1");
  xmlTextWriterWriteAttribute(self->_writerCDA, "codeSystemName", "LOINC");
  xmlTextWriterWriteAttribute(self->_writerCDA, "code", "8716-3");
  xmlTextWriterWriteAttribute(self->_writerCDA, "displayName", "VITAL SIGNS");
  xmlTextWriterEndElement(self->_writerCDA);
  xmlTextWriterStartElement(self->_writerCDA, "title");
  xmlTextWriterWriteString(self->_writerCDA, "Vital Signs");
  xmlTextWriterEndElement(self->_writerCDA);
  xmlTextWriterStartElement(self->_writerCDA, "text");
  writerCDA = self->_writerCDA;

  xmlTextWriterEndElement(writerCDA);
}

- (void)_writeCDAResultsHeader
{
  xmlTextWriterStartElement(self->_writerCDA, "component");
  xmlTextWriterStartElement(self->_writerCDA, "section");
  xmlTextWriterStartElement(self->_writerCDA, "templateId");
  xmlTextWriterWriteAttribute(self->_writerCDA, "root", "2.16.840.1.113883.10.20.22.2.3.1");
  xmlTextWriterEndElement(self->_writerCDA);
  xmlTextWriterStartElement(self->_writerCDA, "code");
  xmlTextWriterWriteAttribute(self->_writerCDA, "codeSystem", "2.16.840.1.113883.6.1");
  xmlTextWriterWriteAttribute(self->_writerCDA, "codeSystemName", "LOINC");
  xmlTextWriterWriteAttribute(self->_writerCDA, "code", "30954-2");
  xmlTextWriterWriteAttribute(self->_writerCDA, "displayName", "RESULTS");
  xmlTextWriterEndElement(self->_writerCDA);
  xmlTextWriterStartElement(self->_writerCDA, "title");
  xmlTextWriterWriteString(self->_writerCDA, "Results");
  xmlTextWriterEndElement(self->_writerCDA);
  xmlTextWriterStartElement(self->_writerCDA, "text");
  writerCDA = self->_writerCDA;

  xmlTextWriterEndElement(writerCDA);
}

- (void)_writeCDASectionFooter
{
  xmlTextWriterEndElement(self->_writerCDA);
  writerCDA = self->_writerCDA;

  xmlTextWriterEndElement(writerCDA);
}

- (void)_writeVisionRx:(id)a3
{
  v4 = a3;
  v5 = [v4 prescriptionType];
  v6 = [v4 dateIssued];
  v7 = [v4 expirationDate];
  [(WDExportManager *)self _writeVisionRxType:v5 dateIssued:v6 expirationDate:v7];

  v9 = [v4 device];
  v8 = [v4 metadata];

  [(WDExportManager *)self _writeVisionRxDevice:v9 metadata:v8];
}

- (void)_writeGlassesRx:(id)a3
{
  v4 = a3;
  v5 = [v4 prescriptionType];
  v6 = [v4 dateIssued];
  v7 = [v4 expirationDate];
  [(WDExportManager *)self _writeVisionRxType:v5 dateIssued:v6 expirationDate:v7];

  xmlTextWriterStartElement(self->_writer, "RightEye");
  v41 = [v4 rightEye];
  v47 = [v41 sphere];
  v39 = [v4 rightEye];
  v45 = [v39 cylinder];
  v37 = [v4 rightEye];
  v43 = [v37 axis];
  v35 = [v4 rightEye];
  v8 = [v35 addPower];
  v33 = [v4 rightEye];
  v9 = [v33 vertexDistance];
  v31 = [v4 rightEye];
  v29 = [v31 prism];
  v10 = [v29 amount];
  v27 = [v4 rightEye];
  v11 = [v27 prism];
  v12 = [v11 angle];
  v13 = [v4 rightEye];
  v14 = [v13 farPupillaryDistance];
  v15 = [v4 rightEye];
  v16 = [v15 nearPupillaryDistance];
  [(WDExportManager *)self _writeGlassesRxSphere:v47 cylinder:v45 axis:v43 add:v8 vertex:v9 prismAmount:v10 prismAngle:v12 farPD:v14 nearPD:v16];

  xmlTextWriterEndElement(self->_writer);
  xmlTextWriterStartElement(self->_writer, "LeftEye");
  v42 = [v4 leftEye];
  v48 = [v42 sphere];
  v40 = [v4 leftEye];
  v46 = [v40 cylinder];
  v38 = [v4 leftEye];
  v44 = [v38 axis];
  v36 = [v4 leftEye];
  v17 = [v36 addPower];
  v34 = [v4 leftEye];
  v18 = [v34 vertexDistance];
  v32 = [v4 leftEye];
  v30 = [v32 prism];
  v19 = [v30 amount];
  v28 = [v4 leftEye];
  v20 = [v28 prism];
  v21 = [v20 angle];
  v22 = [v4 leftEye];
  v23 = [v22 farPupillaryDistance];
  v24 = [v4 rightEye];
  v25 = [v24 nearPupillaryDistance];
  [(WDExportManager *)self _writeGlassesRxSphere:v48 cylinder:v46 axis:v44 add:v17 vertex:v18 prismAmount:v19 prismAngle:v21 farPD:v23 nearPD:v25];

  xmlTextWriterEndElement(self->_writer);
  v49 = [v4 device];
  v26 = [v4 metadata];

  [(WDExportManager *)self _writeVisionRxDevice:v49 metadata:v26];
}

- (void)_writeContactsRx:(id)a3
{
  v4 = a3;
  v5 = [v4 prescriptionType];
  v6 = [v4 dateIssued];
  v7 = [v4 expirationDate];
  [(WDExportManager *)self _writeVisionRxType:v5 dateIssued:v6 expirationDate:v7];

  writer = self->_writer;
  v9 = [v4 brand];
  xmlTextWriterWriteAttribute(writer, "brand", [v9 UTF8String]);

  xmlTextWriterStartElement(self->_writer, "RightEye");
  v33 = [v4 rightEye];
  v10 = [v33 sphere];
  v31 = [v4 rightEye];
  v11 = [v31 cylinder];
  v29 = [v4 rightEye];
  v12 = [v29 axis];
  v27 = [v4 rightEye];
  v13 = [v27 addPower];
  v14 = [v4 rightEye];
  v15 = [v14 baseCurve];
  v16 = [v4 rightEye];
  v17 = [v16 diameter];
  [(WDExportManager *)self _writeContactsRxSphere:v10 cylinder:v11 axis:v12 add:v13 baseCurve:v15 diameter:v17];

  xmlTextWriterEndElement(self->_writer);
  xmlTextWriterStartElement(self->_writer, "LeftEye");
  v34 = [v4 leftEye];
  v18 = [v34 sphere];
  v32 = [v4 leftEye];
  v19 = [v32 cylinder];
  v30 = [v4 leftEye];
  v20 = [v30 axis];
  v28 = [v4 leftEye];
  v21 = [v28 addPower];
  v22 = [v4 leftEye];
  v23 = [v22 baseCurve];
  v24 = [v4 leftEye];
  v25 = [v24 diameter];
  [(WDExportManager *)self _writeContactsRxSphere:v18 cylinder:v19 axis:v20 add:v21 baseCurve:v23 diameter:v25];

  xmlTextWriterEndElement(self->_writer);
  v35 = [v4 device];
  v26 = [v4 metadata];

  [(WDExportManager *)self _writeVisionRxDevice:v35 metadata:v26];
}

- (void)_writeVisionRxType:(unint64_t)a3 dateIssued:(id)a4 expirationDate:(id)a5
{
  v17 = a5;
  if (a3 == 1)
  {
    v8 = @"glasses";
  }

  else
  {
    v8 = @"contacts";
  }

  writer = self->_writer;
  v10 = v8;
  v11 = a4;
  xmlTextWriterWriteAttribute(writer, "type", [(__CFString *)v8 UTF8String]);
  v12 = self->_writer;
  v13 = [(NSDateFormatter *)self->_xmlDateFormatter stringFromDate:v11];

  xmlTextWriterWriteAttribute(v12, "dateIssued", [v13 UTF8String]);
  v14 = v17;
  if (v17)
  {
    v15 = self->_writer;
    v16 = [(NSDateFormatter *)self->_xmlDateFormatter stringFromDate:v17];
    xmlTextWriterWriteAttribute(v15, "expirationDate", [v16 UTF8String]);

    v14 = v17;
  }
}

- (void)_writeVisionRxDevice:(id)a3 metadata:(id)a4
{
  v8 = a4;
  if (a3)
  {
    writer = self->_writer;
    v7 = [a3 description];
    xmlTextWriterWriteAttribute(writer, "device", [v7 UTF8String]);
  }

  [(WDExportManager *)self _writeXMLMetadataEntries:v8];
}

- (void)_writeGlassesRxSphere:(id)a3 cylinder:(id)a4 axis:(id)a5 add:(id)a6 vertex:(id)a7 prismAmount:(id)a8 prismAngle:(id)a9 farPD:(id)a10 nearPD:(id)a11
{
  v61 = a7;
  v17 = a8;
  v18 = a9;
  v19 = a10;
  v20 = a11;
  [(WDExportManager *)self _writeVisionRxSphere:a3 cylinder:a4 axis:a5 add:a6];
  if (v61)
  {
    writer = self->_writer;
    v22 = MEMORY[0x277CCACA8];
    v23 = [v61 _unit];
    [v61 doubleValueForUnit:v23];
    v25 = [v22 stringWithFormat:@"%g", v24];
    xmlTextWriterWriteAttribute(writer, "vertex", [v25 UTF8String]);

    v26 = self->_writer;
    v27 = [v61 _unit];
    v28 = [v27 description];
    xmlTextWriterWriteAttribute(v26, "vertexUnit", [v28 UTF8String]);
  }

  if (v17)
  {
    v29 = self->_writer;
    v30 = MEMORY[0x277CCACA8];
    v31 = [v17 _unit];
    [v17 doubleValueForUnit:v31];
    v33 = [v30 stringWithFormat:@"%g", v32];
    xmlTextWriterWriteAttribute(v29, "prismAmount", [v33 UTF8String]);

    v34 = self->_writer;
    v35 = [v17 _unit];
    v36 = [v35 description];
    xmlTextWriterWriteAttribute(v34, "prismAmountUnit", [v36 UTF8String]);
  }

  if (v18)
  {
    v37 = self->_writer;
    v38 = MEMORY[0x277CCACA8];
    v39 = [v18 _unit];
    [v18 doubleValueForUnit:v39];
    v41 = [v38 stringWithFormat:@"%g", v40];
    xmlTextWriterWriteAttribute(v37, "prismAngle", [v41 UTF8String]);

    v42 = self->_writer;
    v43 = [v18 _unit];
    v44 = [v43 description];
    xmlTextWriterWriteAttribute(v42, "prismAngleUnit", [v44 UTF8String]);
  }

  if (v19)
  {
    v45 = self->_writer;
    v46 = MEMORY[0x277CCACA8];
    v47 = [v19 _unit];
    [v19 doubleValueForUnit:v47];
    v49 = [v46 stringWithFormat:@"%g", v48];
    xmlTextWriterWriteAttribute(v45, "farPD", [v49 UTF8String]);

    v50 = self->_writer;
    v51 = [v19 _unit];
    v52 = [v51 description];
    xmlTextWriterWriteAttribute(v50, "farPDUnit", [v52 UTF8String]);
  }

  if (v20)
  {
    v53 = self->_writer;
    v54 = MEMORY[0x277CCACA8];
    v55 = [v20 _unit];
    [v20 doubleValueForUnit:v55];
    v57 = [v54 stringWithFormat:@"%g", v56];
    xmlTextWriterWriteAttribute(v53, "nearPD", [v57 UTF8String]);

    v58 = self->_writer;
    v59 = [v20 _unit];
    v60 = [v59 description];
    xmlTextWriterWriteAttribute(v58, "nearPDUnit", [v60 UTF8String]);
  }
}

- (void)_writeContactsRxSphere:(id)a3 cylinder:(id)a4 axis:(id)a5 add:(id)a6 baseCurve:(id)a7 diameter:(id)a8
{
  v31 = a7;
  v14 = a8;
  [(WDExportManager *)self _writeVisionRxSphere:a3 cylinder:a4 axis:a5 add:a6];
  if (v31)
  {
    writer = self->_writer;
    v16 = MEMORY[0x277CCACA8];
    v17 = [v31 _unit];
    [v31 doubleValueForUnit:v17];
    v19 = [v16 stringWithFormat:@"%g", v18];
    xmlTextWriterWriteAttribute(writer, "baseCurve", [v19 UTF8String]);

    v20 = self->_writer;
    v21 = [v31 _unit];
    v22 = [v21 description];
    xmlTextWriterWriteAttribute(v20, "baseCurveUnit", [v22 UTF8String]);
  }

  if (v14)
  {
    v23 = self->_writer;
    v24 = MEMORY[0x277CCACA8];
    v25 = [v14 _unit];
    [v14 doubleValueForUnit:v25];
    v27 = [v24 stringWithFormat:@"%g", v26];
    xmlTextWriterWriteAttribute(v23, "diameter", [v27 UTF8String]);

    v28 = self->_writer;
    v29 = [v14 _unit];
    v30 = [v29 description];
    xmlTextWriterWriteAttribute(v28, "diameterUnit", [v30 UTF8String]);
  }
}

- (void)_writeVisionRxSphere:(id)a3 cylinder:(id)a4 axis:(id)a5 add:(id)a6
{
  v45 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v45)
  {
    writer = self->_writer;
    v14 = MEMORY[0x277CCACA8];
    v15 = [v45 _unit];
    [v45 doubleValueForUnit:v15];
    v17 = [v14 stringWithFormat:@"%g", v16];
    xmlTextWriterWriteAttribute(writer, "sphere", [v17 UTF8String]);

    v18 = self->_writer;
    v19 = [v45 _unit];
    v20 = [v19 description];
    xmlTextWriterWriteAttribute(v18, "sphereUnit", [v20 UTF8String]);
  }

  if (v10)
  {
    v21 = self->_writer;
    v22 = MEMORY[0x277CCACA8];
    v23 = [v10 _unit];
    [v10 doubleValueForUnit:v23];
    v25 = [v22 stringWithFormat:@"%g", v24];
    xmlTextWriterWriteAttribute(v21, "cylinder", [v25 UTF8String]);

    v26 = self->_writer;
    v27 = [v10 _unit];
    v28 = [v27 description];
    xmlTextWriterWriteAttribute(v26, "cylinderUnit", [v28 UTF8String]);
  }

  if (v11)
  {
    v29 = self->_writer;
    v30 = MEMORY[0x277CCACA8];
    v31 = [v11 _unit];
    [v11 doubleValueForUnit:v31];
    v33 = [v30 stringWithFormat:@"%g", v32];
    xmlTextWriterWriteAttribute(v29, "axis", [v33 UTF8String]);

    v34 = self->_writer;
    v35 = [v11 _unit];
    v36 = [v35 description];
    xmlTextWriterWriteAttribute(v34, "axisUnit", [v36 UTF8String]);
  }

  if (v12)
  {
    v37 = self->_writer;
    v38 = MEMORY[0x277CCACA8];
    v39 = [v12 _unit];
    [v12 doubleValueForUnit:v39];
    v41 = [v38 stringWithFormat:@"%g", v40];
    xmlTextWriterWriteAttribute(v37, "add", [v41 UTF8String]);

    v42 = self->_writer;
    v43 = [v12 _unit];
    v44 = [v43 description];
    xmlTextWriterWriteAttribute(v42, "addUnit", [v44 UTF8String]);
  }
}

- (void)_writeHealthRecord:(id)a3 documentDirectory:(id)a4 fileNamesInUse:(id)a5
{
  v19 = a3;
  v18 = a4;
  v7 = a5;
  v8 = [v19 endDate];
  v9 = objc_alloc(MEMORY[0x277CBEA80]);
  v10 = [v9 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v11 = [v10 components:30 fromDate:v8];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"cda_%ld%02ld%02ld.xml", objc_msgSend(v11, "year"), objc_msgSend(v11, "month"), objc_msgSend(v11, "day")];
  if ([v7 containsObject:v12])
  {
    v13 = 1;
    do
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"cda_%ld%02ld%02ld_%02ld.xml", objc_msgSend(v11, "year"), objc_msgSend(v11, "month"), objc_msgSend(v11, "day"), v13];

      ++v13;
      v12 = v14;
    }

    while (([v7 containsObject:v14] & 1) != 0);
  }

  else
  {
    v14 = v12;
  }

  [v7 addObject:v14];
  v15 = [v18 stringByAppendingPathComponent:v14];
  v16 = [v19 document];
  v17 = [v16 documentData];

  [v17 writeToFile:v15 atomically:1];
}

- (void)_exportHealthRecords
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1(&dword_251E85000, v0, v1, "Unable to create document directory: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __39__WDExportManager__exportHealthRecords__block_invoke(uint64_t a1, void *a2, void *a3, int a4, void *a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  if (!v10)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
    {
      __39__WDExportManager__exportHealthRecords__block_invoke_cold_1();
    }

    v17 = *(a1 + 32);
    v16 = a1 + 32;
    [v17 setExportFailed:1];
    goto LABEL_14;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v10);
        }

        [*(a1 + 32) _writeHealthRecord:*(*(&v19 + 1) + 8 * v15++) documentDirectory:*(a1 + 40) fileNamesInUse:*(a1 + 48)];
      }

      while (v13 != v15);
      v13 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  if (a4)
  {
    v16 = a1 + 32;
LABEL_14:
    dispatch_semaphore_signal(*(*v16 + 40));
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)_electrocardiogramHeaderWithName:(id)a3 dateOfBirth:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v8 = WDBundle();
  v9 = [v8 localizedStringForKey:@"ECG_CSV_NAME_TITLE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Cinnamon"];
  v10 = HKConditionallyRedactedHeartRhythmString();
  [v7 appendString:v10];

  if (v5)
  {
    [v7 appendString:{@", "}];
    [v7 appendString:v5];
  }

  [v7 appendString:@"\n"];
  v11 = WDBundle();
  v12 = [v11 localizedStringForKey:@"ECG_CSV_DOB_TITLE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Cinnamon"];
  v13 = HKConditionallyRedactedHeartRhythmString();
  [v7 appendString:v13];

  if (v6)
  {
    v14 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v14 setDateStyle:2];
    [v7 appendString:{@", "}];
    v15 = MEMORY[0x277CCACA8];
    v16 = [v14 stringFromDate:v6];
    v17 = [v15 stringWithFormat:@"%@", v16];
    [v7 appendString:v17];
  }

  [v7 appendString:@"\n"];

  return v7;
}

- (BOOL)_writeElectrocardiogramsToDisk:(id)a3 header:(id)a4 version:(id)a5
{
  v62[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v51 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v49 = self;
  v11 = [(NSString *)self->_exportPath stringByAppendingPathComponent:@"electrocardiograms"];
  v61 = *MEMORY[0x277CCA1B0];
  v62[0] = *MEMORY[0x277CCA190];
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:&v61 count:1];
  v59 = 0;
  v50 = v11;
  LOBYTE(v11) = [v10 createDirectoryAtPath:v11 withIntermediateDirectories:1 attributes:v12 error:&v59];
  v13 = v59;

  if (v11)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v15 = objc_alloc(MEMORY[0x277CBEA80]);
    v48 = [v15 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    obj = v8;
    v47 = [obj countByEnumeratingWithState:&v55 objects:v60 count:16];
    if (v47)
    {
      v41 = v13;
      v42 = v10;
      v43 = v8;
      v45 = *v56;
      v46 = v9;
      while (2)
      {
        for (i = 0; i != v47; ++i)
        {
          if (*v56 != v45)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v55 + 1) + 8 * i);
          context = objc_autoreleasePoolPush();
          v18 = [v17 startDate];
          v19 = [v48 components:28 fromDate:v18];

          v52 = v19;
          v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"ecg_%ld-%02ld-%02ld", objc_msgSend(v19, "year"), objc_msgSend(v19, "month"), objc_msgSend(v19, "day")];
          v21 = v20;
          if ([v14 containsObject:v20])
          {
            v22 = 1;
            v23 = v20;
            do
            {
              v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%ld", v20, v22];

              ++v22;
              v23 = v21;
            }

            while (([v14 containsObject:v21]& 1) != 0);
          }

          [v14 addObject:v21];
          v24 = objc_alloc_init(MEMORY[0x277CCAB68]);
          [v24 appendString:v51];
          v25 = WDBundle();
          v26 = [v25 localizedStringForKey:@"ECG_CSV_RECORDING_DATE_TITLE" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable-Cinnamon"];
          v27 = HKConditionallyRedactedHeartRhythmString();
          [v24 appendString:v27];

          [v24 appendString:{@", "}];
          xmlDateFormatter = v49->_xmlDateFormatter;
          v29 = [v17 startDate];
          v30 = [(NSDateFormatter *)xmlDateFormatter stringFromDate:v29];
          [v24 appendString:v30];

          [v24 appendString:@"\n"];
          v9 = v46;
          if (v46)
          {
            v31 = [v17 wd_commaSeparatedHeaderWithActiveAlgorithmVersion:{objc_msgSend(v46, "integerValue")}];
            [v24 appendString:v31];

            [v24 appendString:@"\n"];
          }

          v32 = [v17 wd_commaSeparatedData];
          [v24 appendString:v32];

          v33 = [v50 stringByAppendingPathComponent:v21];
          v34 = [v33 stringByAppendingPathExtension:@"csv"];

          v54 = 0;
          LOBYTE(v33) = [v24 writeToFile:v34 atomically:1 encoding:4 error:&v54];
          v35 = v54;
          v36 = v35;
          if ((v33 & 1) == 0)
          {
            _HKInitializeLogging();
            v38 = HKLogWellnessDashboard();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              [WDExportManager _writeElectrocardiogramsToDisk:header:version:];
            }

            objc_autoreleasePoolPop(context);
            v37 = 0;
            goto LABEL_22;
          }

          objc_autoreleasePoolPop(context);
        }

        v47 = [obj countByEnumeratingWithState:&v55 objects:v60 count:16];
        if (v47)
        {
          continue;
        }

        break;
      }

      v37 = 1;
LABEL_22:
      v10 = v42;
      v8 = v43;
      v13 = v41;
    }

    else
    {
      v37 = 1;
    }
  }

  else
  {
    _HKInitializeLogging();
    v14 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [WDExportManager _writeElectrocardiogramsToDisk:header:version:];
    }

    v37 = 0;
  }

  v39 = *MEMORY[0x277D85DE8];
  return v37;
}

- (void)_exportElectrocardiogramsWithName:(id)a3 dateOfBirth:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CCD380];
  v9 = [(WDProfile *)self->_profile healthStore];
  v24 = 0;
  v10 = [v8 versionWithHealthStore:v9 error:&v24];
  v11 = v24;

  if (!v10)
  {
    _HKInitializeLogging();
    v12 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [WDExportManager _exportElectrocardiogramsWithName:dateOfBirth:];
    }
  }

  v13 = [MEMORY[0x277CCD3A8] electrocardiogramType];
  v14 = objc_alloc(MEMORY[0x277CCD8D0]);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __65__WDExportManager__exportElectrocardiogramsWithName_dateOfBirth___block_invoke;
  v20[3] = &unk_2796E7438;
  v20[4] = self;
  v21 = v6;
  v22 = v7;
  v23 = v10;
  v15 = v10;
  v16 = v7;
  v17 = v6;
  v18 = [v14 initWithSampleType:v13 predicate:0 limit:0 sortDescriptors:0 resultsHandler:v20];
  v19 = [(WDProfile *)self->_profile healthStore];
  [v19 executeQuery:v18];

  dispatch_semaphore_wait(self->_sem, 0xFFFFFFFFFFFFFFFFLL);
}

void __65__WDExportManager__exportElectrocardiogramsWithName_dateOfBirth___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [*(a1 + 32) _electrocardiogramHeaderWithName:*(a1 + 40) dateOfBirth:*(a1 + 48)];
    [*(a1 + 32) setExportFailed:{objc_msgSend(*(a1 + 32), "_writeElectrocardiogramsToDisk:header:version:", v6, v8, *(a1 + 56)) ^ 1}];
  }

  else
  {
    _HKInitializeLogging();
    v9 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __65__WDExportManager__exportElectrocardiogramsWithName_dateOfBirth___block_invoke_cold_1();
    }

    [*(a1 + 32) setExportFailed:1];
  }

  dispatch_semaphore_signal(*(*(a1 + 32) + 40));
}

- (BOOL)_addSourceDirectory:(id)a3 asPath:(id)a4 archive:(id)a5 fileManager:(id)a6
{
  v41 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v33 = a5;
  v11 = a6;
  v39 = 0;
  v12 = [v11 contentsOfDirectoryAtURL:v9 includingPropertiesForKeys:MEMORY[0x277CBEBF8] options:4 error:&v39];
  v13 = v39;
  if (v12)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v12;
    v14 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v14)
    {
      v15 = v14;
      v27 = v13;
      v28 = v12;
      v29 = v9;
      v16 = *v36;
      while (2)
      {
        v17 = 0;
        v31 = v15;
        do
        {
          if (*v36 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v35 + 1) + 8 * v17);
          v19 = objc_autoreleasePoolPush();
          v20 = [v18 path];
          v21 = [v18 pathComponents];
          v22 = [v21 lastObject];

          v23 = [v10 URLByAppendingPathComponent:v22];
          v34 = 0;
          if ([v11 fileExistsAtPath:v20 isDirectory:&v34])
          {
            if (v34 == 1)
            {
              if (![(WDExportManager *)self _addSourceDirectory:v18 asPath:v23 archive:v33 fileManager:v11])
              {
                goto LABEL_18;
              }
            }

            else
            {
              [v33 addFileToArchive:v18 pathInArchive:v23];
              v15 = v31;
              if (![v33 archiveIsValid])
              {
LABEL_18:

                objc_autoreleasePoolPop(v19);
                v24 = 0;
                goto LABEL_19;
              }
            }
          }

          objc_autoreleasePoolPop(v19);
          ++v17;
        }

        while (v15 != v17);
        v15 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }

      v24 = 1;
LABEL_19:
      v12 = v28;
      v9 = v29;
      v13 = v27;
    }

    else
    {
      v24 = 1;
    }
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
    {
      [WDExportManager _addSourceDirectory:asPath:archive:fileManager:];
    }

    v24 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

- (void)_archiveExportDirectory:(id)a3 toFile:(id)a4
{
  v6 = MEMORY[0x277CCDD18];
  v7 = a4;
  v8 = a3;
  v9 = [v6 alloc];
  v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7];

  v11 = [v9 initWithURL:v10 archiveType:0];
  v12 = [MEMORY[0x277CCAA00] defaultManager];
  v13 = [MEMORY[0x277CBEBC0] fileURLWithPath:v8];

  v14 = [v13 pathComponents];
  v15 = [v14 lastObject];

  v16 = [MEMORY[0x277CBEBC0] fileURLWithPath:v15];
  if (![(WDExportManager *)self _addSourceDirectory:v13 asPath:v16 archive:v11 fileManager:v12])
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC2B0], OS_LOG_TYPE_ERROR))
    {
      [WDExportManager _archiveExportDirectory:toFile:];
    }

    [(WDExportManager *)self setExportFailed:1];
  }

  [v11 closeArchive];
}

- (void)_completeAndCloseStreamingXML
{
  xmlTextWriterEndElement(self->_writer);
  xmlTextWriterEndElement(self->_writerCDA);
  xmlTextWriterEndDocument(self->_writer);
  xmlFreeTextWriter(self->_writer);
  xmlTextWriterEndDocument(self->_writerCDA);
  writerCDA = self->_writerCDA;

  xmlFreeTextWriter(writerCDA);
}

- (void)_getAllOrdinaryDataTypesOfClass:(Class)a3 withArray:(id)a4
{
  v8 = a4;
  for (i = 0; i != 342; ++i)
  {
    v5 = [MEMORY[0x277CCD720] dataTypeWithCode:i];
    if (v5 && (objc_opt_isKindOfClass() & 1) != 0 && [v5 supportsExport])
    {
      v6 = [v5 code];
      v7 = (v6 - 100) > 0x2C || ((1 << (v6 - 100)) & 0x108000000001) == 0;
      if (v7 && v6 != 79)
      {
        [v8 addObject:v5];
      }
    }
  }
}

- (void)_getAllOrdinaryDataTypesOfCategory:(int64_t)a3 withArray:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(WDExportManager *)self _getAllOrdinaryDataTypesOfClass:objc_opt_class() withArray:v7];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if (getCategoryOfType(v13) == a3)
        {
          [v6 addObject:{v13, v15}];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)_preferredUnitForObjectType:(id)a3
{
  profile = self->_profile;
  v5 = a3;
  v6 = [(WDProfile *)profile displayTypeController];
  v7 = [v6 displayTypeForObjectTypeUnifyingBloodPressureTypes:v5];

  v8 = [(WDProfile *)self->_profile unitController];
  v9 = [v8 unitForDisplayType:v7];

  return v9;
}

- (id)_formatBPMForBeatToBeatReading:(id)a3
{
  profile = self->_profile;
  v5 = a3;
  v6 = [(WDProfile *)profile displayTypeController];
  v7 = [v6 displayTypeWithIdentifier:&unk_28642DCD8];

  v8 = MEMORY[0x277CCABB0];
  [v5 bpm];
  v10 = v9;

  v11 = [v8 numberWithDouble:v10];
  v12 = [(WDProfile *)self->_profile unitController];
  v13 = HKFormattedStringFromValueForContext();

  return v13;
}

- (id)_formatTimeForBeatToBeatReading:(id)a3
{
  v3 = MEMORY[0x277CBEAA8];
  [a3 time];
  v4 = [v3 dateWithTimeIntervalSinceReferenceDate:?];
  v5 = HKLocalizedStringForDateAndTemplate();

  return v5;
}

- (HKApplicationProviding)applicationProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_applicationProvider);

  return WeakRetained;
}

void __50__WDExportManager_createExportFileWithCompletion___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = *(*a1 + 88);
  v8 = *(*a1 + 96);
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __50__WDExportManager_createExportFileWithCompletion___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1(&dword_251E85000, v0, v1, "Error getting birth date: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __50__WDExportManager_createExportFileWithCompletion___block_invoke_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1(&dword_251E85000, v0, v1, "Error getting biological sex: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __50__WDExportManager_createExportFileWithCompletion___block_invoke_cold_4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1(&dword_251E85000, v0, v1, "Error getting blood type: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __50__WDExportManager_createExportFileWithCompletion___block_invoke_cold_5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1(&dword_251E85000, v0, v1, "Error getting fitzpatrick skin type: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __50__WDExportManager_createExportFileWithCompletion___block_invoke_cold_6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1(&dword_251E85000, v0, v1, "Error getting cardio fitness medications use: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__WDExportManager__queryForDateRanges__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1(&dword_251E85000, v0, v1, "Failed to retrieve date ranges during export: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __55__WDExportManager__queryForSamplesOfType_batchHandler___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4(&dword_251E85000, v2, v3, "Query for '%@' failed during export attempt: %{public}@");
  v4 = *MEMORY[0x277D85DE8];
}

void __39__WDExportManager__writeMedicalRecords__block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_4(&dword_251E85000, v2, v3, "Medical type query failed for type %{public}@ (%{public}@)");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_writeDataForWorkoutRoutes:semaphore:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1(&dword_251E85000, v0, v1, "Error creating workout-route export directory: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_writeDataForMedicalRecords:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1(&dword_251E85000, v0, v1, "Unable to create directory for medical records (%{public}@)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __47__WDExportManager__writeDataForMedicalRecords___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1(&dword_251E85000, v0, v1, "Unable to export properties for medical record (%{public}@)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __47__WDExportManager__writeDataForMedicalRecords___block_invoke_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1(&dword_251E85000, a1, a3, "Did not export all expected properties for medical record (%{public}@)", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __47__WDExportManager__writeDataForMedicalRecords___block_invoke_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1(&dword_251E85000, v0, v1, "Unable to write JSON file for medical record (%{public}@)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __39__WDExportManager__exportHealthRecords__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1(&dword_251E85000, v0, v1, "Query for health record documents failed: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_writeElectrocardiogramsToDisk:header:version:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1(&dword_251E85000, v0, v1, "Unable to create electrocardiograms export directory: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_writeElectrocardiogramsToDisk:header:version:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1(&dword_251E85000, v0, v1, "Failed to write electrocardiogram content: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_exportElectrocardiogramsWithName:dateOfBirth:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1(&dword_251E85000, v0, v1, "Failed to lookup active electrocardiogram version: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __65__WDExportManager__exportElectrocardiogramsWithName_dateOfBirth___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1(&dword_251E85000, v0, v1, "Query for electrocardiogram samples failed: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_addSourceDirectory:asPath:archive:fileManager:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_1(&dword_251E85000, v0, v1, "Unable to list archive directory: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end