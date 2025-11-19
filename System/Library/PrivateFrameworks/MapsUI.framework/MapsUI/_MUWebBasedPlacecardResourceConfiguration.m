@interface _MUWebBasedPlacecardResourceConfiguration
+ (NSString)baseDirectory;
+ (NSString)manifestFileDirectory;
+ (NSString)manifestSignedResourceName;
+ (NSString)webBundleEntryPoint;
+ (NSURL)builtInBundlePath;
- (_TtC6MapsUI41_MUWebBasedPlacecardResourceConfiguration)init;
@end

@implementation _MUWebBasedPlacecardResourceConfiguration

+ (NSString)baseDirectory
{
  v2 = sub_1C584F630();

  return v2;
}

+ (NSString)webBundleEntryPoint
{
  v2 = sub_1C584F630();

  return v2;
}

+ (NSString)manifestSignedResourceName
{
  v2 = sub_1C584F630();

  return v2;
}

+ (NSString)manifestFileDirectory
{
  v2 = sub_1C584F630();

  return v2;
}

+ (NSURL)builtInBundlePath
{
  if (qword_1EC174CB0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C584EA90();
  __swift_project_value_buffer(v2, qword_1EC174CB8);
  v3 = sub_1C584EA20();

  return v3;
}

- (_TtC6MapsUI41_MUWebBasedPlacecardResourceConfiguration)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for _MUWebBasedPlacecardResourceConfiguration();
  return [(_MUWebBasedPlacecardResourceConfiguration *)&v3 init];
}

@end