@interface SUUIFacebookLikeStatus
- (SUUIFacebookLikeStatus)initWithURL:(id)l likeStatusDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SUUIFacebookLikeStatus

- (SUUIFacebookLikeStatus)initWithURL:(id)l likeStatusDictionary:(id)dictionary
{
  v32 = *MEMORY[0x277D85DE8];
  lCopy = l;
  dictionaryCopy = dictionary;
  v30.receiver = self;
  v30.super_class = SUUIFacebookLikeStatus;
  v8 = [(SUUIFacebookLikeStatus *)&v30 init];
  if (v8)
  {
    v9 = SUUISocialFramework();
    v10 = [dictionaryCopy objectForKey:{*SUUIWeakLinkedSymbolForString("SLFacebookLikeInfoMeKey", v9)}];
    if (objc_opt_respondsToSelector())
    {
      v8->_userLiked = [v10 BOOLValue];
    }

    v11 = SUUISocialFramework();
    v12 = [dictionaryCopy objectForKey:{*SUUIWeakLinkedSymbolForString("SLFacebookLikeInfoFriendsKey", v11)}];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = lCopy;
      v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v14 = v12;
      v15 = [v14 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v27;
        do
        {
          v18 = 0;
          do
          {
            if (*v27 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v26 + 1) + 8 * v18);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v13 addObject:v19];
            }

            ++v18;
          }

          while (v16 != v18);
          v16 = [v14 countByEnumeratingWithState:&v26 objects:v31 count:16];
        }

        while (v16);
      }

      v20 = [v13 copy];
      friends = v8->_friends;
      v8->_friends = v20;

      lCopy = v25;
    }

    v22 = [lCopy copy];
    url = v8->_url;
    v8->_url = v22;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSArray *)self->_friends copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSURL *)self->_url copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  *(v5 + 24) = self->_userLiked;
  return v5;
}

@end