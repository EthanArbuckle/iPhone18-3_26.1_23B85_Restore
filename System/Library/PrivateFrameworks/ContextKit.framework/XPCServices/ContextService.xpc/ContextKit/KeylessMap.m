@interface KeylessMap
+ (id)keylessMapForDirectory:(id)a3 fileName:(id)a4;
- (KeylessMap)initWithImpl:(id)a3;
- (id)objectsForKey:(id)a3 intoSet:(id)a4 keepWalkingOut:(BOOL *)a5;
- (void)dealloc;
@end

@implementation KeylessMap

- (KeylessMap)initWithImpl:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = KeylessMap;
  v6 = [(KeylessMap *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_impl, a3);
    pthread_mutex_init(&v7->_lock, 0);
  }

  return v7;
}

+ (id)keylessMapForDirectory:(id)a3 fileName:(id)a4
{
  v4 = [ComAppleContextkitUtilKeylessMapBase openWithOrgApacheLuceneStoreDirectory:a3 withNSString:a4];
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

- (id)objectsForKey:(id)a3 intoSet:(id)a4 keepWalkingOut:(BOOL *)a5
{
  v8 = a3;
  v9 = a4;
  if ([v8 length])
  {
    v10 = [[OrgApacheLuceneUtilBytesRef alloc] initWithJavaLangCharSequence:v8];
    v11 = v10;
    if (v10 && v10->bytes_ && v10->length_ > 0)
    {
      pthread_mutex_lock(&self->_lock);
      v12 = [(ComAppleContextkitUtilKeylessMapBase *)self->_impl newArray];
      pthread_mutex_unlock(&self->_lock);
      v13 = v12[2];
      v14 = (&v11->bytes_->super.size_ + 1);
      offset = v11->offset_;
      length = v11->length_;
      v17 = _PASMurmur3_x64_128();
      if (v13 >= 1)
      {
        v12[3] = v17;
        if (v13 != 1)
        {
          v20 = HIDWORD(v17);
          v12[4] = HIDWORD(v17);
          if (v13 >= 3)
          {
            v12[5] = v18;
            if (v13 != 3)
            {
              v12[6] = v19;
              if (v13 >= 5)
              {
                v21 = 0;
                v22 = 0;
                v23 = (v13 - 5) >> 1;
                v24 = vdupq_n_s64(v23);
                v25 = (v23 & 0x7FFFFFFFFFFFFFFCLL) + 4;
                v26 = 8 * HIDWORD(v17);
                v27 = v12 + 9;
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
                  v39 = v12 + 10;
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
      v46 = [(ComAppleContextkitUtilKeylessMapBase *)self->_impl getWithHashesWithIntArray:v12];
      pthread_mutex_unlock(&self->_lock);
      v47 = [v46 size];
      if (v47)
      {
        if (!v9)
        {
          v9 = [[NSMutableSet alloc] initWithCapacity:v47];
        }

        v57 = v12;
        v58 = v11;
        if (a5)
        {
          *a5 = 0;
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
              if (a5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v53 integerValue] == 16)
              {
                *a5 = 1;
              }

              else
              {
                [v9 addObject:v53];
              }
            }

            v50 = [v48 countByEnumeratingWithState:&v59 objects:v63 count:16];
          }

          while (v50);
        }

        v12 = v57;
        v11 = v58;
        v46 = v56;
      }

      v54 = v9;
    }

    else
    {
      v54 = v9;
    }
  }

  else
  {
    v54 = v9;
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