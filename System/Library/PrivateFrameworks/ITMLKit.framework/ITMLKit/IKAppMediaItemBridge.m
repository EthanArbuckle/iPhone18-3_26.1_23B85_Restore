@interface IKAppMediaItemBridge
- (BOOL)isExplicit;
- (IKAppContext)appContext;
- (IKAppMediaItem)appMediaItem;
- (IKAppMediaItemBridge)initWithAppContext:(id)a3 jsMediaItem:(id)a4;
- (IKJSMediaItem)jsMediaItem;
- (NSArray)chapterGroups;
- (NSArray)interstitials;
- (NSDictionary)extraMetadata;
- (NSNumber)contentRatingRanking;
- (NSNumber)resumeTime;
- (NSString)contentRatingDomain;
- (NSString)description;
- (NSString)externalID;
- (NSString)ratingBadge;
- (NSString)subtitle;
- (NSString)title;
- (NSString)type;
- (NSString)url;
- (double)contentProposalAutomaticAcceptanceInterval;
- (double)contentProposalPresentationTime;
- (void)_evaluateDelegateBlockSync:(id)a3;
- (void)_resolveArtworkImageURL;
- (void)cleanup;
- (void)loadCertificateDataForURL:(id)a3 withCallback:(id)a4;
- (void)loadContentIdentifierDataForURL:(id)a3 withCallback:(id)a4;
- (void)loadKeyDataForURL:(id)a3 keyRequestData:(id)a4 withCallback:(id)a5;
- (void)prepareForLoadingWithCallback:(id)a3;
- (void)setArtworkImageSrcset:(id)a3;
- (void)setArtworkImageURL:(id)a3;
- (void)setChapterGroups:(id)a3;
- (void)setContentProposalAutomaticAcceptanceInterval:(double)a3;
- (void)setContentProposalPresentationTime:(double)a3;
- (void)setContentRatingDomain:(id)a3;
- (void)setContentRatingRanking:(id)a3;
- (void)setDescription:(id)a3;
- (void)setExternalID:(id)a3;
- (void)setExtraMetadata:(id)a3;
- (void)setInterstitials:(id)a3;
- (void)setRatingBadge:(id)a3;
- (void)setResumeTime:(id)a3;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
- (void)setType:(id)a3;
- (void)setUrl:(id)a3;
@end

@implementation IKAppMediaItemBridge

- (IKAppMediaItemBridge)initWithAppContext:(id)a3 jsMediaItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v24.receiver = self;
  v24.super_class = IKAppMediaItemBridge;
  v8 = [(IKAppMediaItemBridge *)&v24 init];
  if (v8)
  {
    if (initWithAppContext_jsMediaItem__onceToken != -1)
    {
      [IKAppMediaItemBridge initWithAppContext:jsMediaItem:];
    }

    objc_storeWeak(&v8->_appContext, v6);
    objc_storeWeak(&v8->_jsMediaItem, v7);
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__24;
    v22 = __Block_byref_object_dispose__24;
    v23 = 0;
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __55__IKAppMediaItemBridge_initWithAppContext_jsMediaItem___block_invoke_89;
    v15 = &unk_279799028;
    v17 = &v18;
    v9 = v8;
    v16 = v9;
    [v6 evaluateDelegateBlockSync:&v12];
    if (v19[5])
    {
      [_globalMediaItems addObject:{v12, v13, v14, v15}];
      v10 = v19[5];
    }

    else
    {
      v10 = 0;
    }

    objc_storeWeak(v9 + 3, v10);

    _Block_object_dispose(&v18, 8);
  }

  return v8;
}

uint64_t __55__IKAppMediaItemBridge_initWithAppContext_jsMediaItem___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:1];
  v1 = _globalMediaItems;
  _globalMediaItems = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __55__IKAppMediaItemBridge_initWithAppContext_jsMediaItem___block_invoke_89(uint64_t a1, void *a2)
{
  v6 = [a2 delegate];
  v3 = [v6 objectForMediaItem:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)cleanup
{
  WeakRetained = objc_loadWeakRetained(&self->_appMediaItem);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_appMediaItem);
    v5 = _globalMediaItems;
    v6 = objc_loadWeakRetained(&self->_appMediaItem);
    [v5 removeObject:v6];

    objc_storeWeak(&self->_appMediaItem, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __31__IKAppMediaItemBridge_cleanup__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = v4;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)setUrl:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__IKAppMediaItemBridge_setUrl___block_invoke;
  v6[3] = &unk_27979BAB8;
  v7 = v4;
  v5 = v4;
  [(IKAppMediaItemBridge *)self _evaluateDelegateBlockSync:v6];
}

