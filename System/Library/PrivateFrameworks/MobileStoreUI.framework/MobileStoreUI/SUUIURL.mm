@interface SUUIURL
- (BOOL)isEqual:(id)a3;
- (NSDictionary)queryStringDictionary;
- (NSString)URLBagKey;
- (NSString)actionString;
- (NSString)redeemCode;
- (NSString)searchTerm;
- (SUUIURL)initWithURL:(id)a3;
- (SUUIURL)initWithURL:(id)a3 sourceApplication:(id)a4 annotation:(id)a5;
- (SUUIURL)initWithURLBagKey:(id)a3;
- (id)_appStoreSearchURLBagKey;
- (id)_decodedQueryParameter:(id)a3;
- (id)_queryDictionary;
- (id)_searchGroupForSearchKind:(id)a3;
- (id)_searchURLBagKey;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)newURLRequestWithBaseURL:(id)a3;
- (id)valueForQueryParameter:(id)a3;
- (unint64_t)hash;
@end

@implementation SUUIURL

- (SUUIURL)initWithURL:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SUUIURL;
  v5 = [(SUUIURL *)&v14 init];
  if (v5)
  {
    v6 = [v4 scheme];
    if ([v6 isEqualToString:@"https"])
    {
      v7 = [v4 copy];
      url = v5->_url;
      v5->_url = v7;
    }

    else
    {
      v9 = [v6 length];
      v10 = [v4 absoluteString];
      url = [v10 stringByReplacingCharactersInRange:0 withString:{v9, @"https"}];

      v11 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:url];
      v12 = v5->_url;
      v5->_url = v11;
    }
  }

  return v5;
}

- (SUUIURL)initWithURL:(id)a3 sourceApplication:(id)a4 annotation:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(SUUIURL *)self initWithURL:a3];
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = SUUIMobileCoreServicesFramework();
      v12 = *SUUIWeakLinkedSymbolForString("LSReferrerURLKey", v11);
      if (v12)
      {
        v13 = [v9 objectForKey:v12];
      }

      else
      {
        v13 = 0;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(SUUIURL *)v10 setReferrerURLString:v13];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [v13 absoluteString];
          [(SUUIURL *)v10 setReferrerURLString:v14];
        }
      }
    }

    [(SUUIURL *)v10 setReferrerApplicationName:v8];
  }

  return v10;
}

- (SUUIURL)initWithURLBagKey:(id)a3
{
  v4 = MEMORY[0x277CCACE0];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setScheme:@"https"];
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = [MEMORY[0x277CCAD18] queryItemWithName:@"action" value:@"bagurl"];
  [v7 addObject:v8];

  v9 = [MEMORY[0x277CCAD18] queryItemWithName:@"bagkey" value:v5];

  [v7 addObject:v9];
  [v6 setQueryItems:v7];
  v10 = [v6 URL];
  v11 = [(SUUIURL *)self initWithURL:v10];

  return v11;
}

- (NSString)actionString
{
  v3 = [(SUUIURL *)self valueForQueryParameter:@"action"];
  if (!v3)
  {
    v4 = [(NSURL *)self->_url absoluteString];
    if ([v4 rangeOfString:@"MZSearch.woa"] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v4, "rangeOfString:", @"/search?") == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v4 rangeOfString:@"freeProductCodeWizard"] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v4, "rangeOfString:", @"redeemLandingPage") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v4, "rangeOfString:", @"showDialogForRedeem") == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([v4 rangeOfString:@"buyLandingPage"] == 0x7FFFFFFFFFFFFFFFLL)
        {
          if ([v4 rangeOfString:@"buyCharityGiftWizard"] == 0x7FFFFFFFFFFFFFFFLL)
          {
            if ([v4 rangeOfString:@"MZFinance.woa"] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v4, "rangeOfString:", @"finance-app") == 0x7FFFFFFFFFFFFFFFLL)
            {
              if ([v4 rangeOfString:@"viewEula"] == 0x7FFFFFFFFFFFFFFFLL)
              {
                v3 = 0;
              }

              else
              {
                v3 = @"eula";
              }
            }

            else if ([v4 rangeOfString:@"getPass"] == 0x7FFFFFFFFFFFFFFFLL)
            {
              v3 = @"account";
            }

            else
            {
              v3 = @"addpassbookpass";
            }
          }

          else
          {
            v3 = @"donate";
          }
        }

        else
        {
          v3 = @"gift";
        }
      }

      else
      {
        v3 = @"redeem";
      }
    }

    else
    {
      v3 = @"search";
    }
  }

  return v3;
}

