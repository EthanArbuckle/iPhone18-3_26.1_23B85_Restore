@interface ML3DatabaseMetadata
+ (void)initialize;
@end

@implementation ML3DatabaseMetadata

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"audio_language", @"subtitle_language", @"genius_cuid", @"primary_container_pid", 0}];
    v4 = ML3DatabaseMetadataAllProperties;
    ML3DatabaseMetadataAllProperties = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [self predisambiguateProperties:ML3DatabaseMetadataAllProperties toDictionary:v5];
    v6 = ML3DatabaseMetadataPredisambiguatedPropertyForProperties;
    ML3DatabaseMetadataPredisambiguatedPropertyForProperties = v5;
  }
}

@end