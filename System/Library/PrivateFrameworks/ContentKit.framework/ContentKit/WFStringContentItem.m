@interface WFStringContentItem
+ (id)coercions;
+ (id)contentCategories;
+ (id)itemWithSerializedItem:(id)a3 forType:(id)a4 named:(id)a5 attributionSet:(id)a6 cachingIdentifier:(id)a7;
+ (id)localizedPluralTypeDescriptionWithContext:(id)a3;
+ (id)localizedTypeDescriptionWithContext:(id)a3;
+ (id)ownedTypes;
- (BOOL)includesFileRepresentationInSerializedItem;
- (NSString)string;
- (WFDataDetectorResults)dataDetectorResults;
@end

@implementation WFStringContentItem

+ (id)localizedPluralTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Text (plural)", @"Text");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Text (singular)", @"Text");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)contentCategories
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"Documents";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)ownedTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1E20]];
  v5 = [v2 orderedSetWithObjects:{v3, v4, 0}];

  return v5;
}

void __41__WFStringContentItem_pdfCoercionHandler__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  v8 = [a3 options];
  v9 = [v8 dictionary];
  v10 = [v9 objectForKey:@"WFCoercionOptionPDFIncludeMargin"];
  v11 = [v10 BOOLValue];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __41__WFStringContentItem_pdfCoercionHandler__block_invoke_2;
  v14[3] = &unk_278345390;
  v16 = v11;
  v15 = v6;
  v12 = getUIPrintFormatterClass;
  v13 = v6;
  [v7 getObjectRepresentation:v14 forClass:v12() options:v8];
}

void __41__WFStringContentItem_pdfCoercionHandler__block_invoke_2(uint64_t a1, void *a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = a2;
  v3 = MEMORY[0x277CBEA60];
  v4 = a2;
  v5 = [v3 arrayWithObjects:v6 count:1];
  [WFPDFContentItem getPDFFromPrintFormatters:v5 nameIfKnown:0 matchingInputSize:1 withMargin:*(a1 + 40) startingAtPage:1 endingAtPage:0x7FFFFFFFFFFFFFFFLL completionHandler:*(a1 + 32)];
}

+ (id)coercions
{
  v39[11] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v38 = [a1 stringCoercionHandler];
  v37 = [WFCoercion coercionToClass:v3 handler:v38];
  v39[0] = v37;
  v36 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1E20]];
  v35 = [a1 textFileCoercionHandler];
  v34 = [WFCoercion coercionToType:v36 handler:v35];
  v39[1] = v34;
  v33 = [WFObjectType typeWithClassName:@"UIPrintFormatter" frameworkName:@"UIKit" location:2];
  v32 = [a1 printFormatterCoercionHandler];
  v31 = [WFCoercion coercionToType:v33 handler:v32];
  v39[2] = v31;
  v4 = objc_opt_class();
  v30 = [WFCoercionHandler keyPath:@"dataDetectorResults.URLs" unavailableIfNilOrEmpty:1];
  v29 = [WFCoercion coercionToClass:v4 handler:v30];
  v39[3] = v29;
  v5 = objc_opt_class();
  v28 = [WFCoercionHandler keyPath:@"dataDetectorResults.dates" unavailableIfNilOrEmpty:1];
  v27 = [WFCoercion coercionToClass:v5 handler:v28];
  v39[4] = v27;
  v6 = objc_opt_class();
  v26 = [WFCoercionHandler keyPath:@"dataDetectorResults.streetAddresses" unavailableIfNilOrEmpty:1];
  v25 = [WFCoercion coercionToClass:v6 handler:v26];
  v39[5] = v25;
  v7 = objc_opt_class();
  v24 = [WFCoercionHandler keyPath:@"dataDetectorResults.phoneNumbers" unavailableIfNilOrEmpty:1];
  v23 = [WFCoercion coercionToClass:v7 handler:v24];
  v39[6] = v23;
  v8 = objc_opt_class();
  v9 = [a1 dictionaryCoercionHandler];
  v10 = [WFCoercion coercionToClass:v8 handler:v9];
  v39[7] = v10;
  v11 = objc_opt_class();
  v12 = [WFCoercionHandler keyPath:@"dataDetectorResults.number" unavailableIfNilOrEmpty:1];
  v13 = [WFCoercion coercionToClass:v11 handler:v12];
  v39[8] = v13;
  v14 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v15 = objc_opt_class();
  v16 = [WFCoercionHandler block:&__block_literal_global_52];
  v17 = [WFCoercion coercionToClass:v15 handler:v16];
  v39[9] = v17;
  v18 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1E08]];
  v19 = [a1 pdfCoercionHandler];
  v20 = [WFCoercion coercionToType:v18 handler:v19];
  v39[10] = v20;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:11];

  return v22;
}

id __32__WFStringContentItem_coercions__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 string];
  v4 = [v2 numberWithBool:{objc_msgSend(v3, "BOOLValue")}];

  return v4;
}