- (id)newURLRequestWithBaseURL:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBAB50]);
  v6 = [(SUUIURL *)self _queryDictionary];
  v7 = [v6 objectForKey:@"serialNumber"];
  if (v7)
  {
    [v5 setValue:v7 forHTTPHeaderField:@"x-apple-serial-number"];
  }

  v8 = [(NSURL *)v4 host];

  if (v8)
  {
    if (v7 || self->_url != v4)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v10 = [v6 objectForKey:@"action"];
      v11 = [v10 isEqualToString:@"search"];

      v29 = 0;
      v30 = &v29;
      v31 = 0x3032000000;
      v32 = __Block_byref_object_copy__3;
      v33 = __Block_byref_object_dispose__3;
      v34 = 0;
      v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{@"action", @"bagKey", @"x-apple-serial-number", 0}];
      v13 = v12;
      if (v11)
      {
        [v12 addObject:@"libraryid"];
      }

      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __36__SUUIURL_newURLRequestWithBaseURL___block_invoke;
      v23[3] = &unk_2798F6468;
      v28 = v11;
      v27 = &v29;
      v14 = v13;
      v24 = v14;
      v25 = self;
      v15 = v9;
      v26 = v15;
      [v6 enumerateKeysAndObjectsUsingBlock:v23];
      if (v30[5])
      {
        v16 = [(SUUIURL *)self _searchGroupForSearchKind:?];
        if ([v16 length])
        {
          [v15 setObject:v16 forKey:@"group"];
        }
      }

      v17 = [(NSURL *)v4 copyQueryStringDictionaryWithUnescapedValues:1];
      if (v17)
      {
        [v15 addEntriesFromDictionary:v17];
      }

      if (v11)
      {
        v18 = [v15 objectForKey:@"string"];
        if (v18)
        {
          [v15 setObject:v18 forKey:@"term"];
          [v15 removeObjectForKey:@"string"];
        }
      }

      v19 = [(NSURL *)v4 urlBySettingQueryStringDictionary:v15];

      _Block_object_dispose(&v29, 8);
      v4 = v19;
    }

    [v5 setURL:v4];
  }

  v20 = [(SUUIURL *)self referrerApplicationName];
  if (v20)
  {
    [v5 setValue:v20 forHTTPHeaderField:@"ref-user-agent"];
  }

  v21 = [(SUUIURL *)self referrerURLString];

  if (v21)
  {
    [v5 setValue:v21 forHTTPHeaderField:@"referer"];
  }

  return v5;
}

void __36__SUUIURL_newURLRequestWithBaseURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (*(a1 + 64) == 1 && (([v7 isEqualToString:@"kind"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"entity")))
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  }

  else if (([*(a1 + 32) containsObject:v7] & 1) == 0)
  {
    v6 = [*(a1 + 40) _decodedQueryParameter:v5];

    [*(a1 + 48) setObject:v6 forKey:v7];
    v5 = v6;
  }
}

- (NSDictionary)queryStringDictionary
{
  v2 = [(SUUIURL *)self _queryDictionary];
  v3 = [v2 copy];

  return v3;
}

- (NSString)redeemCode
{
  v2 = [(SUUIURL *)self _queryDictionary];
  v3 = [v2 objectForKey:@"code"];
  if (!v3)
  {
    v3 = [v2 objectForKey:@"certId"];
  }

  return v3;
}

