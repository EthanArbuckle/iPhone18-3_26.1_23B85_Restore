@interface ConverterUtils
+ (Reader)getCppReaderFromObjCObject:(SEL)object;
+ (id)convertMentionDetectorResponseFromCppToObjC:(void *)c;
+ (id)convertMentionResolverResponseFromCppToObjC:(void *)c;
+ (unique_ptr<sirinluinternalmention_detector::MentionDetectorRequest,)convertMentionDetectorRequestFromObjCToCpp:(id)cpp;
+ (unique_ptr<sirinluinternalmention_resolver::MentionResolverRequest,)convertMentionResolverRequestFromObjCToCpp:(id)cpp;
@end

@implementation ConverterUtils

+ (id)convertMentionDetectorResponseFromCppToObjC:(void *)c
{
  if (*c)
  {
    operator new();
  }

  return 0;
}

+ (id)convertMentionResolverResponseFromCppToObjC:(void *)c
{
  if (*c)
  {
    operator new();
  }

  return 0;
}

+ (unique_ptr<sirinluinternalmention_resolver::MentionResolverRequest,)convertMentionResolverRequestFromObjCToCpp:(id)cpp
{
  v5 = v3;
  cppCopy = cpp;
  if (cppCopy)
  {
    [self getCppReaderFromObjCObject:cppCopy];
    operator new();
  }

  *v5 = 0;

  return v7;
}

+ (unique_ptr<sirinluinternalmention_detector::MentionDetectorRequest,)convertMentionDetectorRequestFromObjCToCpp:(id)cpp
{
  v5 = v3;
  cppCopy = cpp;
  if (cppCopy)
  {
    [self getCppReaderFromObjCObject:cppCopy];
    operator new();
  }

  *v5 = 0;

  return v7;
}

+ (Reader)getCppReaderFromObjCObject:(SEL)object
{
  data = [a4 data];
  bytes = [data bytes];
  [data length];
  PB::Reader::Reader(retstr, bytes);

  return result;
}

@end