void __31__IKAppMediaItemBridge_setUrl___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 appMediaItem];
  v4 = [MEMORY[0x277CBEBC0] URLWithString:*(a1 + 32)];
  [v5 setUrl:v4];
}

- (NSString)url
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__24;
  v9 = __Block_byref_object_dispose__24;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __27__IKAppMediaItemBridge_url__block_invoke;
  v4[3] = &unk_27979BAE0;
  v4[4] = &v5;
  [(IKAppMediaItemBridge *)self _evaluateDelegateBlockSync:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __27__IKAppMediaItemBridge_url__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = [a3 appMediaItem];
  v4 = [v8 url];
  v5 = [v4 absoluteString];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)setType:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__IKAppMediaItemBridge_setType___block_invoke;
  v6[3] = &unk_27979BAB8;
  v7 = v4;
  v5 = v4;
  [(IKAppMediaItemBridge *)self _evaluateDelegateBlockSync:v6];
}

void __32__IKAppMediaItemBridge_setType___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 appMediaItem];
  [v4 setType:*(a1 + 32)];
}

- (NSString)type
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__24;
  v9 = __Block_byref_object_dispose__24;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __28__IKAppMediaItemBridge_type__block_invoke;
  v4[3] = &unk_27979BAE0;
  v4[4] = &v5;
  [(IKAppMediaItemBridge *)self _evaluateDelegateBlockSync:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __28__IKAppMediaItemBridge_type__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = [a3 appMediaItem];
  v4 = [v7 type];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)setInterstitials:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__IKAppMediaItemBridge_setInterstitials___block_invoke;
  v6[3] = &unk_27979BAB8;
  v7 = v4;
  v5 = v4;
  [(IKAppMediaItemBridge *)self _evaluateDelegateBlockSync:v6];
}

void __41__IKAppMediaItemBridge_setInterstitials___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 appMediaItem];
  [v4 setObject:*(a1 + 32) forKey:@"interstitials"];
}

- (NSArray)interstitials
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__24;
  v9 = __Block_byref_object_dispose__24;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__IKAppMediaItemBridge_interstitials__block_invoke;
  v4[3] = &unk_27979BAE0;
  v4[4] = &v5;
  [(IKAppMediaItemBridge *)self _evaluateDelegateBlockSync:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __37__IKAppMediaItemBridge_interstitials__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = [a3 appMediaItem];
  v4 = [v7 objectForKey:@"interstitials"];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)setChapterGroups:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__IKAppMediaItemBridge_setChapterGroups___block_invoke;
  v6[3] = &unk_27979BAB8;
  v7 = v4;
  v5 = v4;
  [(IKAppMediaItemBridge *)self _evaluateDelegateBlockSync:v6];
}

void __41__IKAppMediaItemBridge_setChapterGroups___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 appMediaItem];
  [v4 setObject:*(a1 + 32) forKey:@"chapterGroups"];
}

- (NSArray)chapterGroups
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__24;
  v9 = __Block_byref_object_dispose__24;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__IKAppMediaItemBridge_chapterGroups__block_invoke;
  v4[3] = &unk_27979BAE0;
  v4[4] = &v5;
  [(IKAppMediaItemBridge *)self _evaluateDelegateBlockSync:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __37__IKAppMediaItemBridge_chapterGroups__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = [a3 appMediaItem];
  v4 = [v7 objectForKey:@"chapterGroups"];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)setExternalID:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__IKAppMediaItemBridge_setExternalID___block_invoke;
  v6[3] = &unk_27979BAB8;
  v7 = v4;
  v5 = v4;
  [(IKAppMediaItemBridge *)self _evaluateDelegateBlockSync:v6];
}

void __38__IKAppMediaItemBridge_setExternalID___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 appMediaItem];
  [v4 setObject:*(a1 + 32) forKey:@"externalID"];
}