- (NSString)searchTerm
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__3;
  v13 = __Block_byref_object_dispose__3;
  v14 = 0;
  v3 = [(SUUIURL *)self _queryDictionary];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __21__SUUIURL_searchTerm__block_invoke;
  v8[3] = &unk_2798F6490;
  v8[4] = &v9;
  [v3 enumerateKeysAndObjectsUsingBlock:v8];
  v4 = [(SUUIURL *)self _decodedQueryParameter:v10[5]];
  v5 = v10[5];
  v10[5] = v4;

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __21__SUUIURL_searchTerm__block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v14 = a2;
  v7 = a3;
  if ([v14 isEqualToString:@"term"])
  {
    v8 = [v7 copy];
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *a4 = 1;
  }

  else if ([v14 rangeOfString:@"term" options:13] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v14, "isEqualToString:", @"string"))
  {
    v11 = [v7 copy];
    v12 = *(*(a1 + 32) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }
}

- (NSString)URLBagKey
{
  v3 = [(SUUIURL *)self _queryDictionary];
  v4 = [v3 objectForKey:@"bagkey"];

  if (!v4)
  {
    v5 = [(SUUIURL *)self actionString];
    v4 = @"library-link";
    if (([v5 isEqualToString:@"library-link"] & 1) == 0)
    {
      if ([v5 isEqualToString:@"search"])
      {
        v4 = [(SUUIURL *)self _searchURLBagKey];
      }

      else
      {
        v4 = @"newsstand";
        if (([v5 isEqualToString:@"newsstand"] & 1) == 0)
        {
          v4 = @"passbook";
          if (([v5 isEqualToString:@"passbook"] & 1) == 0)
          {
            v4 = @"ringtones";
            if (([v5 isEqualToString:@"ringtones"] & 1) == 0)
            {
              if ([v5 isEqualToString:@"accessory-lookup"])
              {
                v4 = @"p2-accessory-room";
              }

              else
              {
                v4 = 0;
              }
            }
          }
        }
      }
    }
  }

  return v4;
}

- (id)valueForQueryParameter:(id)a3
{
  v4 = a3;
  v5 = [(SUUIURL *)self _queryDictionary];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (id)_queryDictionary
{
  v23 = *MEMORY[0x277D85DE8];
  queryDictionary = self->_queryDictionary;
  if (!queryDictionary)
  {
    v4 = [(NSURL *)self->_url query];
    v5 = [v4 componentsSeparatedByString:@"&"];

    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = self->_queryDictionary;
    self->_queryDictionary = v6;

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        v12 = 0;
        do
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v18 + 1) + 8 * v12) componentsSeparatedByString:{@"=", v18}];
          if ([v13 count] == 2)
          {
            v14 = self->_queryDictionary;
            v15 = [v13 objectAtIndex:1];
            v16 = [v13 objectAtIndex:0];
            [(NSMutableDictionary *)v14 setObject:v15 forKey:v16];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    queryDictionary = self->_queryDictionary;
  }

  return queryDictionary;
}

- (id)_decodedQueryParameter:(id)a3
{
  v3 = [a3 stringByReplacingOccurrencesOfString:@"+" withString:@" "];
  v4 = [v3 stringByRemovingPercentEncoding];

  return v4;
}