id __46__WFStringContentItem_textFileCoercionHandler__block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = [v7 requestedType];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [v7 options];

  v12 = [v11 dictionary];
  v13 = [v12 objectForKey:@"WFCoercionOptionStringSecureFilename"];
  v14 = [v13 BOOLValue];

  if (v14)
  {
    v15 = [MEMORY[0x277CCAD78] UUID];
    v16 = [v15 UUIDString];
  }

  else
  {
    v16 = [v6 name];
  }

  v17 = [WFFileRepresentation proposedFilenameForFile:v16 ofType:v10];
  v18 = [WFTemporaryFileManager proposedTemporaryFileURLForFilename:v17];
  v19 = [v6 string];
  v20 = [v19 writeToURL:v18 atomically:0 encoding:4 error:a4];

  if (v20)
  {
    v21 = [WFFileRepresentation fileWithURL:v18 options:1 ofType:v10 proposedFilename:v17];
  }

  else
  {
    v22 = getWFContentGraphLogObject();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v24 = 136315138;
      v25 = "+[WFStringContentItem textFileCoercionHandler]_block_invoke";
      _os_log_impl(&dword_21E1BD000, v22, OS_LOG_TYPE_ERROR, "%s Failed to write data for WFStringContentItem", &v24, 0xCu);
    }

    v21 = 0;
  }

  return v21;
}

void __52__WFStringContentItem_printFormatterCoercionHandler__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a2;
  v6 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__WFStringContentItem_printFormatterCoercionHandler__block_invoke_2;
  v9[3] = &unk_278347B38;
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

void __52__WFStringContentItem_printFormatterCoercionHandler__block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc(getUISimpleTextPrintFormatterClass());
  v3 = [*(a1 + 32) string];
  v4 = [v2 initWithText:v3];

  (*(*(a1 + 40) + 16))();
}

BOOL __48__WFStringContentItem_dictionaryCoercionHandler__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 dataDetectorResults];
  v3 = [v2 dictionaries];
  v4 = [v3 count] != 0;

  return v4;
}

id __48__WFStringContentItem_dictionaryCoercionHandler__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [a2 dataDetectorResults];
  v3 = [v2 dictionaryType];
  v4 = [v2 dictionaries];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * i) setWf_preferredFileType:v3];
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v4;
}

id __44__WFStringContentItem_stringCoercionHandler__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = [v6 internalRepresentationType];
  v9 = [v6 fileRepresentationForType:v8];

  v10 = [v9 data];
  if (v10)
  {
    v11 = [MEMORY[0x277CCACA8] wf_stringWithData:v10];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v14 = getWFContentGraphLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        v18 = 136315394;
        v19 = "+[WFStringContentItem stringCoercionHandler]_block_invoke";
        v20 = 2112;
        v21 = v10;
        _os_log_impl(&dword_21E1BD000, v14, OS_LOG_TYPE_FAULT, "%s Failed to decode string with data %@", &v18, 0x16u);
      }

      v15 = objc_opt_class();
      v16 = [v7 requestedType];
      *a4 = [v15 badCoercionErrorForType:v16];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)itemWithSerializedItem:(id)a3 forType:(id)a4 named:(id)a5 attributionSet:(id)a6 cachingIdentifier:(id)a7
{
  v34 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v13)
  {
LABEL_2:
    v17 = [v13 string];
    v18 = [v12 objectForKey:v17];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [a1 itemWithObject:v18 named:v14 attributionSet:v15 cachingIdentifier:v16];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = [WFFileRepresentation fileWithData:v18 ofType:v13 proposedFilename:v14];
        v19 = [a1 itemWithFile:v20 attributionSet:v15 cachingIdentifier:v16];
      }

      else
      {
        v19 = 0;
      }
    }

    v21 = v13;
    goto LABEL_19;
  }

  v21 = [a1 ownedTypes];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v18 = [v12 allKeys];
  v22 = [v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (!v22)
  {
    v19 = 0;
LABEL_19:

    goto LABEL_20;
  }

  v23 = v22;
  v27 = a1;
  v28 = v14;
  v24 = *v30;
LABEL_8:
  v25 = 0;
  while (1)
  {
    if (*v30 != v24)
    {
      objc_enumerationMutation(v18);
    }

    v13 = [MEMORY[0x277D79F68] typeWithString:{*(*(&v29 + 1) + 8 * v25), v27}];
    if ([v13 conformsToTypes:v21])
    {
      break;
    }

    if (v23 == ++v25)
    {
      v23 = [v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v23)
      {
        goto LABEL_8;
      }

      v19 = 0;
      v14 = v28;
      goto LABEL_19;
    }
  }

  a1 = v27;
  v14 = v28;
  if (v13)
  {
    goto LABEL_2;
  }

  v19 = 0;
LABEL_20:

  return v19;
}

- (WFDataDetectorResults)dataDetectorResults
{
  dataDetectorResults = self->_dataDetectorResults;
  if (!dataDetectorResults)
  {
    v4 = [(WFStringContentItem *)self string];
    if (v4)
    {
      v5 = [(WFStringContentItem *)self string];
      v6 = [WFDataDetector resultsForString:v5 ofTypes:0x600000838 error:0];
      v7 = self->_dataDetectorResults;
      self->_dataDetectorResults = v6;
    }

    else
    {
      v8 = objc_opt_new();
      v5 = self->_dataDetectorResults;
      self->_dataDetectorResults = v8;
    }

    dataDetectorResults = self->_dataDetectorResults;
  }

  return dataDetectorResults;
}

- (NSString)string
{
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = [(WFContentItem *)self getRepresentationsForType:v3 error:0];
  v5 = [v4 firstObject];
  v6 = [v5 object];

  return v6;
}

- (BOOL)includesFileRepresentationInSerializedItem
{
  v2 = [(WFContentItem *)self internalRepresentationType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end