- (NSString)externalID
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__24;
  v9 = __Block_byref_object_dispose__24;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__IKAppMediaItemBridge_externalID__block_invoke;
  v4[3] = &unk_27979BAE0;
  v4[4] = &v5;
  [(IKAppMediaItemBridge *)self _evaluateDelegateBlockSync:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __34__IKAppMediaItemBridge_externalID__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = [a3 appMediaItem];
  v4 = [v7 objectForKey:@"externalID"];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__IKAppMediaItemBridge_setTitle___block_invoke;
  v6[3] = &unk_27979BAB8;
  v7 = v4;
  v5 = v4;
  [(IKAppMediaItemBridge *)self _evaluateDelegateBlockSync:v6];
}

void __33__IKAppMediaItemBridge_setTitle___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 appMediaItem];
  [v4 setObject:*(a1 + 32) forKey:@"title"];
}

- (NSString)title
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__24;
  v9 = __Block_byref_object_dispose__24;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __29__IKAppMediaItemBridge_title__block_invoke;
  v4[3] = &unk_27979BAE0;
  v4[4] = &v5;
  [(IKAppMediaItemBridge *)self _evaluateDelegateBlockSync:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __29__IKAppMediaItemBridge_title__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = [a3 appMediaItem];
  v4 = [v7 objectForKey:@"title"];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)setSubtitle:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__IKAppMediaItemBridge_setSubtitle___block_invoke;
  v6[3] = &unk_27979BAB8;
  v7 = v4;
  v5 = v4;
  [(IKAppMediaItemBridge *)self _evaluateDelegateBlockSync:v6];
}

void __36__IKAppMediaItemBridge_setSubtitle___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 appMediaItem];
  [v4 setObject:*(a1 + 32) forKey:@"subtite"];
}

- (NSString)subtitle
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__24;
  v9 = __Block_byref_object_dispose__24;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __32__IKAppMediaItemBridge_subtitle__block_invoke;
  v4[3] = &unk_27979BAE0;
  v4[4] = &v5;
  [(IKAppMediaItemBridge *)self _evaluateDelegateBlockSync:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __32__IKAppMediaItemBridge_subtitle__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = [a3 appMediaItem];
  v4 = [v7 objectForKey:@"subtite"];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)setDescription:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__IKAppMediaItemBridge_setDescription___block_invoke;
  v6[3] = &unk_27979BAB8;
  v7 = v4;
  v5 = v4;
  [(IKAppMediaItemBridge *)self _evaluateDelegateBlockSync:v6];
}

void __39__IKAppMediaItemBridge_setDescription___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 appMediaItem];
  [v4 setObject:*(a1 + 32) forKey:@"description"];
}

- (NSString)description
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__24;
  v9 = __Block_byref_object_dispose__24;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__IKAppMediaItemBridge_description__block_invoke;
  v4[3] = &unk_27979BAE0;
  v4[4] = &v5;
  [(IKAppMediaItemBridge *)self _evaluateDelegateBlockSync:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __35__IKAppMediaItemBridge_description__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = [a3 appMediaItem];
  v4 = [v7 objectForKey:@"description"];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)setContentRatingRanking:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__IKAppMediaItemBridge_setContentRatingRanking___block_invoke;
  v6[3] = &unk_27979BAB8;
  v7 = v4;
  v5 = v4;
  [(IKAppMediaItemBridge *)self _evaluateDelegateBlockSync:v6];
}

void __48__IKAppMediaItemBridge_setContentRatingRanking___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 appMediaItem];
  [v4 setObject:*(a1 + 32) forKey:@"contentRatingRanking"];
}

- (NSNumber)contentRatingRanking
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__24;
  v9 = __Block_byref_object_dispose__24;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__IKAppMediaItemBridge_contentRatingRanking__block_invoke;
  v4[3] = &unk_27979BAE0;
  v4[4] = &v5;
  [(IKAppMediaItemBridge *)self _evaluateDelegateBlockSync:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __44__IKAppMediaItemBridge_contentRatingRanking__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = [a3 appMediaItem];
  v4 = [v7 objectForKey:@"contentRatingRanking"];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)setContentRatingDomain:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__IKAppMediaItemBridge_setContentRatingDomain___block_invoke;
  v6[3] = &unk_27979BAB8;
  v7 = v4;
  v5 = v4;
  [(IKAppMediaItemBridge *)self _evaluateDelegateBlockSync:v6];
}

