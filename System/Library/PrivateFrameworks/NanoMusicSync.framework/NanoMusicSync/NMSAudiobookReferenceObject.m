@interface NMSAudiobookReferenceObject
- (BOOL)isEqual:(id)a3;
- (NMSAudiobookReferenceObject)initWithAudiobookIdentifier:(id)a3 downloadLimit:(unint64_t)a4;
- (id)audiobookMediaItem;
- (id)description;
@end

@implementation NMSAudiobookReferenceObject

- (NMSAudiobookReferenceObject)initWithAudiobookIdentifier:(id)a3 downloadLimit:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = NMSAudiobookReferenceObject;
  v8 = [(NMSAudiobookReferenceObject *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_audiobookIdentifier, a3);
    v9->_downloadLimit = a4;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v10 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(NMSAudiobookReferenceObject *)self audiobookIdentifier];
    v8 = [(NMSAudiobookReferenceObject *)v6 audiobookIdentifier];
    if ([v7 isEqual:v8])
    {
      v9 = [(NMSAudiobookReferenceObject *)self downloadLimit];
      v10 = v9 == [(NMSAudiobookReferenceObject *)v6 downloadLimit];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)audiobookMediaItem
{
  v3 = [MEMORY[0x277CD5E38] audiobooksQuery];
  v4 = MEMORY[0x277CD5E30];
  v5 = [(NMSAudiobookReferenceObject *)self audiobookIdentifier];
  v6 = [v4 predicateWithValue:v5 forProperty:*MEMORY[0x277CD5888]];

  [v3 addFilterPredicate:v6];
  v7 = [v3 items];
  v8 = [v7 firstObject];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NMSAudiobookReferenceObject;
  v4 = [(NMSAudiobookReferenceObject *)&v8 description];
  v5 = [(NMSAudiobookReferenceObject *)self audiobookIdentifier];
  v6 = [v3 stringWithFormat:@"<%@ - identifier: %@ - downloadInfo: %lu>", v4, v5, -[NMSAudiobookReferenceObject downloadLimit](self, "downloadLimit")];

  return v6;
}

@end