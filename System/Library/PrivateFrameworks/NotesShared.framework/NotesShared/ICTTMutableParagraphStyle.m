@interface ICTTMutableParagraphStyle
+ (id)paragraphStyleNamed:(unsigned int)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation ICTTMutableParagraphStyle

+ (id)paragraphStyleNamed:(unsigned int)a3
{
  v3 = *&a3;
  v4 = objc_alloc_init(ICTTMutableParagraphStyle);
  [(ICTTParagraphStyle *)v4 setStyle:v3];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(ICTTParagraphStyle);
  v5 = [(ICTTParagraphStyle *)self todo];
  [(ICTTParagraphStyle *)v4 setTodo:v5];

  [(ICTTParagraphStyle *)v4 setStyle:[(ICTTParagraphStyle *)self style]];
  [(ICTTParagraphStyle *)v4 setAlignment:[(ICTTParagraphStyle *)self alignment]];
  [(ICTTParagraphStyle *)v4 setWritingDirection:[(ICTTParagraphStyle *)self writingDirection]];
  [(ICTTParagraphStyle *)v4 setIndent:[(ICTTParagraphStyle *)self indent]];
  [(ICTTParagraphStyle *)v4 setBlockQuoteLevel:[(ICTTParagraphStyle *)self blockQuoteLevel]];
  [(ICTTParagraphStyle *)v4 setStartingItemNumber:[(ICTTParagraphStyle *)self startingItemNumber]];
  [(ICTTParagraphStyle *)v4 setHints:[(ICTTParagraphStyle *)self hints]];
  [(ICTTParagraphStyle *)v4 setNeedsParagraphCleanup:[(ICTTParagraphStyle *)self needsParagraphCleanup]];
  [(ICTTParagraphStyle *)v4 setNeedsListCleanup:[(ICTTParagraphStyle *)self needsListCleanup]];
  v6 = [(ICTTParagraphStyle *)self uuid];
  [(ICTTParagraphStyle *)v4 setUuid:v6];

  return v4;
}

@end