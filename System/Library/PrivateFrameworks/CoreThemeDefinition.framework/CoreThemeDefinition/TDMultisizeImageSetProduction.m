@interface TDMultisizeImageSetProduction
- (TDMultisizeImageSetProduction)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
- (void)processRendition:(id)a3 withBackstop:(id)a4;
@end

@implementation TDMultisizeImageSetProduction

- (TDMultisizeImageSetProduction)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v6.receiver = self;
  v6.super_class = TDMultisizeImageSetProduction;
  v4 = [(TDMultisizeImageSetProduction *)&v6 initWithEntity:a3 insertIntoManagedObjectContext:a4];
  [(TDMultisizeImageSetProduction *)v4 setMakeOpaqueIfPossible:1];
  return v4;
}

- (void)processRendition:(id)a3 withBackstop:(id)a4
{
  v8.receiver = self;
  v8.super_class = TDMultisizeImageSetProduction;
  [TDNamedArtworkProduction processRendition:sel_processRendition_withBackstop_ withBackstop:?];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [TDMultisizeImageSetProduction processRendition:a2 withBackstop:self];
  }

  [a4 setSizeIndex:{objc_msgSend(a3, "sizeIndex")}];
  [a4 setMultisizeImageSetRendition:{objc_msgSend(a3, "multisizeImageSetRendition")}];
}

@end