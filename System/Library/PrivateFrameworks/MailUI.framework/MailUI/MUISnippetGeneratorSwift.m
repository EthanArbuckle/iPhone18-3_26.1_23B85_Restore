@interface MUISnippetGeneratorSwift
+ (id)highlightedSnippetUsingTokens:(id)a3 attributedString:(id)a4 frame:(CGRect)a5 highlighting:(id)a6 error:(id *)a7;
+ (id)highlightedSnippetUsingTokens:(id)a3 attributedString:(id)a4 maxNumberOfWordsBeforeOrAfterToken:(int64_t)a5 maxNumberOfRanges:(int64_t)a6 highlighting:(id)a7 error:(id *)a8;
+ (id)highlightingAuthorTokens:(id)a3 authorEmailTokens:(id)a4 inEmailAttributedString:(id)a5 highlighting:(id)a6 error:(id *)a7;
+ (id)highlightingTokens:(id)a3 attributedString:(id)a4 highlighting:(id)a5 error:(id *)a6;
@end

@implementation MUISnippetGeneratorSwift

+ (id)highlightingTokens:(id)a3 attributedString:(id)a4 highlighting:(id)a5 error:(id *)a6
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  v10 = _Block_copy(a5);
  v12 = sub_214CCF7E4();
  v14 = v10;
  swift_getObjCClassMetadata();
  v7 = static SnippetGenerator.highlightingTokens(tokens:in:highlighting:)(v12, a4, sub_214CB432C, v13);
  _Block_release(v10);

  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](a4);

  return v7;
}

+ (id)highlightingAuthorTokens:(id)a3 authorEmailTokens:(id)a4 inEmailAttributedString:(id)a5 highlighting:(id)a6 error:(id *)a7
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  MEMORY[0x277D82BE0](a5);
  v12 = _Block_copy(a6);
  v15 = sub_214CCF7E4();
  v13 = sub_214CCF7E4();
  v17 = v12;
  swift_getObjCClassMetadata();
  v8 = static SnippetGenerator.highlightingTokens(authorTokens:authorEmailTokens:inEmailAttributedString:highlighting:)(v15, v13, a5, sub_214CB432C, v16);
  _Block_release(v12);

  MEMORY[0x277D82BD8](a4);

  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](a5);

  return v8;
}

+ (id)highlightedSnippetUsingTokens:(id)a3 attributedString:(id)a4 maxNumberOfWordsBeforeOrAfterToken:(int64_t)a5 maxNumberOfRanges:(int64_t)a6 highlighting:(id)a7 error:(id *)a8
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  v12 = _Block_copy(a7);
  v16 = sub_214CCF7E4();
  v18 = v12;
  swift_getObjCClassMetadata();
  v9 = static SnippetGenerator.highlightedSnippetUsingTokens(tokens:in:maxNumberOfWordsBeforeOrAfterToken:maxNumberOfRanges:highlighting:)(v16, a4, a5, a6, sub_214CB432C, v17);
  _Block_release(v12);

  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](a4);

  return v9;
}

+ (id)highlightedSnippetUsingTokens:(id)a3 attributedString:(id)a4 frame:(CGRect)a5 highlighting:(id)a6 error:(id *)a7
{
  v17 = a5;
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  v11 = _Block_copy(a6);
  v14 = sub_214CCF7E4();
  v16 = v11;
  swift_getObjCClassMetadata();
  v8 = static SnippetGenerator.highlightedSnippetUsingTokens(tokens:in:inside:highlighting:)(v14, a4, sub_214CB432C, v15, a5.origin.x, a5.origin.y, a5.size.width, a5.size.height);
  _Block_release(v11);

  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](a4);

  return v8;
}

@end