void __47__IKAppMediaItemBridge_setContentRatingDomain___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 appMediaItem];
  [v4 setObject:*(a1 + 32) forKey:@"contentRatingDomain"];
}

- (NSString)contentRatingDomain
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__24;
  v9 = __Block_byref_object_dispose__24;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__IKAppMediaItemBridge_contentRatingDomain__block_invoke;
  v4[3] = &unk_27979BAE0;
  v4[4] = &v5;
  [(IKAppMediaItemBridge *)self _evaluateDelegateBlockSync:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __43__IKAppMediaItemBridge_contentRatingDomain__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = [a3 appMediaItem];
  v4 = [v7 objectForKey:@"contentRatingDomain"];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)setArtworkImageURL:(id)a3
{
  objc_storeStrong(&self->_artworkImageURL, a3);

  [(IKAppMediaItemBridge *)self _resolveArtworkImageURL];
}

- (void)setArtworkImageSrcset:(id)a3
{
  objc_storeStrong(&self->_artworkImageSrcset, a3);

  [(IKAppMediaItemBridge *)self _resolveArtworkImageURL];
}

- (void)setRatingBadge:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__IKAppMediaItemBridge_setRatingBadge___block_invoke;
  v6[3] = &unk_27979BAB8;
  v7 = v4;
  v5 = v4;
  [(IKAppMediaItemBridge *)self _evaluateDelegateBlockSync:v6];
}

void __39__IKAppMediaItemBridge_setRatingBadge___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 appMediaItem];
  [v4 setObject:*(a1 + 32) forKey:@"ratingBadge"];
}

- (NSString)ratingBadge
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__24;
  v9 = __Block_byref_object_dispose__24;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__IKAppMediaItemBridge_ratingBadge__block_invoke;
  v4[3] = &unk_27979BAE0;
  v4[4] = &v5;
  [(IKAppMediaItemBridge *)self _evaluateDelegateBlockSync:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __35__IKAppMediaItemBridge_ratingBadge__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = [a3 appMediaItem];
  v4 = [v7 objectForKey:@"ratingBadge"];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __38__IKAppMediaItemBridge_setIsExplicit___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 appMediaItem];
  [v4 setObject:*(a1 + 32) forKey:@"isExplicit"];
}

- (BOOL)isExplicit
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__24;
  v9 = __Block_byref_object_dispose__24;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__IKAppMediaItemBridge_isExplicit__block_invoke;
  v4[3] = &unk_27979BAE0;
  v4[4] = &v5;
  [(IKAppMediaItemBridge *)self _evaluateDelegateBlockSync:v4];
  v2 = [v6[5] BOOLValue];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __34__IKAppMediaItemBridge_isExplicit__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = [a3 appMediaItem];
  v4 = [v7 objectForKey:@"isExplicit"];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)setResumeTime:(id)a3
{
  v4 = &unk_2866F1008;
  if (a3)
  {
    v4 = a3;
  }

  v5 = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__IKAppMediaItemBridge_setResumeTime___block_invoke;
  v7[3] = &unk_27979BAB8;
  v8 = v5;
  v6 = v5;
  [(IKAppMediaItemBridge *)self _evaluateDelegateBlockSync:v7];
}

void __38__IKAppMediaItemBridge_setResumeTime___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 appMediaItem];
  [v4 setObject:*(a1 + 32) forKey:@"resumeTime"];
}

- (NSNumber)resumeTime
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__24;
  v9 = __Block_byref_object_dispose__24;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__IKAppMediaItemBridge_resumeTime__block_invoke;
  v4[3] = &unk_27979BAE0;
  v4[4] = &v5;
  [(IKAppMediaItemBridge *)self _evaluateDelegateBlockSync:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __34__IKAppMediaItemBridge_resumeTime__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = [a3 appMediaItem];
  v4 = [v7 objectForKey:@"resumeTime"];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)setExtraMetadata:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__IKAppMediaItemBridge_setExtraMetadata___block_invoke;
  v6[3] = &unk_27979BAB8;
  v7 = v4;
  v5 = v4;
  [(IKAppMediaItemBridge *)self _evaluateDelegateBlockSync:v6];
}

