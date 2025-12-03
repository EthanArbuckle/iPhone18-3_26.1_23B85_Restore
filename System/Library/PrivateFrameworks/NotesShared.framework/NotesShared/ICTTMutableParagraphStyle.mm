@interface ICTTMutableParagraphStyle
+ (id)paragraphStyleNamed:(unsigned int)named;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ICTTMutableParagraphStyle

+ (id)paragraphStyleNamed:(unsigned int)named
{
  v3 = *&named;
  v4 = objc_alloc_init(ICTTMutableParagraphStyle);
  [(ICTTParagraphStyle *)v4 setStyle:v3];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(ICTTParagraphStyle);
  todo = [(ICTTParagraphStyle *)self todo];
  [(ICTTParagraphStyle *)v4 setTodo:todo];

  [(ICTTParagraphStyle *)v4 setStyle:[(ICTTParagraphStyle *)self style]];
  [(ICTTParagraphStyle *)v4 setAlignment:[(ICTTParagraphStyle *)self alignment]];
  [(ICTTParagraphStyle *)v4 setWritingDirection:[(ICTTParagraphStyle *)self writingDirection]];
  [(ICTTParagraphStyle *)v4 setIndent:[(ICTTParagraphStyle *)self indent]];
  [(ICTTParagraphStyle *)v4 setBlockQuoteLevel:[(ICTTParagraphStyle *)self blockQuoteLevel]];
  [(ICTTParagraphStyle *)v4 setStartingItemNumber:[(ICTTParagraphStyle *)self startingItemNumber]];
  [(ICTTParagraphStyle *)v4 setHints:[(ICTTParagraphStyle *)self hints]];
  [(ICTTParagraphStyle *)v4 setNeedsParagraphCleanup:[(ICTTParagraphStyle *)self needsParagraphCleanup]];
  [(ICTTParagraphStyle *)v4 setNeedsListCleanup:[(ICTTParagraphStyle *)self needsListCleanup]];
  uuid = [(ICTTParagraphStyle *)self uuid];
  [(ICTTParagraphStyle *)v4 setUuid:uuid];

  return v4;
}

@end