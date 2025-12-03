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
- (id)copyWithZone:(void *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)setDocumentCategories:(id)categories;
- (void)setFoundInEventClassificationResult:(id)result;
- (void)setFoundInEventResult:(id)result;
- (void)setLanguageTags:(id)tags;
- (void)setPoem:(id)poem;
- (void)setPosTags:(id)tags;
- (void)setResponseDebugInfo:(id)info;
- (void)setStructuredEntities:(id)entities;
- (void)setTopics:(id)topics;
- (void)setUserInterfaceUnderstandingResults:(id)results;
@end

@implementation DUResponse

- (_TtC21DocumentUnderstanding24DUTopicDetectionResponse)topics
{
  v2 = sub_232BF7580();

  return v2;
}

- (void)setTopics:(id)topics
{
  topicsCopy = topics;
  selfCopy = self;
  sub_232BF7618();
}

- (_TtC21DocumentUnderstanding26DUStructuredEntityResponse)structuredEntities
{
  v2 = sub_232BF7708();

  return v2;
}

- (void)setStructuredEntities:(id)entities
{
  entitiesCopy = entities;
  selfCopy = self;
  sub_232BF77A0();
}

- (_TtC21DocumentUnderstanding25DULanguageTaggingResponse)languageTags
{
  v2 = sub_232BF7890();

  return v2;
}

- (void)setLanguageTags:(id)tags
{
  tagsCopy = tags;
  selfCopy = self;
  sub_232BF7928();
}

- (_TtC21DocumentUnderstanding36DUUserInterfaceUnderstandingResponse)userInterfaceUnderstandingResults
{
  v2 = sub_232BF7A18();

  return v2;
}

- (void)setUserInterfaceUnderstandingResults:(id)results
{
  resultsCopy = results;
  selfCopy = self;
  sub_232BF7AB0();
}

- (_TtC21DocumentUnderstanding32DUCategoryClassificationResponse)documentCategories
{
  v2 = sub_232BF7BA0();

  return v2;
}

- (void)setDocumentCategories:(id)categories
{
  categoriesCopy = categories;
  selfCopy = self;
  sub_232BF7C38();
}

- (_TtC21DocumentUnderstanding20DUFoundInEventResult)foundInEventResult
{
  v2 = sub_232BF7D28();

  return v2;
}

- (void)setFoundInEventResult:(id)result
{
  resultCopy = result;
  selfCopy = self;
  sub_232BF7DC0();
}

- (_TtC21DocumentUnderstanding34DUFoundInEventClassificationResult)foundInEventClassificationResult
{
  v2 = sub_232BF7EB0();

  return v2;
}

- (void)setFoundInEventClassificationResult:(id)result
{
  resultCopy = result;
  selfCopy = self;
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

- (void)setPoem:(id)poem
{
  poemCopy = poem;
  if (poem)
  {
    sub_232BA4DEC(0, &qword_27DDC7908, 0x277CF1680);
    poemCopy = sub_232CE9FE0();
  }

  selfCopy = self;
  sub_232BF810C(poemCopy);
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

- (void)setPosTags:(id)tags
{
  tagsCopy = tags;
  if (tags)
  {
    type metadata accessor for PosTaggingResult();
    tagsCopy = sub_232CE9FE0();
  }

  selfCopy = self;
  sub_232BF8278(tagsCopy);
}

- (_TtC21DocumentUnderstanding11DUDebugInfo)responseDebugInfo
{
  v2 = sub_232BF8330();

  return v2;
}

- (void)setResponseDebugInfo:(id)info
{
  infoCopy = info;
  selfCopy = self;
  sub_232BF83C8();
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_232BFE75C(v6);

  sub_232B203C8(v6, v6[3]);
  v4 = sub_232CEA740();
  sub_232B2040C(v6);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_232BFE850();
}

@end