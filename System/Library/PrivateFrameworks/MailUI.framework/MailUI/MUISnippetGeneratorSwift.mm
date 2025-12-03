@interface MUISnippetGeneratorSwift
+ (id)highlightedSnippetUsingTokens:(id)tokens attributedString:(id)string frame:(CGRect)frame highlighting:(id)highlighting error:(id *)error;
+ (id)highlightedSnippetUsingTokens:(id)tokens attributedString:(id)string maxNumberOfWordsBeforeOrAfterToken:(int64_t)token maxNumberOfRanges:(int64_t)ranges highlighting:(id)highlighting error:(id *)error;
+ (id)highlightingAuthorTokens:(id)tokens authorEmailTokens:(id)emailTokens inEmailAttributedString:(id)string highlighting:(id)highlighting error:(id *)error;
+ (id)highlightingTokens:(id)tokens attributedString:(id)string highlighting:(id)highlighting error:(id *)error;
@end

@implementation MUISnippetGeneratorSwift

+ (id)highlightingTokens:(id)tokens attributedString:(id)string highlighting:(id)highlighting error:(id *)error
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](tokens);
  MEMORY[0x277D82BE0](string);
  v10 = _Block_copy(highlighting);
  v12 = sub_214CCF7E4();
  v14 = v10;
  swift_getObjCClassMetadata();
  v7 = static SnippetGenerator.highlightingTokens(tokens:in:highlighting:)(v12, string, sub_214CB432C, v13);
  _Block_release(v10);

  MEMORY[0x277D82BD8](tokens);
  MEMORY[0x277D82BD8](string);

  return v7;
}

+ (id)highlightingAuthorTokens:(id)tokens authorEmailTokens:(id)emailTokens inEmailAttributedString:(id)string highlighting:(id)highlighting error:(id *)error
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](tokens);
  MEMORY[0x277D82BE0](emailTokens);
  MEMORY[0x277D82BE0](string);
  v12 = _Block_copy(highlighting);
  v15 = sub_214CCF7E4();
  v13 = sub_214CCF7E4();
  v17 = v12;
  swift_getObjCClassMetadata();
  v8 = static SnippetGenerator.highlightingTokens(authorTokens:authorEmailTokens:inEmailAttributedString:highlighting:)(v15, v13, string, sub_214CB432C, v16);
  _Block_release(v12);

  MEMORY[0x277D82BD8](emailTokens);

  MEMORY[0x277D82BD8](tokens);
  MEMORY[0x277D82BD8](string);

  return v8;
}

+ (id)highlightedSnippetUsingTokens:(id)tokens attributedString:(id)string maxNumberOfWordsBeforeOrAfterToken:(int64_t)token maxNumberOfRanges:(int64_t)ranges highlighting:(id)highlighting error:(id *)error
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](tokens);
  MEMORY[0x277D82BE0](string);
  v12 = _Block_copy(highlighting);
  v16 = sub_214CCF7E4();
  v18 = v12;
  swift_getObjCClassMetadata();
  v9 = static SnippetGenerator.highlightedSnippetUsingTokens(tokens:in:maxNumberOfWordsBeforeOrAfterToken:maxNumberOfRanges:highlighting:)(v16, string, token, ranges, sub_214CB432C, v17);
  _Block_release(v12);

  MEMORY[0x277D82BD8](tokens);
  MEMORY[0x277D82BD8](string);

  return v9;
}

+ (id)highlightedSnippetUsingTokens:(id)tokens attributedString:(id)string frame:(CGRect)frame highlighting:(id)highlighting error:(id *)error
{
  frameCopy = frame;
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](tokens);
  MEMORY[0x277D82BE0](string);
  v11 = _Block_copy(highlighting);
  v14 = sub_214CCF7E4();
  v16 = v11;
  swift_getObjCClassMetadata();
  v8 = static SnippetGenerator.highlightedSnippetUsingTokens(tokens:in:inside:highlighting:)(v14, string, sub_214CB432C, v15, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height);
  _Block_release(v11);

  MEMORY[0x277D82BD8](tokens);
  MEMORY[0x277D82BD8](string);

  return v8;
}

@end