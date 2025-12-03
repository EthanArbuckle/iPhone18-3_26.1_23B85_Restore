@interface BLTBBBulletinKey
+ (id)bulletinKeyWithSectionID:(id)d publisherMatchID:(id)iD;
- (BLTBBBulletinKey)initWithSectionID:(id)d publisherMatchID:(id)iD;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (id)keyString;
@end

@implementation BLTBBBulletinKey

+ (id)bulletinKeyWithSectionID:(id)d publisherMatchID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  v8 = [[self alloc] initWithSectionID:dCopy publisherMatchID:iDCopy];

  return v8;
}

- (BLTBBBulletinKey)initWithSectionID:(id)d publisherMatchID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  if (initWithSectionID_publisherMatchID__onceToken != -1)
  {
    [BLTBBBulletinKey initWithSectionID:publisherMatchID:];
  }

  v29.receiver = self;
  v29.super_class = BLTBBBulletinKey;
  v8 = [(BLTBBBulletinKey *)&v29 init];
  if (v8)
  {
    v9 = [dCopy copy];
    sectionID = v8->_sectionID;
    v8->_sectionID = v9;

    v11 = [iDCopy copy];
    publisherMatchID = v8->_publisherMatchID;
    v8->_publisherMatchID = v11;
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__3;
  v27 = __Block_byref_object_dispose__3;
  v28 = 0;
  v13 = initWithSectionID_publisherMatchID__cacheQueue;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __55__BLTBBBulletinKey_initWithSectionID_publisherMatchID___block_invoke_2;
  v20[3] = &unk_278D31650;
  v22 = &v23;
  v14 = v8;
  v21 = v14;
  dispatch_sync(v13, v20);
  v15 = v24[5];
  if (v15)
  {
    v16 = v15;

    v14 = v16;
  }

  v17 = v21;
  v18 = v14;

  _Block_object_dispose(&v23, 8);
  return v18;
}

uint64_t __55__BLTBBBulletinKey_initWithSectionID_publisherMatchID___block_invoke()
{
  v0 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
  v1 = initWithSectionID_publisherMatchID__cache;
  initWithSectionID_publisherMatchID__cache = v0;

  initWithSectionID_publisherMatchID__cacheQueue = dispatch_queue_create("com.apple.Carousel.bulletinKeyCache", 0);

  return MEMORY[0x2821F96F8]();
}

void __55__BLTBBBulletinKey_initWithSectionID_publisherMatchID___block_invoke_2(uint64_t a1)
{
  v2 = [initWithSectionID_publisherMatchID__cache member:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = initWithSectionID_publisherMatchID__cache;
    v6 = *(a1 + 32);

    [v5 addObject:v6];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = equalCopy;
    sectionID = [(BLTBBBulletinKey *)self sectionID];
    sectionID2 = [v6 sectionID];
    if (sectionID != sectionID2)
    {
      sectionID3 = [(BLTBBBulletinKey *)self sectionID];
      sectionID4 = [v6 sectionID];
      if (![sectionID3 isEqualToString:sectionID4])
      {
        v10 = 0;
LABEL_11:

LABEL_12:
        goto LABEL_13;
      }

      v16 = sectionID3;
    }

    publisherMatchID = [(BLTBBBulletinKey *)self publisherMatchID];
    publisherMatchID2 = [v6 publisherMatchID];
    if (publisherMatchID == publisherMatchID2)
    {
      v10 = 1;
    }

    else
    {
      publisherMatchID3 = [(BLTBBBulletinKey *)self publisherMatchID];
      publisherMatchID4 = [v6 publisherMatchID];
      v10 = [publisherMatchID3 isEqualToString:publisherMatchID4];
    }

    sectionID3 = v16;
    if (sectionID == sectionID2)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v10 = 0;
LABEL_13:

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  sectionID = [(BLTBBBulletinKey *)self sectionID];
  publisherMatchID = [(BLTBBBulletinKey *)self publisherMatchID];
  v8 = [v3 stringWithFormat:@"<%@ %p sectionID=%@ publisherMatchID=%@>", v5, self, sectionID, publisherMatchID];;

  return v8;
}

- (id)keyString
{
  v3 = MEMORY[0x277CCACA8];
  sectionID = [(BLTBBBulletinKey *)self sectionID];
  publisherMatchID = [(BLTBBBulletinKey *)self publisherMatchID];
  v6 = [v3 stringWithFormat:@"%@--%@", sectionID, publisherMatchID];
  blt_sanitizeForURL = [v6 blt_sanitizeForURL];

  return blt_sanitizeForURL;
}

@end