void __41__IKAppMediaItemBridge_setExtraMetadata___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 appMediaItem];
  [v4 setObject:*(a1 + 32) forKey:@"extraMetadata"];
}

- (NSDictionary)extraMetadata
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__24;
  v9 = __Block_byref_object_dispose__24;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__IKAppMediaItemBridge_extraMetadata__block_invoke;
  v4[3] = &unk_27979BAE0;
  v4[4] = &v5;
  [(IKAppMediaItemBridge *)self _evaluateDelegateBlockSync:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __37__IKAppMediaItemBridge_extraMetadata__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = [a3 appMediaItem];
  v4 = [v7 objectForKey:@"extraMetadata"];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (double)contentProposalPresentationTime
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__24;
  v10 = __Block_byref_object_dispose__24;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__IKAppMediaItemBridge_contentProposalPresentationTime__block_invoke;
  v5[3] = &unk_27979BAE0;
  v5[4] = &v6;
  [(IKAppMediaItemBridge *)self _evaluateDelegateBlockSync:v5];
  [v7[5] doubleValue];
  v3 = v2;
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __55__IKAppMediaItemBridge_contentProposalPresentationTime__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = [a3 appMediaItem];
  v4 = [v7 objectForKey:@"contentProposalPresentationTime"];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)setContentProposalPresentationTime:(double)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __59__IKAppMediaItemBridge_setContentProposalPresentationTime___block_invoke;
  v3[3] = &__block_descriptor_40_e47_v24__0__IKAppContext_8__IKAppMediaItemBridge_16l;
  *&v3[4] = a3;
  [(IKAppMediaItemBridge *)self _evaluateDelegateBlockSync:v3];
}

void __59__IKAppMediaItemBridge_setContentProposalPresentationTime___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 appMediaItem];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 32)];
  [v5 setObject:v4 forKey:@"contentProposalPresentationTime"];
}

- (double)contentProposalAutomaticAcceptanceInterval
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__24;
  v10 = __Block_byref_object_dispose__24;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__IKAppMediaItemBridge_contentProposalAutomaticAcceptanceInterval__block_invoke;
  v5[3] = &unk_27979BAE0;
  v5[4] = &v6;
  [(IKAppMediaItemBridge *)self _evaluateDelegateBlockSync:v5];
  [v7[5] doubleValue];
  v3 = v2;
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __66__IKAppMediaItemBridge_contentProposalAutomaticAcceptanceInterval__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = [a3 appMediaItem];
  v4 = [v7 objectForKey:@"contentProposalPresentationTime"];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)setContentProposalAutomaticAcceptanceInterval:(double)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __70__IKAppMediaItemBridge_setContentProposalAutomaticAcceptanceInterval___block_invoke;
  v3[3] = &__block_descriptor_40_e47_v24__0__IKAppContext_8__IKAppMediaItemBridge_16l;
  *&v3[4] = a3;
  [(IKAppMediaItemBridge *)self _evaluateDelegateBlockSync:v3];
}

void __70__IKAppMediaItemBridge_setContentProposalAutomaticAcceptanceInterval___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 appMediaItem];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 32)];
  [v5 setObject:v4 forKey:@"contentProposalAutomaticAcceptanceInterval"];
}

- (void)prepareForLoadingWithCallback:(id)a3
{
  v4 = a3;
  objc_copyWeak(&to, &self->_appContext);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__IKAppMediaItemBridge_prepareForLoadingWithCallback___block_invoke;
  v13[3] = &unk_27979BB50;
  objc_copyWeak(&v15, &to);
  v5 = v4;
  v14 = v5;
  v6 = MEMORY[0x259C21BA0](v13);
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_appContext);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__IKAppMediaItemBridge_prepareForLoadingWithCallback___block_invoke_3;
  v9[3] = &unk_27979ABF8;
  objc_copyWeak(&v11, &location);
  v8 = v6;
  v10 = v8;
  [WeakRetained evaluate:v9 completionBlock:0];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&to);
}

