@interface SUUICountdown
- (SUUICountdown)initWithCountdownDictionary:(id)dictionary;
- (void)updateWithDictionary:(id)dictionary;
@end

@implementation SUUICountdown

- (SUUICountdown)initWithCountdownDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v43.receiver = self;
  v43.super_class = SUUICountdown;
  v5 = [(SUUICountdown *)&v43 init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_44;
  }

  [(SUUICountdown *)v5 setType:1];
  date = [MEMORY[0x277CBEAA8] date];
  [(SUUICountdown *)v6 setEndDate:date];

  date2 = [MEMORY[0x277CBEAA8] date];
  [(SUUICountdown *)v6 setStartDate:date2];

  [(SUUICountdown *)v6 setFlapped:1];
  [(SUUICountdown *)v6 setRate:1];
  v9 = [dictionaryCopy objectForKey:@"type"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v9 isEqualToString:@"number"])
    {
      v10 = 0;
    }

    else
    {
      if (![v9 isEqualToString:@"timer"])
      {
        goto LABEL_8;
      }

      v10 = 1;
    }

    [(SUUICountdown *)v6 setType:v10];
  }

LABEL_8:
  v11 = [dictionaryCopy objectForKey:@"subType"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v11 isEqualToString:@"number"])
    {
      v12 = 0;
LABEL_13:
      [(SUUICountdown *)v6 setType:v12];
      goto LABEL_14;
    }

    if ([v11 isEqualToString:@"timer"])
    {
      v12 = 1;
      goto LABEL_13;
    }
  }

LABEL_14:
  v13 = [dictionaryCopy objectForKey:@"endDate"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v14 setDateFormat:@"yyyy'-'MM'-'dd'T'HH':'mm':'ss'Z'"];
    v15 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
    [v14 setTimeZone:v15];

    v16 = [v14 dateFromString:v13];
    if (v16)
    {
      [(SUUICountdown *)v6 setEndDate:v16];
    }
  }

  v17 = [dictionaryCopy objectForKey:@"dateFormat"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = [v17 isEqualToString:@"dhms"];
    v19 = [v17 isEqualToString:@"dhm"];
    v20 = [v17 isEqualToString:@"hms"];
    if ((([v17 isEqualToString:@"hm"] | v20) | (v19 | v18)))
    {
      v21 = 3;
    }

    else
    {
      v21 = 0;
    }

    [(SUUICountdown *)v6 setDateFormat:v21];
  }

  v22 = [dictionaryCopy objectForKey:@"numberFormat"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SUUICountdown *)v6 setNumberFormat:v22];
  }

  v23 = [dictionaryCopy objectForKey:@"endValue"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    numberFormat = [(SUUICountdown *)v6 numberFormat];

    if (numberFormat)
    {
      v25 = objc_alloc_init(MEMORY[0x277CCABB8]);
      numberFormat2 = [(SUUICountdown *)v6 numberFormat];
      [v25 setPositiveFormat:numberFormat2];

      v27 = [v25 numberFromString:v23];
      v28 = v27;
      if (v27)
      {
        -[SUUICountdown setFinalValue:](v6, "setFinalValue:", [v27 longLongValue]);
      }
    }
  }

  if (![(SUUICountdown *)v6 finalValue]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    -[SUUICountdown setFinalValue:](v6, "setFinalValue:", [v23 longLongValue]);
  }

  v29 = [dictionaryCopy objectForKey:@"url"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v30 = [MEMORY[0x277CBEBC0] URLWithString:v29];
    [(SUUICountdown *)v6 setURL:v30];
  }

  [(SUUICountdown *)v6 updateWithDictionary:dictionaryCopy];
  v31 = [dictionaryCopy objectForKey:@"fontColor"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v32 = SUUIColorWithHTMLCode(v31);
    [(SUUICountdown *)v6 setFontColor:v32];
  }

  v33 = [dictionaryCopy objectForKey:@"flapTopColor"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = SUUIColorWithHTMLCode(v33);
    [(SUUICountdown *)v6 setFlapTopColor:v34];
  }

  v35 = [dictionaryCopy objectForKey:@"flapBottomColor"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v36 = SUUIColorWithHTMLCode(v35);
    [(SUUICountdown *)v6 setFlapBottomColor:v36];
  }

  v37 = [dictionaryCopy objectForKey:@"flapped"];

  if (objc_opt_respondsToSelector())
  {
    -[SUUICountdown setFlapped:](v6, "setFlapped:", [v37 BOOLValue]);
  }

  v38 = [dictionaryCopy objectForKey:@"artwork"];

  v39 = [SUUIArtworkProvidingFactory artworkProviderForStoreResponse:v38];
  [(SUUICountdown *)v6 setArtworkProvider:v39];

  v40 = [dictionaryCopy objectForKey:@"endArtwork"];

  v41 = [SUUIArtworkProvidingFactory artworkProviderForStoreResponse:v40];
  [(SUUICountdown *)v6 setEndArtworkProvider:v41];

LABEL_44:
  return v6;
}

- (void)updateWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKey:@"value"];
  v5 = objc_opt_respondsToSelector();
  if (v5)
  {
    -[SUUICountdown setInitialValue:](self, "setInitialValue:", [v4 longLongValue]);
  }

  v6 = [dictionaryCopy objectForKey:@"rate"];

  if (objc_opt_respondsToSelector())
  {
    -[SUUICountdown setRate:](self, "setRate:", [v6 integerValue]);
  }

  else
  {
    v5 = 0;
  }

  v7 = [dictionaryCopy objectForKey:@"timestamp"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v8 setDateFormat:@"yyyy'-'MM'-'dd'T'HH':'mm':'ss'Z'"];
    v9 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
    [v8 setTimeZone:v9];

    v10 = [v8 dateFromString:v7];
    if (v10)
    {
      [(SUUICountdown *)self setStartDate:v10];
    }

    else
    {
      v5 = 0;
    }
  }

  if ((v5 & 1) != 0 && !self->_isLoaded)
  {
    self->_isLoaded = 1;
  }
}

@end