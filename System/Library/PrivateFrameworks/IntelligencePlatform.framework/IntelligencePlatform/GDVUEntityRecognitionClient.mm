@interface GDVUEntityRecognitionClient
+ (id)contacts;
+ (id)homekit;
+ (id)photos;
+ (id)reserved;
+ (id)syndication;
@end

@implementation GDVUEntityRecognitionClient

+ (id)photos
{
  v2 = static GDVUEntityRecognitionClient.photos()();

  return v2;
}

+ (id)syndication
{
  v2 = static GDVUEntityRecognitionClient.syndication()();

  return v2;
}

+ (id)homekit
{
  v2 = static GDVUEntityRecognitionClient.homekit()();

  return v2;
}

+ (id)contacts
{
  v2 = static GDVUEntityRecognitionClient.contacts()();

  return v2;
}

+ (id)reserved
{
  v2 = static GDVUEntityRecognitionClient.reserved()();

  return v2;
}

@end