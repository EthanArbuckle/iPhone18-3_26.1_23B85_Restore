@interface FMMixParameters
- (BOOL)appendVolumeKeyframe:(id)keyframe;
- (BOOL)removeRedundantVolumeKeyFrames;
- (BOOL)volumeKeyframesAreValid;
- (FMMixParameters)init;
- (float)volumeValueAtTime:(int64_t)time;
- (id)description;
- (void)insertVolumeKeyframe:(id)keyframe;
@end

@implementation FMMixParameters

- (FMMixParameters)init
{
  v16.receiver = self;
  v16.super_class = FMMixParameters;
  v2 = [(FMMixParameters *)&v16 init];
  if (v2)
  {
    v3 = objc_opt_new();
    volumeKeyFrames = v2->_volumeKeyFrames;
    v2->_volumeKeyFrames = v3;

    v5 = v2->_volumeKeyFrames;
    v6 = [FMKeyFrame alloc];
    LODWORD(v7) = 1.0;
    v11 = objc_msgSend_initWithValue_atTime_(v6, v8, 0, v9, v10, v7);
    objc_msgSend_addObject_(v5, v12, v11, v13, v14);
  }

  return v2;
}

- (id)description
{
  v35 = *MEMORY[0x277D85DE8];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = objc_msgSend_volumeKeyFrames(self, a2, v2, v3, v4);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v30, v34, 16);
  if (v6)
  {
    v11 = v6;
    v12 = *v31;
    v13 = @"Keyframes: \n";
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
        v23 = objc_msgSend_stringWithFormat_(v18, v20, @"\n\t%d %@"), v21, v22, v16, v19);
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
    v13 = @"Keyframes: \n";
  }

  v27 = *MEMORY[0x277D85DE8];

  return v13;
}

- (float)volumeValueAtTime:(int64_t)time
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = sub_24B80E9E4;
  v13[4] = sub_24B80E9F4;
  v14 = objc_msgSend_volumeKeyFrames(self, a2, time, v3, v4);
  volumeKeyFrames = self->_volumeKeyFrames;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_24B80E9FC;
  v12[3] = &unk_27900F4E8;
  v12[5] = v13;
  v12[6] = time;
  v12[4] = &v15;
  objc_msgSend_enumerateObjectsWithOptions_usingBlock_(volumeKeyFrames, v8, 2, v12, v9);
  v10 = v16[6];
  _Block_object_dispose(v13, 8);

  _Block_object_dispose(&v15, 8);
  return v10;
}

- (BOOL)appendVolumeKeyframe:(id)keyframe
{
  keyframeCopy = keyframe;
  v13 = objc_msgSend_lastVolumeKeyFrame(self, v5, v6, v7, v8);
  if (v13 && (v14 = objc_msgSend_sampleTime(keyframeCopy, v9, v10, v11, v12), v14 < objc_msgSend_sampleTime(v13, v15, v16, v17, v18)))
  {
    v19 = 0;
  }

  else
  {
    v20 = objc_msgSend_sampleTime(keyframeCopy, v9, v10, v11, v12);
    if (v20 == objc_msgSend_sampleTime(v13, v21, v22, v23, v24))
    {
      objc_msgSend_value(keyframeCopy, v25, v26, v27, v28);
      objc_msgSend_setValue_(v13, v29, v30, v31, v32);
    }

    else
    {
      objc_msgSend_addObject_(self->_volumeKeyFrames, v25, keyframeCopy, v27, v28);
    }

    v19 = 1;
  }

  return v19;
}

- (void)insertVolumeKeyframe:(id)keyframe
{
  keyframeCopy = keyframe;
  objc_initWeak(&location, self);
  volumeKeyFrames = self->_volumeKeyFrames;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_24B80ECF0;
  v9[3] = &unk_27900F510;
  v6 = keyframeCopy;
  v10 = v6;
  objc_copyWeak(&v11, &location);
  objc_msgSend_enumerateObjectsWithOptions_usingBlock_(volumeKeyFrames, v7, 2, v9, v8);
  objc_destroyWeak(&v11);

  objc_destroyWeak(&location);
}

- (BOOL)volumeKeyframesAreValid
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = -1;
  volumeKeyFrames = self->_volumeKeyFrames;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_24B80EEB4;
  v7[3] = &unk_27900F538;
  v7[4] = v8;
  v7[5] = &v9;
  objc_msgSend_enumerateObjectsUsingBlock_(volumeKeyFrames, a2, v7, v2, v3);
  v5 = *(v10 + 24);
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(&v9, 8);
  return v5;
}

- (BOOL)removeRedundantVolumeKeyFrames
{
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_24B80E9E4;
  v34 = sub_24B80E9F4;
  v35 = 0;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v29 = -1082130432;
  v6 = objc_msgSend_volumeKeyFrames(self, a2, v2, v3, v4);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_24B80F0E0;
  v27[3] = &unk_27900F560;
  v27[4] = self;
  v27[5] = v28;
  v27[6] = &v30;
  objc_msgSend_enumerateObjectsWithOptions_usingBlock_(v6, v7, 2, v27, v8);

  if (v31[5])
  {
    v13 = MEMORY[0x277CBEB18];
    v14 = objc_msgSend_volumeKeyFrames(self, v9, v10, v11, v12);
    v18 = objc_msgSend_arrayWithArray_(v13, v15, v14, v16, v17);

    objc_msgSend_removeObjectsInArray_(v18, v19, v31[5], v20, v21);
    objc_msgSend_setVolumeKeyFrames_(self, v22, v18, v23, v24);

    v25 = v31[5] != 0;
  }

  else
  {
    v25 = 0;
  }

  _Block_object_dispose(v28, 8);
  _Block_object_dispose(&v30, 8);

  return v25;
}

@end