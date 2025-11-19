@interface GDGraphSongEntityIdentifier
- (NSString)description;
@end

@implementation GDGraphSongEntityIdentifier

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(GDEntityIdentifier *)self stringValue];
  v5 = [v3 initWithFormat:@"<GDGraphSongEntityIdentifier: %@>", v4];

  return v5;
}

@end