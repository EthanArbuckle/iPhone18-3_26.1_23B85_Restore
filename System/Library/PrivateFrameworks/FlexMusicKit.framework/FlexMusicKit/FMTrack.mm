@interface FMTrack
- (FMTrack)initWithClips:(id)clips mixParameters:(id)parameters;
- (id)description;
@end

@implementation FMTrack

- (FMTrack)initWithClips:(id)clips mixParameters:(id)parameters
{
  clipsCopy = clips;
  parametersCopy = parameters;
  v12.receiver = self;
  v12.super_class = FMTrack;
  v9 = [(FMTrack *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clips, clips);
    objc_storeStrong(&v10->_mixParameters, parameters);
  }

  return v10;
}

- (id)description
{
  v35 = *MEMORY[0x277D85DE8];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = objc_msgSend_clips(self, a2, v2, v3, v4);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v30, v34, 16);
  if (v6)
  {
    v11 = v6;
    v12 = *v31;
    v13 = @"\nFMClips:";
    v14 = 1;
    do
    {
      v15 = 0;
      v16 = v14;
      v17 = v13;
      do
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v18 = MEMORY[0x277CCACA8];
        v14 = (v16 + 1);
        v19 = objc_msgSend_description(*(*(&v30 + 1) + 8 * v15), v7, v8, v9, v10);
        v23 = objc_msgSend_stringWithFormat_(v18, v20, @"\n%d %@"), v21, v22, v16, v19);
        v13 = objc_msgSend_stringByAppendingString_(v17, v24, v23, v25, v26);

        ++v15;
        v16 = v14;
        v17 = v13;
      }

      while (v11 != v15);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v30, v34, 16);
    }

    while (v11);
  }

  else
  {
    v13 = @"\nFMClips:";
  }

  v27 = *MEMORY[0x277D85DE8];

  return v13;
}

@end