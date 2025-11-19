@interface NSArray
@end

@implementation NSArray

id __39__NSArray_SFExtras__sf_asCardSections___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 parsec_stringForKey:@"type"];
  switch([v4 sf_cardSectionType])
  {
    case 1u:
      v5 = [v3 sf_asTitleCardSection:*(a1 + 32)];
      goto LABEL_28;
    case 2u:
      v5 = [v3 sf_asRichTitleCardSection:*(a1 + 32)];
      goto LABEL_28;
    case 3u:
      v5 = [v3 sf_asRowCardSection:*(a1 + 32)];
      goto LABEL_28;
    case 4u:
      v5 = [v3 sf_asDescriptionCardSection:*(a1 + 32)];
      goto LABEL_28;
    case 5u:
      v5 = [v3 sf_asMediaInfoCardSection:*(a1 + 32)];
      goto LABEL_28;
    case 6u:
      v5 = [v3 sf_asMediaPlayerCardSection:*(a1 + 32)];
      goto LABEL_28;
    case 7u:
      v5 = [v3 sf_asSocialMediaPostCardSection:*(a1 + 32)];
      goto LABEL_28;
    case 8u:
      v5 = [v3 sf_asMetaInfoCardSection:*(a1 + 32)];
      goto LABEL_28;
    case 9u:
      v5 = [v3 sf_asScoreboardCardSection:*(a1 + 32)];
      goto LABEL_28;
    case 0xAu:
      v5 = [v3 sf_asNowPlayingCardSection:*(a1 + 32)];
      goto LABEL_28;
    case 0xBu:
      v5 = [v3 sf_asKeyValueDataCardSection:*(a1 + 32)];
      goto LABEL_28;
    case 0xCu:
      v5 = [v3 sf_asTableRowCardSection:*(a1 + 32)];
      goto LABEL_28;
    case 0xDu:
      v5 = [v3 sf_asDetailedRowCardSection:*(a1 + 32)];
      goto LABEL_28;
    case 0xEu:
      v5 = [v3 sf_asTextColumnsCardSection:*(a1 + 32)];
      goto LABEL_28;
    case 0xFu:
      v5 = [v3 sf_asAppLinkCardSection:*(a1 + 32)];
      goto LABEL_28;
    case 0x10u:
      v5 = [v3 sf_asTrackListCardSection:*(a1 + 32)];
      goto LABEL_28;
    case 0x11u:
      v5 = [v3 sf_asStockChartCardSection:*(a1 + 32)];
      goto LABEL_28;
    case 0x12u:
      v5 = [v3 sf_asWebCardSection:*(a1 + 32)];
      goto LABEL_28;
    case 0x13u:
      v5 = [v3 sf_asFlightCardSection:*(a1 + 32)];
      goto LABEL_28;
    case 0x14u:
      v5 = [v3 sf_asSuggestionCardSection:*(a1 + 32)];
      goto LABEL_28;
    case 0x15u:
      v5 = [v3 sf_asWatchListCardSection:*(a1 + 32)];
LABEL_28:
      v7 = v5;
      break;
    default:
      if (PARLogHandleForCategory_onceToken_364 != -1)
      {
        dispatch_once(&PARLogHandleForCategory_onceToken_364, &__block_literal_global_1075);
      }

      v6 = PARLogHandleForCategory_logHandles_1_365;
      if (os_log_type_enabled(PARLogHandleForCategory_logHandles_1_365, OS_LOG_TYPE_ERROR))
      {
        v10 = 138412290;
        v11 = v4;
        _os_log_error_impl(&dword_1B1064000, v6, OS_LOG_TYPE_ERROR, "unknown card section type: %@", &v10, 0xCu);
      }

      v7 = 0;
      break;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

uint64_t __74__NSArray_ParsecExtras__parsec_mapAndFilterObjectsWithOptions_usingBlock___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  if (v2)
  {
    [*(a1 + 32) addObject:v2];
  }

  return MEMORY[0x1EEE66BB8]();
}

@end