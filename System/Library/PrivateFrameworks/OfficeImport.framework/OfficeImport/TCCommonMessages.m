@interface TCCommonMessages
+ (void)initialize;
@end

@implementation TCCommonMessages

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    objc_opt_class();
    v2 = [TCTaggedMessage alloc];
    v3 = [(TCTaggedMessage *)v2 initWithMessageText:kErrorMessageOutOfMemory];
    v4 = TCOutOfMemoryMessage;
    TCOutOfMemoryMessage = v3;

    v5 = [TCTaggedMessage alloc];
    v6 = [(TCTaggedMessage *)v5 initWithMessageText:kErrorMessageUnknown];
    v7 = TCUnknownProblemMessage;
    TCUnknownProblemMessage = v6;

    v8 = [TCTaggedMessage alloc];
    v9 = [(TCTaggedMessage *)v8 initWithMessageText:kErrorMessageInvalid];
    v10 = TCInvalidFileFormatMessage;
    TCInvalidFileFormatMessage = v9;

    v11 = [TCTaggedMessage alloc];
    v12 = [(TCTaggedMessage *)v11 initWithMessageText:kErrorMessageDecryptionFailed];
    v13 = TCDecryptionFailedMessage;
    TCDecryptionFailedMessage = v12;

    v14 = [TCTaggedMessage alloc];
    v15 = [(TCTaggedMessage *)v14 initWithMessageText:kWarningMessageNoTrackChangesButBody];
    v16 = TCNoImportOfNonBodyTrackedChangesMsg;
    TCNoImportOfNonBodyTrackedChangesMsg = v15;

    v17 = [TCTaggedMessage alloc];
    v18 = [(TCTaggedMessage *)v17 initWithMessageText:kWarningMessageChangedAndFiltersToOrFilters];
    v19 = TCChangedAndFiltersToOrFiltersMessage;
    TCChangedAndFiltersToOrFiltersMessage = v18;

    v20 = [TCTaggedMessage alloc];
    v21 = [(TCTaggedMessage *)v20 initWithMessageText:kWarningMessageRemovedDurationFiltersAndConditionalHighlightings];
    v22 = TCRemovedDurationFiltersAndConditionalHighlightingsMessage;
    TCRemovedDurationFiltersAndConditionalHighlightingsMessage = v21;

    v23 = [TCTaggedMessage alloc];
    v24 = [(TCTaggedMessage *)v23 initWithMessageText:kWarningMessageRTLNotFullySupported];
    v25 = TCExportRTLNotFullySupportedMessage;
    TCExportRTLNotFullySupportedMessage = v24;

    v26 = [TCTaggedMessage alloc];
    v27 = [(TCTaggedMessage *)v26 initWithMessageText:kWarningMessageRemovedUnsupportedFormulas];
    v28 = TCRemovedUnsupportedFormulasMessage;
    TCRemovedUnsupportedFormulasMessage = v27;

    v29 = [TCTaggedMessage alloc];
    v30 = [(TCTaggedMessage *)v29 initWithMessageText:kWarningMessageCSVExportFailureNoTables];
    v31 = TCExportDocumentHasNoTablesMessage;
    TCExportDocumentHasNoTablesMessage = v30;

    v32 = [TCTaggedMessage alloc];
    v33 = [(TCTaggedMessage *)v32 initWithMessageText:kErrorMessageChartUnsupportedContent];
    v34 = TCChartUnsupportedContent;
    TCChartUnsupportedContent = v33;

    v35 = [TCTaggedMessage alloc];
    v36 = [(TCTaggedMessage *)v35 initWithMessageText:kWarningMessageChartsInteractiveTypesDowngraded];
    v37 = TCChartsInteractiveTypesDowngradedMessage;
    TCChartsInteractiveTypesDowngradedMessage = v36;

    v38 = [TCTaggedMessage alloc];
    v39 = [(TCTaggedMessage *)v38 initWithMessageText:kWarningMessageChartsBubbleReplacedWithScatter];
    v40 = TCChartsBubbleReplacedWithScatterMessage;
    TCChartsBubbleReplacedWithScatterMessage = v39;

    v41 = [TCTaggedMessage alloc];
    v42 = [(TCTaggedMessage *)v41 initWithMessageText:kWarningMessageChartsReferenceLinesRemoved];
    v43 = TCChartsReferenceLinesRemovedMessage;
    TCChartsReferenceLinesRemovedMessage = v42;

    v44 = [TCTaggedMessage alloc];
    v45 = [(TCTaggedMessage *)v44 initWithMessageText:kWarningMessageNoEmphasisBuilds];
    v46 = TCKeynoteRemovedBuild;
    TCKeynoteRemovedBuild = v45;
  }
}

@end