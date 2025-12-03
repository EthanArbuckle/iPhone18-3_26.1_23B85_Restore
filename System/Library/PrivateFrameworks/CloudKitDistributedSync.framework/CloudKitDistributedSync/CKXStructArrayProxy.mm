@interface CKXStructArrayProxy
- (id)proxyAtIndex:(int64_t)index;
- (int64_t)count;
- (void)enumerate:(id)enumerate;
@end

@implementation CKXStructArrayProxy

- (void)enumerate:(id)enumerate
{
  enumerateCopy = enumerate;
  if (enumerateCopy)
  {
    v11 = objc_msgSend_count(self, v4, v5, v6, v7, v8, v9);
    v18 = v11 - 1;
    if (v11 >= 1)
    {
      v19 = 0;
      do
      {
        v31 = 0;
        v32 = &v31;
        v33 = 0x2020000000;
        v34 = 0;
        v20 = objc_msgSend_backingStore(self, v12, v13, v14, v15, v16, v17);
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = sub_243985530;
        v27[3] = &unk_278DDB4C8;
        v27[4] = self;
        v30 = v19;
        v28 = enumerateCopy;
        v29 = &v31;
        objc_msgSend_proxyScope_(v20, v21, v27, v22, v23, v24, v25);

        LOBYTE(v20) = *(v32 + 24);
        _Block_object_dispose(&v31, 8);
        if (v20)
        {
          break;
        }
      }

      while (v18 != v19++);
    }
  }
}

- (int64_t)count
{
  v8 = objc_msgSend_backingStore(self, a2, v2, v3, v4, v5, v6);
  v14 = objc_msgSend_readerForProxy_(v8, v9, self, v10, v11, v12, v13);
  objc_msgSend_listInstance(self, v15, v16, v17, v18, v19, v20);
  v26 = objc_msgSend_lengthForList_(v14, v21, &v28, v22, v23, v24, v25);

  return v26;
}

- (id)proxyAtIndex:(int64_t)index
{
  v9 = objc_msgSend_backingStore(self, a2, index, v3, v4, v5, v6);
  objc_msgSend_listInstance(self, v10, v11, v12, v13, v14, v15);
  v20 = objc_msgSend_structProxyForListInstance_atIndex_(v9, v16, &v22, index, v17, v18, v19);

  return v20;
}

@end