@interface NMSAudiobookReferenceObject
- (BOOL)isEqual:(id)equal;
- (NMSAudiobookReferenceObject)initWithAudiobookIdentifier:(id)identifier downloadLimit:(unint64_t)limit;
- (id)audiobookMediaItem;
- (id)description;
@end

@implementation NMSAudiobookReferenceObject

- (NMSAudiobookReferenceObject)initWithAudiobookIdentifier:(id)identifier downloadLimit:(unint64_t)limit
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = NMSAudiobookReferenceObject;
  v8 = [(NMSAudiobookReferenceObject *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_audiobookIdentifier, identifier);
    v9->_downloadLimit = limit;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    audiobookIdentifier = [(NMSAudiobookReferenceObject *)self audiobookIdentifier];
    audiobookIdentifier2 = [(NMSAudiobookReferenceObject *)v6 audiobookIdentifier];
    if ([audiobookIdentifier isEqual:audiobookIdentifier2])
    {
      downloadLimit = [(NMSAudiobookReferenceObject *)self downloadLimit];
      v10 = downloadLimit == [(NMSAudiobookReferenceObject *)v6 downloadLimit];
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
  audiobooksQuery = [MEMORY[0x277CD5E38] audiobooksQuery];
  v4 = MEMORY[0x277CD5E30];
  audiobookIdentifier = [(NMSAudiobookReferenceObject *)self audiobookIdentifier];
  v6 = [v4 predicateWithValue:audiobookIdentifier forProperty:*MEMORY[0x277CD5888]];

  [audiobooksQuery addFilterPredicate:v6];
  items = [audiobooksQuery items];
  firstObject = [items firstObject];

  return firstObject;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NMSAudiobookReferenceObject;
  v4 = [(NMSAudiobookReferenceObject *)&v8 description];
  audiobookIdentifier = [(NMSAudiobookReferenceObject *)self audiobookIdentifier];
  v6 = [v3 stringWithFormat:@"<%@ - identifier: %@ - downloadInfo: %lu>", v4, audiobookIdentifier, -[NMSAudiobookReferenceObject downloadLimit](self, "downloadLimit")];

  return v6;
}

@end