void __54__IKAppMediaItemBridge_prepareForLoadingWithCallback___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 isBoolean])
  {
    v7 = [v5 toBool];
  }

  else
  {
    v7 = 0;
  }

  if ([v6 isString])
  {
    v8 = [v6 toString];
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:v8 code:1 userInfo:0];
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__IKAppMediaItemBridge_prepareForLoadingWithCallback___block_invoke_2;
  v13[3] = &unk_27979BB28;
  v11 = *(a1 + 32);
  v16 = v7;
  v14 = v9;
  v15 = v11;
  v12 = v9;
  [WeakRetained evaluateDelegateBlockSync:v13];
}

void __54__IKAppMediaItemBridge_prepareForLoadingWithCallback___block_invoke_3(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = MEMORY[0x277CD4658];
  v6 = objc_loadWeakRetained(WeakRetained + 5);
  v7 = [v5 valueWithObject:v6 inContext:v3];

  if ([v7 hasProperty:@"prepareForLoadingWithCompletion"])
  {
    v8 = objc_loadWeakRetained(WeakRetained + 5);
    v9 = MEMORY[0x259C21BA0](*(a1 + 32));
    v13[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v11 = [v8 invokeMethod:@"prepareForLoadingWithCompletion" withArguments:v10];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)loadCertificateDataForURL:(id)a3 withCallback:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_copyWeak(&to, &self->_appContext);
  v8 = [v6 absoluteString];
  v9 = [(IKAppMediaItemBridge *)self jsMediaItem];
  v10 = objc_loadWeakRetained(&to);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__IKAppMediaItemBridge_loadCertificateDataForURL_withCallback___block_invoke;
  v14[3] = &unk_27979BBC8;
  v11 = v9;
  v15 = v11;
  v12 = v8;
  v16 = v12;
  objc_copyWeak(&v18, &to);
  v13 = v7;
  v17 = v13;
  [v10 evaluate:v14 completionBlock:0];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&to);
}

void __63__IKAppMediaItemBridge_loadCertificateDataForURL_withCallback___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__IKAppMediaItemBridge_loadCertificateDataForURL_withCallback___block_invoke_2;
  v6[3] = &unk_27979BBA0;
  objc_copyWeak(&v8, (a1 + 56));
  v7 = *(a1 + 48);
  [v4 loadCertificateDataForURI:v5 withCallback:v6];

  objc_destroyWeak(&v8);
}

void __63__IKAppMediaItemBridge_loadCertificateDataForURL_withCallback___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    v9 = MEMORY[0x277CBEA90];
    v10 = a2;
    a2 = [[v9 alloc] initWithBase64EncodedString:v10 options:0];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __63__IKAppMediaItemBridge_loadCertificateDataForURL_withCallback___block_invoke_3;
  v16[3] = &unk_27979BB78;
  v12 = *(a1 + 32);
  v17 = a2;
  v18 = v7;
  v19 = v8;
  v20 = v12;
  v13 = v8;
  v14 = v7;
  v15 = a2;
  [WeakRetained evaluateDelegateBlockSync:v16];
}

- (void)loadContentIdentifierDataForURL:(id)a3 withCallback:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_copyWeak(&to, &self->_appContext);
  v8 = [v6 absoluteString];
  v9 = [(IKAppMediaItemBridge *)self jsMediaItem];
  v10 = objc_loadWeakRetained(&to);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__IKAppMediaItemBridge_loadContentIdentifierDataForURL_withCallback___block_invoke;
  v14[3] = &unk_27979BBC8;
  v11 = v9;
  v15 = v11;
  v12 = v8;
  v16 = v12;
  objc_copyWeak(&v18, &to);
  v13 = v7;
  v17 = v13;
  [v10 evaluate:v14 completionBlock:0];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&to);
}

void __69__IKAppMediaItemBridge_loadContentIdentifierDataForURL_withCallback___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__IKAppMediaItemBridge_loadContentIdentifierDataForURL_withCallback___block_invoke_2;
  v6[3] = &unk_27979BBA0;
  objc_copyWeak(&v8, (a1 + 56));
  v7 = *(a1 + 48);
  [v4 loadContentIdentifierDataForURI:v5 withCallback:v6];

  objc_destroyWeak(&v8);
}

