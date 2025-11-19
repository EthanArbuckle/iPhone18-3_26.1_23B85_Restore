@interface DUResponse
- (NSArray)poem;
- (NSArray)posTags;
- (_TtC21DocumentUnderstanding11DUDebugInfo)responseDebugInfo;
- (_TtC21DocumentUnderstanding20DUFoundInEventResult)foundInEventResult;
- (_TtC21DocumentUnderstanding24DUTopicDetectionResponse)topics;
- (_TtC21DocumentUnderstanding25DULanguageTaggingResponse)languageTags;
- (_TtC21DocumentUnderstanding26DUStructuredEntityResponse)structuredEntities;
- (_TtC21DocumentUnderstanding32DUCategoryClassificationResponse)documentCategories;
- (_TtC21DocumentUnderstanding34DUFoundInEventClassificationResult)foundInEventClassificationResult;
- (_TtC21DocumentUnderstanding36DUUserInterfaceUnderstandingResponse)userInterfaceUnderstandingResults;
- (id)copyWithZone:(void *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setDocumentCategories:(id)a3;
- (void)setFoundInEventClassificationResult:(id)a3;
- (void)setFoundInEventResult:(id)a3;
- (void)setLanguageTags:(id)a3;
- (void)setPoem:(id)a3;
- (void)setPosTags:(id)a3;
- (void)setResponseDebugInfo:(id)a3;
- (void)setStructuredEntities:(id)a3;
- (void)setTopics:(id)a3;
- (void)setUserInterfaceUnderstandingResults:(id)a3;
@end

@implementation DUResponse

- (_TtC21DocumentUnderstanding24DUTopicDetectionResponse)topics
{
  v2 = sub_232BF7580();

  return v2;
}

- (void)setTopics:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_232BF7618();
}

- (_TtC21DocumentUnderstanding26DUStructuredEntityResponse)structuredEntities
{
  v2 = sub_232BF7708();

  return v2;
}

- (void)setStructuredEntities:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_232BF77A0();
}

- (_TtC21DocumentUnderstanding25DULanguageTaggingResponse)languageTags
{
  v2 = sub_232BF7890();

  return v2;
}

- (void)setLanguageTags:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_232BF7928();
}

- (_TtC21DocumentUnderstanding36DUUserInterfaceUnderstandingResponse)userInterfaceUnderstandingResults
{
  v2 = sub_232BF7A18();

  return v2;
}

- (void)setUserInterfaceUnderstandingResults:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_232BF7AB0();
}

- (_TtC21DocumentUnderstanding32DUCategoryClassificationResponse)documentCategories
{
  v2 = sub_232BF7BA0();

  return v2;
}

- (void)setDocumentCategories:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_232BF7C38();
}

- (_TtC21DocumentUnderstanding20DUFoundInEventResult)foundInEventResult
{
  v2 = sub_232BF7D28();

  return v2;
}

- (void)setFoundInEventResult:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_232BF7DC0();
}

- (_TtC21DocumentUnderstanding34DUFoundInEventClassificationResult)foundInEventClassificationResult
{
  v2 = sub_232BF7EB0();

  return v2;
}

- (void)setFoundInEventClassificationResult:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_232BF7F48();
}

- (NSArray)poem
{
  if (sub_232BF807C())
  {
    sub_232BA4DEC(0, &qword_27DDC7908, 0x277CF1680);
    v2 = sub_232CE9FD0();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setPoem:(id)a3
{
  v3 = a3;
  if (a3)
  {
    sub_232BA4DEC(0, &qword_27DDC7908, 0x277CF1680);
    v3 = sub_232CE9FE0();
  }

  v5 = self;
  sub_232BF810C(v3);
}

- (NSArray)posTags
{
  if (sub_232BF81F8())
  {
    type metadata accessor for PosTaggingResult();
    v2 = sub_232CE9FD0();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setPosTags:(id)a3
{
  v3 = a3;
  if (a3)
  {
    type metadata accessor for PosTaggingResult();
    v3 = sub_232CE9FE0();
  }

  v5 = self;
  sub_232BF8278(v3);
}

- (_TtC21DocumentUnderstanding11DUDebugInfo)responseDebugInfo
{
  v2 = sub_232BF8330();

  return v2;
}

- (void)setResponseDebugInfo:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_232BF83C8();
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  sub_232BFE75C(v6);

  sub_232B203C8(v6, v6[3]);
  v4 = sub_232CEA740();
  sub_232B2040C(v6);
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_232BFE850();
}

@end