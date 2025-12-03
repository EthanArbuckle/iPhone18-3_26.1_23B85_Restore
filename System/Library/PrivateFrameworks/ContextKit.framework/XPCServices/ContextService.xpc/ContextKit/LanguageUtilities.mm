@interface LanguageUtilities
+ (BOOL)isChineseJapaneseToken:(id)token;
+ (BOOL)isChineseLanguageTag:(id)tag;
+ (BOOL)isJapaneseLanguageTag:(id)tag;
+ (id)partsOfSpeechInText:(id)text;
+ (id)simplifyLanguageTag:(id)tag;
+ (id)simplifyTextForSearch:(id)search withLanguage:(id)language;
+ (id)transliterateTextToLanguageScript:(id)script withSimplifiedLanguage:(id)language;
+ (void)initialize;
@end

@implementation LanguageUtilities

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = qword_100557150;
    qword_100557150 = &off_1004A9EB0;

    v3 = [NSSet setWithArray:&off_1004A9E38];
    v4 = qword_100557158;
    qword_100557158 = v3;

    qword_100557160 = [NSRegularExpression regularExpressionWithPattern:@"[\\p{Han}\\p{Hiragana}\\p{Katakana}]" options:0 error:0];

    _objc_release_x1();
  }
}

+ (id)partsOfSpeechInText:(id)text
{
  textCopy = text;
  if ([textCopy length])
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = [NLTagger alloc];
    v29 = NLTagSchemeNameTypeOrLexicalClass;
    v6 = [NSArray arrayWithObjects:&v29 count:1];
    v7 = [v5 initWithTagSchemes:v6];

    [v7 setString:textCopy];
    v28[0] = NLTagNoun;
    v28[1] = NLTagAdverb;
    v28[2] = NLTagVerb;
    v28[3] = NLTagPronoun;
    v28[4] = NLTagPersonalName;
    v28[5] = NLTagAdjective;
    v28[6] = NLTagPlaceName;
    v8 = [NSArray arrayWithObjects:v28 count:7];
    v9 = [textCopy length];
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_1002996F8;
    v24 = &unk_100483A78;
    v10 = v8;
    v25 = v10;
    v11 = textCopy;
    v26 = v11;
    v12 = v4;
    v27 = v12;
    [v7 enumerateTagsInRange:0 unit:v9 scheme:0 options:NLTagSchemeNameTypeOrLexicalClass usingBlock:{22, &v21}];
    allKeys = [v12 allKeys];
    v14 = [allKeys count];

    if (!v14)
    {
      v15 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
      v16 = [v11 componentsSeparatedByCharactersInSet:v15];
      v17 = [NSSet setWithArray:v16];
      [v12 setObject:v17 forKeyedSubscript:@"other"];
    }

    v18 = v27;
    v19 = v12;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (id)simplifyLanguageTag:(id)tag
{
  tagCopy = tag;
  v4 = [qword_100557150 objectForKeyedSubscript:tagCopy];
  if ([v4 length])
  {
    v5 = v4;
  }

  else
  {
    v6 = [tagCopy rangeOfString:@"-"];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = tagCopy;
    }

    else
    {
      v5 = [tagCopy substringWithRange:{0, v6}];
    }
  }

  v7 = v5;

  return v7;
}

+ (id)simplifyTextForSearch:(id)search withLanguage:(id)language
{
  searchCopy = search;
  v6 = [LanguageUtilities simplifyLanguageTag:language];
  if ([@"zht" isEqualToString:v6])
  {
    v7 = [NSMutableString stringWithString:searchCopy];
    CFStringTransform(v7, 0, @"Traditional-Simplified", 0);
  }

  else
  {
    v7 = searchCopy;
  }

  return v7;
}

+ (id)transliterateTextToLanguageScript:(id)script withSimplifiedLanguage:(id)language
{
  scriptCopy = script;
  languageCopy = language;
  if ([@"zhs" isEqualToString:languageCopy])
  {
    v7 = [NSMutableString stringWithString:scriptCopy];
    v8 = v7;
    v9 = @"Traditional-Simplified";
LABEL_5:
    CFStringTransform(v7, 0, v9, 0);
    goto LABEL_7;
  }

  if ([@"zht" isEqualToString:languageCopy])
  {
    v7 = [NSMutableString stringWithString:scriptCopy];
    v8 = v7;
    v9 = @"Simplified-Traditional";
    goto LABEL_5;
  }

  v8 = scriptCopy;
LABEL_7:

  return v8;
}

+ (BOOL)isChineseLanguageTag:(id)tag
{
  v3 = [LanguageUtilities simplifyLanguageTag:tag];
  v4 = [qword_100557158 containsObject:v3];

  return v4;
}

+ (BOOL)isJapaneseLanguageTag:(id)tag
{
  v3 = [LanguageUtilities simplifyLanguageTag:tag];
  v4 = [@"ja" isEqualToString:v3];

  return v4;
}

+ (BOOL)isChineseJapaneseToken:(id)token
{
  v3 = qword_100557160;
  tokenCopy = token;
  v5 = [v3 numberOfMatchesInString:tokenCopy options:0 range:{0, objc_msgSend(tokenCopy, "length")}];

  return v5 != 0;
}

@end