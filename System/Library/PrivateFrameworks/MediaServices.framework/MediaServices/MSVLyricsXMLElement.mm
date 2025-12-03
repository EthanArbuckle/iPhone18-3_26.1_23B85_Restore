@interface MSVLyricsXMLElement
- (id)description;
@end

@implementation MSVLyricsXMLElement

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  elementName = [(MSVLyricsXMLElement *)self elementName];
  identifier = [(MSVLyricsXMLElement *)self identifier];
  v7 = [v3 stringWithFormat:@"<%@ %p> Name: %@, identifier: %@", v4, self, elementName, identifier];

  return v7;
}

@end