- (id)_searchGroupForSearchKind:(id)a3
{
  v3 = a3;
  if (([(__CFString *)v3 isEqualToString:@"epubBook"]& 1) != 0 || ([(__CFString *)v3 isEqualToString:@"metaEbook"]& 1) != 0 || ([(__CFString *)v3 isEqualToString:@"ibook"]& 1) != 0 || ([(__CFString *)v3 isEqualToString:@"ibookTextbook"]& 1) != 0)
  {
    v4 = @"ebook";
LABEL_6:

    goto LABEL_7;
  }

  if (([(__CFString *)v3 isEqualToString:@"book"]& 1) != 0)
  {
    v4 = @"audiobook";
    goto LABEL_6;
  }

  if (([(__CFString *)v3 isEqualToString:@"iMix"]& 1) != 0 || ([(__CFString *)v3 isEqualToString:@"itunesMix"]& 1) != 0 || ([(__CFString *)v3 isEqualToString:@"mix"]& 1) != 0 || ([(__CFString *)v3 isEqualToString:@"preorderAlbum"]& 1) != 0)
  {
    v4 = @"album";
    goto LABEL_6;
  }

  if (([(__CFString *)v3 isEqualToString:@"shortFilm"]& 1) != 0)
  {
    v4 = @"movie";
    goto LABEL_6;
  }

  if (([(__CFString *)v3 isEqualToString:@"tvEpisode"]& 1) != 0)
  {
    v4 = @"tvSeason";
    goto LABEL_6;
  }

  if (([(__CFString *)v3 isEqualToString:@"tone"]& 1) != 0)
  {
    v4 = @"ringtone";
    goto LABEL_6;
  }

  if (([(__CFString *)v3 isEqualToString:@"course"]& 1) != 0)
  {
    v4 = @"iTunesUCourse";
    goto LABEL_6;
  }

  v4 = v3;
  if ([(__CFString *)v3 isEqualToString:@"any-audio"])
  {
    v4 = 0;
    goto LABEL_6;
  }

LABEL_7:

  return v4;
}

- (id)_searchURLBagKey
{
  v3 = [(NSURL *)self->_url host];
  v4 = [v3 length];

  if (v4)
  {
    v5 = 0;
    goto LABEL_30;
  }

  v6 = [MEMORY[0x277CCA8D8] mainBundle];
  v7 = [v6 bundleIdentifier];

  if (![v7 isEqualToString:@"com.apple.AppStore"])
  {
    if ([v7 isEqualToString:@"com.apple.MobileStore"])
    {
      v5 = @"p2-music-search";
      goto LABEL_29;
    }

    if ([v7 isEqualToString:@"com.apple.iBooks"])
    {
      v5 = @"p2-book-search";
      goto LABEL_29;
    }

    if ([v7 isEqualToString:@"com.apple.podcasts"])
    {
      v5 = @"p2-podcasts-search";
      goto LABEL_29;
    }

    if ([v7 isEqualToString:@"com.apple.itunesu"])
    {
      v5 = @"p2-itunesu-search";
      goto LABEL_29;
    }

    v8 = [(SUUIURL *)self _queryDictionary];
    v9 = [v8 objectForKey:@"kind"];

    v10 = SUUIItemKindForString(v9);
    v5 = 0;
    if (v10 > 3)
    {
      if (v10 <= 0x11)
      {
        if (((1 << v10) & 0x1E9C0) != 0)
        {
LABEL_16:
          v5 = @"p2-music-search";
LABEL_28:

          goto LABEL_29;
        }

        if (((1 << v10) & 0x21020) != 0)
        {
          v5 = [(SUUIURL *)self _appStoreSearchURLBagKey];
          goto LABEL_28;
        }

        if (((1 << v10) & 0x600) != 0)
        {
          v5 = @"p2-podcasts-search";
          goto LABEL_28;
        }
      }

      if (v10 == 4)
      {
        v5 = @"p2-itunesu-search";
      }

      goto LABEL_28;
    }

    if (v10 != 1)
    {
      if (v10 == 2)
      {
        v5 = @"p2-book-search";
        goto LABEL_28;
      }

      if (v10 != 3)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_16;
  }

  v5 = [(SUUIURL *)self _appStoreSearchURLBagKey];
LABEL_29:

LABEL_30:

  return v5;
}

- (id)_appStoreSearchURLBagKey
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 stringForKey:@"AppStoreSearchKeyOverride"];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"p2-panda-search";
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSMutableDictionary *)self->_queryDictionary mutableCopyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_referrerApplicationName copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_referrerURLString copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSURL *)self->_url copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = SUUIURL;
  v4 = [(SUUIURL *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: %@ [Referrer: %@, %@]", v4, self->_url, self->_referrerApplicationName, self->_referrerURLString];

  return v5;
}

- (unint64_t)hash
{
  v2 = [(SUUIURL *)self underlyingURL];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = [(SUUIURL *)self underlyingURL];
    v8 = [v4 underlyingURL];
    v6 = [v7 isEqual:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end