@interface KeylessMap
+ (id)keylessMapForDirectory:(id)directory fileName:(id)name;
- (KeylessMap)initWithImpl:(id)impl;
- (id)objectsForKey:(id)key intoSet:(id)set keepWalkingOut:(BOOL *)out;
- (void)dealloc;
@end

@implementation KeylessMap

- (KeylessMap)initWithImpl:(id)impl
{
  implCopy = impl;
  v9.receiver = self;
  v9.super_class = KeylessMap;
  v6 = [(KeylessMap *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_impl, impl);
    pthread_mutex_init(&v7->_lock, 0);
  }

  return v7;
}

+ (id)keylessMapForDirectory:(id)directory fileName:(id)name
{
  v4 = [ComAppleContextkitUtilKeylessMapBase openWithOrgApacheLuceneStoreDirectory:directory withNSString:name];
  if (v4)
  {
    v5 = [[KeylessMap alloc] initWithImpl:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)objectsForKey:(id)key intoSet:(id)set keepWalkingOut:(BOOL *)out
{
  keyCopy = key;
  setCopy = set;
  if ([keyCopy length])
  {
    v10 = [[OrgApacheLuceneUtilBytesRef alloc] initWithJavaLangCharSequence:keyCopy];
    v11 = v10;
    if (v10 && v10->bytes_ && v10->length_ > 0)
    {
      pthread_mutex_lock(&self->_lock);
      newArray = [(ComAppleContextkitUtilKeylessMapBase *)self->_impl newArray];
      pthread_mutex_unlock(&self->_lock);
      v13 = newArray[2];
      v14 = (&v11->bytes_->super.size_ + 1);
      offset = v11->offset_;
      length = v11->length_;
      v17 = _PASMurmur3_x64_128();
      if (v13 >= 1)
      {
        newArray[3] = v17;
        if (v13 != 1)
        {
          v20 = HIDWORD(v17);
          newArray[4] = HIDWORD(v17);
          if (v13 >= 3)
          {
            newArray[5] = v18;
            if (v13 != 3)
            {
              newArray[6] = v19;
              if (v13 >= 5)
              {
                v21 = 0;
                v22 = 0;
                v23 = (v13 - 5) >> 1;
                v24 = vdupq_n_s64(v23);
                v25 = (v23 & 0x7FFFFFFFFFFFFFFCLL) + 4;
                v26 = 8 * HIDWORD(v17);
                v27 = newArray + 9;
                do
                {
                  v28 = vdupq_n_s64(v22);
                  v29 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(v28, xmmword_100315B40)));
                  if (vuzp1_s16(v29, 2).u8[0])
                  {
                    v30 = 715827883 * ((v21 + 4) * (v21 + 4) - 1) * (v21 + 4);
                    *(v27 - 2) = 4 * v20 + v17 + HIDWORD(v30) + (v30 >> 63);
                  }

                  if (vuzp1_s16(v29, 2).i8[2])
                  {
                    v31 = 715827883 * ((v21 + 6) * (v21 + 6) - 1) * (v21 + 6);
                    *v27 = 6 * v20 + v17 + HIDWORD(v31) + (v31 >> 63);
                  }

                  if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v24, vorrq_s8(v28, xmmword_100315B30)))).i32[1])
                  {
                    v32 = 715827883 * ((v21 + 8) * (v21 + 8) - 1) * (v21 + 8);
                    v27[2] = v26 + v17 + HIDWORD(v32) + (v32 >> 63);
                    v33 = 715827883 * ((v21 + 10) * (v21 + 10) - 1) * (v21 + 10);
                    v27[4] = 10 * v20 + v17 + HIDWORD(v33) + (v33 >> 63);
                  }

                  v22 += 4;
                  v21 += 8;
                  LODWORD(v17) = v17 + v26;
                  v27 += 8;
                }

                while (v25 != v22);
                if (v13 >= 6)
                {
                  v34 = 0;
                  v35 = 0;
                  v36 = (v13 - 6) >> 1;
                  v37 = vdupq_n_s64(v36);
                  v38 = (v36 & 0x7FFFFFFFFFFFFFFCLL) + 4;
                  v39 = newArray + 10;
                  do
                  {
                    v40 = vdupq_n_s64(v35);
                    v41 = vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_100315B40)));
                    if (vuzp1_s16(v41, 2).u8[0])
                    {
                      v42 = 715827883 * ((v34 + 5) * (v34 + 5) - 1) * (v34 + 5);
                      *(v39 - 2) = 5 * v19 + v18 + HIDWORD(v42) + (v42 >> 63);
                    }

                    if (vuzp1_s16(v41, 2).i8[2])
                    {
                      v43 = 715827883 * ((v34 + 7) * (v34 + 7) - 1) * (v34 + 7);
                      *v39 = 7 * v19 + v18 + HIDWORD(v43) + (v43 >> 63);
                    }

                    if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_100315B30)))).i32[1])
                    {
                      v44 = 715827883 * ((v34 + 9) * (v34 + 9) - 1) * (v34 + 9);
                      v39[2] = 9 * v19 + v18 + HIDWORD(v44) + (v44 >> 63);
                      v45 = 715827883 * ((v34 + 11) * (v34 + 11) - 1) * (v34 + 11);
                      v39[4] = 11 * v19 + v18 + HIDWORD(v45) + (v45 >> 63);
                    }

                    v35 += 4;
                    v34 += 8;
                    v18 += 8 * v19;
                    v39 += 8;
                  }

                  while (v38 != v35);
                }
              }
            }
          }
        }
      }

      pthread_mutex_lock(&self->_lock);
      v46 = [(ComAppleContextkitUtilKeylessMapBase *)self->_impl getWithHashesWithIntArray:newArray];
      pthread_mutex_unlock(&self->_lock);
      v47 = [v46 size];
      if (v47)
      {
        if (!setCopy)
        {
          setCopy = [[NSMutableSet alloc] initWithCapacity:v47];
        }

        v57 = newArray;
        v58 = v11;
        if (out)
        {
          *out = 0;
        }

        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v56 = v46;
        v48 = v46;
        v49 = [v48 countByEnumeratingWithState:&v59 objects:v63 count:16];
        if (v49)
        {
          v50 = v49;
          v51 = *v60;
          do
          {
            for (i = 0; i != v50; i = i + 1)
            {
              if (*v60 != v51)
              {
                objc_enumerationMutation(v48);
              }

              v53 = *(*(&v59 + 1) + 8 * i);
              if (out && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v53 integerValue] == 16)
              {
                *out = 1;
              }

              else
              {
                [setCopy addObject:v53];
              }
            }

            v50 = [v48 countByEnumeratingWithState:&v59 objects:v63 count:16];
          }

          while (v50);
        }

        newArray = v57;
        v11 = v58;
        v46 = v56;
      }

      v54 = setCopy;
    }

    else
    {
      v54 = setCopy;
    }
  }

  else
  {
    v54 = setCopy;
  }

  return v54;
}

- (void)dealloc
{
  pthread_mutex_lock(&self->_lock);
  [(ComAppleContextkitUtilKeylessMapBase *)self->_impl close];
  pthread_mutex_unlock(&self->_lock);
  pthread_mutex_destroy(&self->_lock);
  v3.receiver = self;
  v3.super_class = KeylessMap;
  [(KeylessMap *)&v3 dealloc];
}

@end