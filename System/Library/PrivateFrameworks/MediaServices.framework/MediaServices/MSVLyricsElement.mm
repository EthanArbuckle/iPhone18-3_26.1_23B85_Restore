@interface MSVLyricsElement
+ (id)_descriptionForElementType:(int64_t)type;
- (id)description;
@end

@implementation MSVLyricsElement

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [MSVLyricsElement _descriptionForElementType:[(MSVLyricsElement *)self type]];
  [(MSVLyricsElement *)self startTime];
  v7 = v6;
  [(MSVLyricsElement *)self endTime];
  v9 = v8;
  agent = [(MSVLyricsElement *)self agent];
  v14.receiver = self;
  v14.super_class = MSVLyricsElement;
  v11 = [(MSVLyricsXMLElement *)&v14 description];
  v12 = [v3 stringWithFormat:@"<%@ %p> Type: %@, start: %g, end:%g, agent: %@, XML element: %@", v4, self, v5, v7, v9, agent, v11];

  return v12;
}

+ (id)_descriptionForElementType:(int64_t)type
{
  if (type > 4)
  {
    return 0;
  }

  else
  {
    return off_1E7981C08[type];
  }
}

@end