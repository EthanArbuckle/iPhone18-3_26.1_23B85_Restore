@interface ECMessageBodyParsingUtils
+ (id)snippetFromHTMLBody:(id)body options:(unint64_t)options maxLength:(unint64_t)length preservingQuotedForwardedContent:(BOOL)content;
@end

@implementation ECMessageBodyParsingUtils

+ (id)snippetFromHTMLBody:(id)body options:(unint64_t)options maxLength:(unint64_t)length preservingQuotedForwardedContent:(BOOL)content
{
  bodyCopy = body;
  v10 = [[ECMessageBodyHTMLParser alloc] initWithHTML:bodyCopy];
  v11 = objc_alloc_init(ECMessageBodyOriginalTextSubparser);
  [(ECMessageBodyParser *)v10 addSubparser:v11];
  v12 = [(ECMessageBodyParser *)v10 newStringAccumulatorWithOptions:options lengthLimit:length];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __100__ECMessageBodyParsingUtils_snippetFromHTMLBody_options_maxLength_preservingQuotedForwardedContent___block_invoke;
  v19[3] = &unk_27874BC90;
  contentCopy = content;
  v13 = v12;
  v20 = v13;
  [(ECMessageBodyOriginalTextSubparser *)v11 setFoundTextBlock:v19];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __100__ECMessageBodyParsingUtils_snippetFromHTMLBody_options_maxLength_preservingQuotedForwardedContent___block_invoke_2;
  v17[3] = &unk_27874BCB8;
  v14 = v13;
  v18 = v14;
  [(ECMessageBodyOriginalTextSubparser *)v11 setFoundWhitespaceBlock:v17];
  if ([(ECMessageBodyHTMLParser *)v10 parse])
  {
    accumulatedString = [v14 accumulatedString];
  }

  else
  {
    accumulatedString = &stru_284041D88;
  }

  return accumulatedString;
}

void __100__ECMessageBodyParsingUtils_snippetFromHTMLBody_options_maxLength_preservingQuotedForwardedContent___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = v7;
  if (!a3 || a3 == 2 && (*(a1 + 40) & 1) != 0)
  {
    if (![v7 valueForAttributes:64])
    {
      [*(a1 + 32) appendInnerTextWithConsumableNode:v8];
    }
  }

  else
  {
    [*(a1 + 32) appendCustomEntityWithTag:0 stringRepresentation:@" "];
  }

  *a4 = [*(a1 + 32) isFull];
}

@end