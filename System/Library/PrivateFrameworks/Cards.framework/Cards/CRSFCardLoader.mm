@interface CRSFCardLoader
+ (id)sharedLoader;
- (CRSFCardLoader)init;
- (void)loadSFCard:(id)card completion:(id)completion;
@end

@implementation CRSFCardLoader

+ (id)sharedLoader
{
  if (sharedLoader_onceToken != -1)
  {
    +[CRSFCardLoader sharedLoader];
  }

  v3 = sharedLoader_cardLoader;

  return v3;
}

uint64_t __30__CRSFCardLoader_sharedLoader__block_invoke()
{
  sharedLoader_cardLoader = objc_alloc_init(CRSFCardLoader);

  return MEMORY[0x2821F96F8]();
}

- (CRSFCardLoader)init
{
  v6.receiver = self;
  v6.super_class = CRSFCardLoader;
  v2 = [(CRSFCardLoader *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEA78]);
    loadedCards = v2->_loadedCards;
    v2->_loadedCards = v3;
  }

  return v2;
}

- (void)loadSFCard:(id)card completion:(id)completion
{
  cardCopy = card;
  completionCopy = completion;
  cardId = [cardCopy cardId];
  v9 = [(NSCache *)self->_loadedCards objectForKey:cardId];
  if (v9)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, v9);
    }
  }

  else
  {
    objc_initWeak(&location, self);
    objc_copyWeak(&v12, &location);
    v10 = cardCopy;
    v11 = completionCopy;
    SFResourceLoaderLoadCard();

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __40__CRSFCardLoader_loadSFCard_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (!v5 || v6)
    {
      NSLog(&cfstr_CardFailedToLo.isa, a1[4], v6);
    }

    else
    {
      v9 = *(WeakRetained + 1);
      v10 = [a1[4] cardId];
      [v9 setObject:v5 forKey:v10];

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __40__CRSFCardLoader_loadSFCard_completion___block_invoke_2;
      block[3] = &unk_278DA5920;
      v13 = a1[5];
      v12 = v5;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

uint64_t __40__CRSFCardLoader_loadSFCard_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

@end