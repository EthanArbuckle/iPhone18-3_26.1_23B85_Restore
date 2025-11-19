@interface TCStringLocalizedMessages
+ (void)initialize;
@end

@implementation TCStringLocalizedMessages

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v86 = TCBundle();
    v2 = [v86 localizedStringForKey:@"Out of memory." value:&stru_286EE1130 table:@"TCCompatibility"];
    v3 = kErrorMessageOutOfMemory;
    kErrorMessageOutOfMemory = v2;

    v87 = TCBundle();
    v4 = [v87 localizedStringForKey:@"An unknown error occurred." value:&stru_286EE1130 table:@"TCCompatibility"];
    v5 = kErrorMessageUnknown;
    kErrorMessageUnknown = v4;

    v88 = TCBundle();
    v6 = [v88 localizedStringForKey:@"The file format is invalid." value:&stru_286EE1130 table:@"TCCompatibility"];
    v7 = kErrorMessageInvalid;
    kErrorMessageInvalid = v6;

    v89 = TCBundle();
    v8 = [v89 localizedStringForKey:@"The spreadsheet has too many table cells." value:&stru_286EE1130 table:@"TCCompatibility"];
    v9 = kErrorMessageTooManyCells;
    kErrorMessageTooManyCells = v8;

    v90 = TCBundle();
    v10 = [v90 localizedStringForKey:@"Decryption failed." value:&stru_286EE1130 table:@"TCCompatibility"];
    v11 = kErrorMessageDecryptionFailed;
    kErrorMessageDecryptionFailed = v10;

    v91 = TCBundle();
    v12 = [v91 localizedStringForKey:@"The document can\\U2019t be opened because it uses an unsupported method of encryption." value:&stru_286EE1130 table:@"TCCompatibility"];
    v13 = kErrorMessageUnsupportedEncryption;
    kErrorMessageUnsupportedEncryption = v12;

    v92 = TCBundle();
    v14 = [v92 localizedStringForKey:@"Charts of unsupported type or size were either imported as an image or removed." value:&stru_286EE1130 table:@"TCCompatibility"];
    v15 = kErrorMessageChartUnsupportedContent;
    kErrorMessageChartUnsupportedContent = v14;

    v93 = TCBundle();
    v16 = [v93 localizedStringForKey:@"Grouped wedges in pie charts were ungrouped." value:&stru_286EE1130 table:@"TCCompatibility"];
    v17 = kWarningMessageChartsGroupedPieWedgesUngrouped;
    kWarningMessageChartsGroupedPieWedgesUngrouped = v16;

    v94 = TCBundle();
    v18 = [v94 localizedStringForKey:@"Custom number formats were removed from charts." value:&stru_286EE1130 table:@"TCCompatibility"];
    v19 = kWarningMessageChartsCustomNumerFormatRemoved;
    kWarningMessageChartsCustomNumerFormatRemoved = v18;

    v95 = TCBundle();
    v20 = [v95 localizedStringForKey:@"Interactive charts were converted to regular charts." value:&stru_286EE1130 table:@"TCCompatibility"];
    v21 = kWarningMessageChartsInteractiveTypesDowngraded;
    kWarningMessageChartsInteractiveTypesDowngraded = v20;

    v96 = TCBundle();
    v22 = [v96 localizedStringForKey:@"Bubble charts were converted to scatter charts." value:&stru_286EE1130 table:@"TCCompatibility"];
    v23 = kWarningMessageChartsBubbleReplacedWithScatter;
    kWarningMessageChartsBubbleReplacedWithScatter = v22;

    v97 = TCBundle();
    v24 = [v97 localizedStringForKey:@"Reference Lines were removed from charts." value:&stru_286EE1130 table:@"TCCompatibility"];
    v25 = kWarningMessageChartsReferenceLinesRemoved;
    kWarningMessageChartsReferenceLinesRemoved = v24;

    v98 = TCBundle();
    v26 = [v98 localizedStringForKey:@"Unsupported media were removed." value:&stru_286EE1130 table:@"TCCompatibility"];
    v27 = kWarningMessageUnsupportedMediaTypes;
    kWarningMessageUnsupportedMediaTypes = v26;

    v99 = TCBundle();
    v28 = [v99 localizedStringForKey:@"Links to other Keynote files were removed." value:&stru_286EE1130 table:@"TCCompatibility"];
    v29 = kWarningMessageNoKeynoteHyperlinks;
    kWarningMessageNoKeynoteHyperlinks = v28;

    v100 = TCBundle();
    v30 = [v100 localizedStringForKey:@"Image fills may be missing from shapes value:charts table:{or other objects.", &stru_286EE1130, @"TCCompatibility"}];
    v31 = kWarningMessageMissingFills;
    kWarningMessageMissingFills = v30;

    v101 = TCBundle();
    v32 = [v101 localizedStringForKey:@"Image fills may be missing from shapes value:charts table:{or other objects because you are not connected to the Internet.", &stru_286EE1130, @"TCCompatibility"}];
    v33 = kWarningMessageMissingFillsBecauseNetworkNotReachable;
    kWarningMessageMissingFillsBecauseNetworkNotReachable = v32;

    v102 = TCBundle();
    v34 = [v102 localizedStringForKey:@"Rotation was removed from tables and charts." value:&stru_286EE1130 table:@"TCCompatibility"];
    v35 = kWarningMessageChartsAndTablesUnrotated;
    kWarningMessageChartsAndTablesUnrotated = v34;

    v103 = TCBundle();
    v36 = [v103 localizedStringForKey:@"Some movies may not play correctly. When exporting password-protected presentations to Keynote \\U201909 value:movies must be in .mov format." table:{&stru_286EE1130, @"TCCompatibility"}];
    v37 = kWarningMessageMovieExportFailureLockedDocumentKeynote;
    kWarningMessageMovieExportFailureLockedDocumentKeynote = v36;

    v104 = TCBundle();
    v38 = [v104 localizedStringForKey:@"Some movies may not play correctly. When exporting password-protected spreadsheets to Numbers \\U201909 value:movies must be in .mov format." table:{&stru_286EE1130, @"TCCompatibility"}];
    v39 = kWarningMessageMovieExportFailureLockedDocumentNumbers;
    kWarningMessageMovieExportFailureLockedDocumentNumbers = v38;

    v105 = TCBundle();
    v40 = [v105 localizedStringForKey:@"Some movies may not play correctly. When exporting password-protected documents to Pages \\U201909 value:movies must be in .mov format." table:{&stru_286EE1130, @"TCCompatibility"}];
    v41 = kWarningMessageMovieExportFailureLockedDocumentPages;
    kWarningMessageMovieExportFailureLockedDocumentPages = v40;

    v106 = TCBundle();
    v42 = [v106 localizedStringForKey:@"Builds on master slides were removed." value:&stru_286EE1130 table:@"TCCompatibility"];
    v43 = kWarningMessageNoBuildsOnMasters;
    kWarningMessageNoBuildsOnMasters = v42;

    v107 = TCBundle();
    v44 = [v107 localizedStringForKey:@"Smart builds were removed." value:&stru_286EE1130 table:@"TCCompatibility"];
    v45 = kWarningMessageNoSmartBuilds;
    kWarningMessageNoSmartBuilds = v44;

    v108 = TCBundle();
    v46 = [v108 localizedStringForKey:@"Emphasis builds were removed." value:&stru_286EE1130 table:@"TCCompatibility"];
    v47 = kWarningMessageNoEmphasisBuilds;
    kWarningMessageNoEmphasisBuilds = v46;

    v109 = TCBundle();
    v48 = [v109 localizedStringForKey:@"Change tracking is only supported for body text. Other tracked changes were accepted as final." value:&stru_286EE1130 table:@"TCCompatibility"];
    v49 = kWarningMessageNoTrackChangesButBody;
    kWarningMessageNoTrackChangesButBody = v48;

    v110 = TCBundle();
    v50 = [v110 localizedStringForKey:@"Unsupported formulas were replaced by the last calculated value." value:&stru_286EE1130 table:@"TCCompatibility"];
    v51 = kWarningMessageUnsupportedFormulas;
    kWarningMessageUnsupportedFormulas = v50;

    v111 = TCBundle();
    v52 = [v111 localizedStringForKey:@"Table categories were removed." value:&stru_286EE1130 table:@"TCCompatibility"];
    v53 = kWarningMessageNoCategories;
    kWarningMessageNoCategories = v52;

    v112 = TCBundle();
    v54 = [v112 localizedStringForKey:@"Unsupported conditional highlighting rules were removed." value:&stru_286EE1130 table:@"TCCompatibility"];
    v55 = kWarningMessageNoConditionalFormats;
    kWarningMessageNoConditionalFormats = v54;

    v113 = TCBundle();
    v56 = [v113 localizedStringForKey:@"Table fills were removed." value:&stru_286EE1130 table:@"TCCompatibility"];
    v57 = kWarningMessageNoTableImageFill;
    kWarningMessageNoTableImageFill = v56;

    v114 = TCBundle();
    v58 = [v114 localizedStringForKey:@"Pop-up menu cells with more than 250 list items were converted to text cells." value:&stru_286EE1130 table:@"TCCompatibility"];
    v59 = kWarningMessageTooManyPopupOptionsSomeDropped;
    kWarningMessageTooManyPopupOptionsSomeDropped = v58;

    v115 = TCBundle();
    v60 = [v115 localizedStringForKey:@"Some AND filters were changed to OR." value:&stru_286EE1130 table:@"TCCompatibility"];
    v61 = kWarningMessageChangedAndFiltersToOrFilters;
    kWarningMessageChangedAndFiltersToOrFilters = v60;

    v116 = TCBundle();
    v62 = [v116 localizedStringForKey:@"Duration-based filters and conditional highlights were removed." value:&stru_286EE1130 table:@"TCCompatibility"];
    v63 = kWarningMessageRemovedDurationFiltersAndConditionalHighlightings;
    kWarningMessageRemovedDurationFiltersAndConditionalHighlightings = v62;

    v117 = TCBundle();
    v64 = [v117 localizedStringForKey:@"Right-to-left text isn\\U2019t fully supported in iWork \\U201909." value:&stru_286EE1130 table:@"TCCompatibility"];
    v65 = kWarningMessageRTLNotFullySupported;
    kWarningMessageRTLNotFullySupported = v64;

    v118 = TCBundle();
    v66 = [v118 localizedStringForKey:@"Unsupported formulas were removed. The last calculated values were exported." value:&stru_286EE1130 table:@"TCCompatibility"];
    v67 = kWarningMessageRemovedUnsupportedFormulas;
    kWarningMessageRemovedUnsupportedFormulas = v66;

    v119 = TCBundle();
    v68 = [v119 localizedStringForKey:@"No tables" value:&stru_286EE1130 table:@"TCCompatibility"];
    v69 = kWarningMessageCSVExportFailureNoTables;
    kWarningMessageCSVExportFailureNoTables = v68;

    v120 = TCBundle();
    v70 = [v120 localizedStringForKey:@"Numbers creates a CSV file for each table in your spreadsheet." value:&stru_286EE1130 table:@"TCCompatibility"];
    v71 = kWarningMessageCSVExportFailureNoTablesAdditionalInfo;
    kWarningMessageCSVExportFailureNoTablesAdditionalInfo = v70;

    v121 = TCBundle();
    v72 = [v121 localizedStringForKey:@"Charts in headers and footers were removed." value:&stru_286EE1130 table:@"TCCompatibility"];
    v73 = kWarningMessagePagesChartsInHeaderFooterNotSupported;
    kWarningMessagePagesChartsInHeaderFooterNotSupported = v72;

    v122 = TCBundle();
    v74 = [v122 localizedStringForKey:@"Tables in headers and footers were removed." value:&stru_286EE1130 table:@"TCCompatibility"];
    v75 = kWarningMessagePagesTablesInHeaderFooterNotSupported;
    kWarningMessagePagesTablesInHeaderFooterNotSupported = v74;

    v123 = TCBundle();
    v76 = [v123 localizedStringForKey:@"Objects in headers and footers were removed." value:&stru_286EE1130 table:@"TCCompatibility"];
    v77 = kWarningMessagePagesObjectsInHeaderFooterNotSupported;
    kWarningMessagePagesObjectsInHeaderFooterNotSupported = v76;

    v124 = TCBundle();
    v78 = [v124 localizedStringForKey:@"Inline objects that cause text wrap were removed from headers and footers." value:&stru_286EE1130 table:@"TCCompatibility"];
    v79 = kWarningMessagePagesObjectsWithWrapInHeaderFooterNotSupported;
    kWarningMessagePagesObjectsWithWrapInHeaderFooterNotSupported = v78;

    v125 = TCBundle();
    v80 = [v125 localizedStringForKey:@"Outline view isn\\U2019t supported. Your document will appear as a regular word processing document." value:&stru_286EE1130 table:@"TCCompatibility"];
    v81 = kWarningMessagePagesOutlineViewNotSupported;
    kWarningMessagePagesOutlineViewNotSupported = v80;

    v126 = TCBundle();
    v82 = [v126 localizedStringForKey:@"Mail merge isn\\U2019t supported. Merge fields were converted to text." value:&stru_286EE1130 table:@"TCCompatibility"];
    v83 = kWarningMessagePagesMailMergeNotSupported;
    kWarningMessagePagesMailMergeNotSupported = v82;

    v127 = TCBundle();
    v84 = [v127 localizedStringForKey:@"The font %@ is missing. Your text might look different." value:&stru_286EE1130 table:@"TCCompatibility"];
    v85 = kWarningMessageFontReplaced;
    kWarningMessageFontReplaced = v84;
  }
}

@end