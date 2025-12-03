@interface TDMultisizeImageSetProduction
- (TDMultisizeImageSetProduction)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
- (void)processRendition:(id)rendition withBackstop:(id)backstop;
@end

@implementation TDMultisizeImageSetProduction

- (TDMultisizeImageSetProduction)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v6.receiver = self;
  v6.super_class = TDMultisizeImageSetProduction;
  v4 = [(TDMultisizeImageSetProduction *)&v6 initWithEntity:entity insertIntoManagedObjectContext:context];
  [(TDMultisizeImageSetProduction *)v4 setMakeOpaqueIfPossible:1];
  return v4;
}

- (void)processRendition:(id)rendition withBackstop:(id)backstop
{
  v8.receiver = self;
  v8.super_class = TDMultisizeImageSetProduction;
  [TDNamedArtworkProduction processRendition:sel_processRendition_withBackstop_ withBackstop:?];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [TDMultisizeImageSetProduction processRendition:a2 withBackstop:self];
  }

  [backstop setSizeIndex:{objc_msgSend(rendition, "sizeIndex")}];
  [backstop setMultisizeImageSetRendition:{objc_msgSend(rendition, "multisizeImageSetRendition")}];
}

@end