void __69__IKAppMediaItemBridge_loadContentIdentifierDataForURL_withCallback___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    v9 = MEMORY[0x277CBEA90];
    v10 = a2;
    a2 = [[v9 alloc] initWithBase64EncodedString:v10 options:0];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__IKAppMediaItemBridge_loadContentIdentifierDataForURL_withCallback___block_invoke_3;
  v16[3] = &unk_27979BB78;
  v12 = *(a1 + 32);
  v17 = a2;
  v18 = v7;
  v19 = v8;
  v20 = v12;
  v13 = v8;
  v14 = v7;
  v15 = a2;
  [WeakRetained evaluateDelegateBlockSync:v16];
}

- (void)loadKeyDataForURL:(id)a3 keyRequestData:(id)a4 withCallback:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_copyWeak(&to, &self->_appContext);
  v11 = [v8 absoluteString];
  v12 = [v9 base64EncodedStringWithOptions:0];
  v13 = [(IKAppMediaItemBridge *)self jsMediaItem];
  v14 = objc_loadWeakRetained(&to);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __70__IKAppMediaItemBridge_loadKeyDataForURL_keyRequestData_withCallback___block_invoke;
  v19[3] = &unk_27979BBF0;
  v15 = v13;
  v20 = v15;
  v16 = v11;
  v21 = v16;
  v17 = v12;
  v22 = v17;
  objc_copyWeak(&v24, &to);
  v18 = v10;
  v23 = v18;
  [v14 evaluate:v19 completionBlock:0];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&to);
}

void __70__IKAppMediaItemBridge_loadKeyDataForURL_keyRequestData_withCallback___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__IKAppMediaItemBridge_loadKeyDataForURL_keyRequestData_withCallback___block_invoke_2;
  v7[3] = &unk_27979BBA0;
  objc_copyWeak(&v9, (a1 + 64));
  v8 = *(a1 + 56);
  [v4 loadKeyDataForURI:v5 requestData:v6 withCallback:v7];

  objc_destroyWeak(&v9);
}

void __70__IKAppMediaItemBridge_loadKeyDataForURL_keyRequestData_withCallback___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    v9 = MEMORY[0x277CBEA90];
    v10 = a2;
    a2 = [[v9 alloc] initWithBase64EncodedString:v10 options:0];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __70__IKAppMediaItemBridge_loadKeyDataForURL_keyRequestData_withCallback___block_invoke_3;
  v16[3] = &unk_27979BB78;
  v12 = *(a1 + 32);
  v17 = a2;
  v18 = v7;
  v19 = v8;
  v20 = v12;
  v13 = v8;
  v14 = v7;
  v15 = a2;
  [WeakRetained evaluateDelegateBlockSync:v16];
}

- (void)_resolveArtworkImageURL
{
  v3 = [[IKSrcsetParser alloc] initWithSrcsetStr:self->_artworkImageSrcset defaultStr:self->_artworkImageURL];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__IKAppMediaItemBridge__resolveArtworkImageURL__block_invoke;
  v5[3] = &unk_27979BAB8;
  v6 = v3;
  v4 = v3;
  [(IKAppMediaItemBridge *)self _evaluateDelegateBlockSync:v5];
}

void __47__IKAppMediaItemBridge__resolveArtworkImageURL__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [a3 appMediaItem];
  v4 = [*(a1 + 32) resolvedURL];
  v5 = [v4 absoluteString];
  [v6 setObject:v5 forKey:@"artworkImageURL"];
}

- (void)_evaluateDelegateBlockSync:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(IKAppMediaItemBridge *)self appContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__IKAppMediaItemBridge__evaluateDelegateBlockSync___block_invoke;
  v7[3] = &unk_279799FB0;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [v5 evaluateDelegateBlockSync:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __51__IKAppMediaItemBridge__evaluateDelegateBlockSync___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained appMediaItem];
    if (v5)
    {
      v6 = *(a1 + 32);

      if (v6)
      {
        (*(*(a1 + 32) + 16))();
      }
    }
  }
}

- (IKAppMediaItem)appMediaItem
{
  WeakRetained = objc_loadWeakRetained(&self->_appMediaItem);

  return WeakRetained;
}

- (IKAppContext)appContext
{
  WeakRetained = objc_loadWeakRetained(&self->_appContext);

  return WeakRetained;
}

- (IKJSMediaItem)jsMediaItem
{
  WeakRetained = objc_loadWeakRetained(&self->_jsMediaItem);

  return WeakRetained;
}

@end