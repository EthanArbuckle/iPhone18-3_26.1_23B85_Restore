@interface GDGraphSongEventEntityIdentifier
- (NSString)description;
@end

@implementation GDGraphSongEventEntityIdentifier

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(GDEntityIdentifier *)self stringValue];
  v5 = [v3 initWithFormat:@"<GDGraphSongEventEntityIdentifier: %@>", v4];

  return v5;
}

@end