@interface CLSFaceIdentificationFetch
- (id)requestIdentificationOfFaces:(id)faces error:(id *)error;
@end

@implementation CLSFaceIdentificationFetch

- (id)requestIdentificationOfFaces:(id)faces error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  facesCopy = faces;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = facesCopy;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        personLocalIdentifier = [v11 personLocalIdentifier];
        v13 = personLocalIdentifier;
        if (personLocalIdentifier)
        {
          v22 = personLocalIdentifier;
          v23 = &unk_28449B7A0;
          v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
          localIdentifier = [v11 localIdentifier];
          v16 = [v5 objectForKeyedSubscript:localIdentifier];

          if (!v16)
          {
            [v5 setObject:v14 forKeyedSubscript:localIdentifier];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v8);
  }

  return v5;
}

@end