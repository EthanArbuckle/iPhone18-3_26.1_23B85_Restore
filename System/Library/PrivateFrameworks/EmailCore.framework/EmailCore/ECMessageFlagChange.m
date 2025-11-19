@interface ECMessageFlagChange
+ (ECMessageFlagChange)clearFlagged;
+ (ECMessageFlagChange)clearRead;
+ (ECMessageFlagChange)setDeleted;
+ (ECMessageFlagChange)setFlagged;
+ (ECMessageFlagChange)setForwarded;
+ (ECMessageFlagChange)setRead;
+ (ECMessageFlagChange)setReplied;
+ (ECMessageFlagChange)setTouchedByCleanup;
+ (id)changeFrom:(id)a3 to:(id)a4;
- (BOOL)hasChanges;
- (BOOL)isEqual:(id)a3;
- (ECMessageFlagChange)initWithBuilder:(id)a3;
- (ECMessageFlagChange)initWithCoder:(id)a3;
- (NSString)ef_publicDescription;
- (id)flagsAfterChangingFlags:(id)a3 flagsWereChanged:(BOOL *)a4;
- (unint64_t)hash;
- (void)changesFlagColorTo:(unint64_t)a3;
- (void)changesJunkLevelTo:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ECMessageFlagChange

- (NSString)ef_publicDescription
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(ECMessageFlagChange *)self readChanged])
  {
    v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"read: %ld", -[ECMessageFlagChange read](self, "read")];
    [v3 addObject:v4];
  }

  if ([(ECMessageFlagChange *)self deletedChanged])
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"deleted: %ld", -[ECMessageFlagChange deleted](self, "deleted")];
    [v3 addObject:v5];
  }

  if ([(ECMessageFlagChange *)self repliedChanged])
  {
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"replied: %ld", -[ECMessageFlagChange replied](self, "replied")];
    [v3 addObject:v6];
  }

  if ([(ECMessageFlagChange *)self flaggedChanged])
  {
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"flagged: %ld", -[ECMessageFlagChange flagged](self, "flagged")];
    [v3 addObject:v7];
  }

  if ([(ECMessageFlagChange *)self draftChanged])
  {
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"draft: %ld", -[ECMessageFlagChange draft](self, "draft")];
    [v3 addObject:v8];
  }

  if ([(ECMessageFlagChange *)self forwardedChanged])
  {
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"forwarded: %ld", -[ECMessageFlagChange forwarded](self, "forwarded")];
    [v3 addObject:v9];
  }

  if ([(ECMessageFlagChange *)self redirectedChanged])
  {
    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"redirected: %ld", -[ECMessageFlagChange redirected](self, "redirected")];
    [v3 addObject:v10];
  }

  if ([(ECMessageFlagChange *)self junkLevelSetByUserChanged])
  {
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"junkLevelSetByUser: %ld", -[ECMessageFlagChange junkLevelSetByUser](self, "junkLevelSetByUser")];
    [v3 addObject:v11];
  }

  if ([(ECMessageFlagChange *)self junkLevelChanged])
  {
    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"junkLevel: %ld", -[ECMessageFlagChange junkLevel](self, "junkLevel")];
    [v3 addObject:v12];
  }

  if ([(ECMessageFlagChange *)self flagColorChanged])
  {
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"flagColor: %ld", -[ECMessageFlagChange flagColor](self, "flagColor")];
    [v3 addObject:v13];
  }

  if ([(ECMessageFlagChange *)self touchedByCleanupChanged])
  {
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"touchedByCleanup: %ld", -[ECMessageFlagChange touchedByCleanup](self, "touchedByCleanup")];
    [v3 addObject:v14];
  }

  v15 = [v3 componentsJoinedByString:@"\n"];
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@: %p> %lu changes\n%@", objc_opt_class(), self, objc_msgSend(v3, "count"), v15];

  return v16;
}

+ (id)changeFrom:(id)a3 to:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [ECMessageFlagChange alloc];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __37__ECMessageFlagChange_changeFrom_to___block_invoke;
  v12[3] = &unk_27874BD08;
  v8 = v5;
  v13 = v8;
  v9 = v6;
  v14 = v9;
  v10 = [(ECMessageFlagChange *)v7 initWithBuilder:v12];

  return v10;
}

void __37__ECMessageFlagChange_changeFrom_to___block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [*(a1 + 32) read];
  if (v3 != [*(a1 + 40) read])
  {
    [v14 changesReadTo:{objc_msgSend(*(a1 + 40), "read")}];
  }

  v4 = [*(a1 + 32) deleted];
  if (v4 != [*(a1 + 40) deleted])
  {
    [v14 changesDeletedTo:{objc_msgSend(*(a1 + 40), "deleted")}];
  }

  v5 = [*(a1 + 32) replied];
  if (v5 != [*(a1 + 40) replied])
  {
    [v14 changesRepliedTo:{objc_msgSend(*(a1 + 40), "replied")}];
  }

  v6 = [*(a1 + 32) flagged];
  if (v6 != [*(a1 + 40) flagged])
  {
    [v14 changesFlaggedTo:{objc_msgSend(*(a1 + 40), "flagged")}];
  }

  v7 = [*(a1 + 32) draft];
  if (v7 != [*(a1 + 40) draft])
  {
    [v14 changesDraftTo:{objc_msgSend(*(a1 + 40), "draft")}];
  }

  v8 = [*(a1 + 32) forwarded];
  if (v8 != [*(a1 + 40) forwarded])
  {
    [v14 changesForwardedTo:{objc_msgSend(*(a1 + 40), "forwarded")}];
  }

  v9 = [*(a1 + 32) redirected];
  if (v9 != [*(a1 + 40) redirected])
  {
    [v14 changesRedirectedTo:{objc_msgSend(*(a1 + 40), "redirected")}];
  }

  v10 = [*(a1 + 32) junkLevelSetByUser];
  if (v10 != [*(a1 + 40) junkLevelSetByUser])
  {
    [v14 changesJunkLevelSetByUserTo:{objc_msgSend(*(a1 + 40), "junkLevelSetByUser")}];
  }

  v11 = [*(a1 + 32) junkLevel];
  if (v11 != [*(a1 + 40) junkLevel])
  {
    [v14 changesJunkLevelTo:{objc_msgSend(*(a1 + 40), "junkLevel")}];
  }

  v12 = [*(a1 + 32) flagColor];
  if (v12 != [*(a1 + 40) flagColor])
  {
    [v14 changesFlagColorTo:{objc_msgSend(*(a1 + 40), "flagColor")}];
  }

  v13 = [*(a1 + 32) touchedByCleanup];
  if (v13 != [*(a1 + 40) touchedByCleanup])
  {
    [v14 changesTouchedByCleanupTo:{objc_msgSend(*(a1 + 40), "touchedByCleanup")}];
  }
}

+ (ECMessageFlagChange)setRead
{
  v2 = objc_opt_new();
  [v2 changesReadTo:1];

  return v2;
}

+ (ECMessageFlagChange)setDeleted
{
  v2 = objc_opt_new();
  [v2 changesDeletedTo:1];

  return v2;
}

+ (ECMessageFlagChange)clearRead
{
  v2 = objc_opt_new();
  [v2 changesReadTo:0];

  return v2;
}

+ (ECMessageFlagChange)setFlagged
{
  v2 = objc_opt_new();
  [v2 changesFlaggedTo:1];

  return v2;
}

+ (ECMessageFlagChange)clearFlagged
{
  v2 = objc_opt_new();
  [v2 changesFlaggedTo:0];

  return v2;
}

+ (ECMessageFlagChange)setReplied
{
  v2 = objc_opt_new();
  [v2 changesRepliedTo:1];

  return v2;
}

+ (ECMessageFlagChange)setForwarded
{
  v2 = objc_opt_new();
  [v2 changesForwardedTo:1];

  return v2;
}

+ (ECMessageFlagChange)setTouchedByCleanup
{
  v2 = objc_opt_new();
  [v2 changesTouchedByCleanupTo:1];

  return v2;
}

- (ECMessageFlagChange)initWithBuilder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = ECMessageFlagChange;
  v5 = [(ECMessageFlagChange *)&v7 init];
  if (v5)
  {
    v4[2](v4, v5);
  }

  return v5;
}

- (BOOL)hasChanges
{
  if ([(ECMessageFlagChange *)self readChanged]|| [(ECMessageFlagChange *)self deletedChanged]|| [(ECMessageFlagChange *)self repliedChanged]|| [(ECMessageFlagChange *)self flaggedChanged]|| [(ECMessageFlagChange *)self draftChanged]|| [(ECMessageFlagChange *)self forwardedChanged]|| [(ECMessageFlagChange *)self redirectedChanged]|| [(ECMessageFlagChange *)self junkLevelSetByUserChanged]|| [(ECMessageFlagChange *)self junkLevelChanged]|| [(ECMessageFlagChange *)self flagColorChanged])
  {
    return 1;
  }

  return [(ECMessageFlagChange *)self touchedByCleanup];
}

- (id)flagsAfterChangingFlags:(id)a3 flagsWereChanged:(BOOL *)a4
{
  v5 = a3;
  v24 = [v5 read];
  if (![(ECMessageFlagChange *)self readChanged]|| v24 == [(ECMessageFlagChange *)self read])
  {
    v6 = 0;
  }

  else
  {
    LOBYTE(v24) = [(ECMessageFlagChange *)self read];
    v6 = 1;
  }

  v23 = [v5 deleted];
  if ([(ECMessageFlagChange *)self deletedChanged]&& v23 != [(ECMessageFlagChange *)self deleted])
  {
    LOBYTE(v23) = [(ECMessageFlagChange *)self deleted];
    v6 = 1;
  }

  v22 = [v5 replied];
  if ([(ECMessageFlagChange *)self repliedChanged]&& v22 != [(ECMessageFlagChange *)self replied])
  {
    LOBYTE(v22) = [(ECMessageFlagChange *)self replied];
    v6 = 1;
  }

  v21 = [v5 flagged];
  if ([(ECMessageFlagChange *)self flaggedChanged]&& v21 != [(ECMessageFlagChange *)self flagged])
  {
    LOBYTE(v21) = [(ECMessageFlagChange *)self flagged];
    v6 = 1;
  }

  v7 = [v5 draft];
  if ([(ECMessageFlagChange *)self draftChanged]&& v7 != [(ECMessageFlagChange *)self draft])
  {
    LOBYTE(v7) = [(ECMessageFlagChange *)self draft];
    v6 = 1;
  }

  v8 = [v5 forwarded];
  if ([(ECMessageFlagChange *)self forwardedChanged]&& v8 != [(ECMessageFlagChange *)self forwarded])
  {
    LOBYTE(v8) = [(ECMessageFlagChange *)self forwarded];
    v6 = 1;
  }

  v9 = [v5 redirected];
  if ([(ECMessageFlagChange *)self redirectedChanged]&& v9 != [(ECMessageFlagChange *)self redirected])
  {
    LOBYTE(v9) = [(ECMessageFlagChange *)self redirected];
    v6 = 1;
  }

  v10 = [v5 junkLevelSetByUser];
  if ([(ECMessageFlagChange *)self junkLevelSetByUserChanged]&& v10 != [(ECMessageFlagChange *)self junkLevelSetByUser])
  {
    LOBYTE(v10) = [(ECMessageFlagChange *)self junkLevelSetByUser];
    v6 = 1;
  }

  v11 = [v5 junkLevel];
  if ([(ECMessageFlagChange *)self junkLevelChanged]&& v11 != [(ECMessageFlagChange *)self junkLevel])
  {
    v11 = [(ECMessageFlagChange *)self junkLevel];
    v6 = 1;
  }

  v12 = [v5 flagColor];
  if ([(ECMessageFlagChange *)self flagColorChanged]&& v12 != [(ECMessageFlagChange *)self flagColor])
  {
    v12 = [(ECMessageFlagChange *)self flagColor];
    v6 = 1;
  }

  v13 = [v5 touchedByCleanup];
  if ([(ECMessageFlagChange *)self touchedByCleanupChanged]&& v13 != [(ECMessageFlagChange *)self touchedByCleanup])
  {
    LOBYTE(v13) = [(ECMessageFlagChange *)self touchedByCleanup];
    v14 = v5;
LABEL_36:
    v16 = [ECMessageFlags alloc];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __64__ECMessageFlagChange_flagsAfterChangingFlags_flagsWereChanged___block_invoke;
    v25[3] = &__block_descriptor_57_e33_v16__0___ECMessageFlagsBuilder__8l;
    v26 = v24;
    v27 = v23;
    v28 = v22;
    v29 = v21;
    v30 = v7;
    v31 = v8;
    v32 = v9;
    v33 = v10;
    v25[4] = v11;
    v25[5] = v12;
    v34 = v13;
    v17 = [(ECMessageFlags *)v16 initWithBuilder:v25];

    v18 = 1;
    goto LABEL_38;
  }

  v15 = v5;
  if (v6)
  {
    goto LABEL_36;
  }

  v17 = v15;
  v18 = 0;
LABEL_38:
  if (a4)
  {
    *a4 = v18;
  }

  return v17;
}

void __64__ECMessageFlagChange_flagsAfterChangingFlags_flagsWereChanged___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setRead:*(a1 + 48)];
  [v3 setDeleted:*(a1 + 49)];
  [v3 setReplied:*(a1 + 50)];
  [v3 setFlagged:*(a1 + 51)];
  [v3 setDraft:*(a1 + 52)];
  [v3 setForwarded:*(a1 + 53)];
  [v3 setRedirected:*(a1 + 54)];
  [v3 setJunkLevel:*(a1 + 32)];
  [v3 setJunkLevelSetByUser:*(a1 + 55)];
  [v3 setFlagColor:*(a1 + 40)];
  [v3 setTouchedByCleanup:*(a1 + 56)];
}

- (void)changesJunkLevelTo:(unint64_t)a3
{
  [(ECMessageFlagChange *)self setJunkLevel:a3];

  [(ECMessageFlagChange *)self setJunkLevelChanged:1];
}

- (void)changesFlagColorTo:(unint64_t)a3
{
  [(ECMessageFlagChange *)self setFlagColor:a3];

  [(ECMessageFlagChange *)self setFlagColorChanged:1];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ECMessageFlagChange *)self hash];
    v6 = v5 == [v4 hash];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v2.i32[0] = *&self->_deleted;
  v3 = vshl_u16(*&vmovl_u8(v2), 0x4000300020001);
  v4 = (v3.i8[0] | v3.i8[4] | ((v3.i32[0] | v3.i32[1]) >> 16) | (32 * self->_forwarded) | (self->_redirected << 6) | (self->_junkLevelSetByUser << 7) | self->_read);
  v5 = vmovl_u8(*&self->_touchedByCleanup);
  v6 = vmovl_u16(*v5.i8);
  v7.i64[0] = v6.u32[2];
  v7.i64[1] = v6.u32[3];
  v8 = v7;
  v9 = vmovl_high_u16(v5);
  v7.i64[0] = v9.u32[2];
  v7.i64[1] = v9.u32[3];
  v10 = v7;
  v7.i64[0] = v6.u32[0];
  v7.i64[1] = v6.u32[1];
  v11 = v7;
  v7.i64[0] = v9.u32[0];
  v7.i64[1] = v9.u32[1];
  v12 = vshlq_u64(v7, xmmword_22D0EE260);
  v13 = vmovl_u16(*&vmovl_u8(*&self->_junkLevelSetByUserChanged));
  v7.i64[0] = v13.u32[0];
  v7.i64[1] = v13.u32[1];
  v14.i64[0] = 255;
  v14.i64[1] = 255;
  v15 = vandq_s8(v7, v14);
  v7.i64[0] = v13.u32[2];
  v7.i64[1] = v13.u32[3];
  v16 = vorrq_s8(vorrq_s8(vorrq_s8(vshlq_u64(v11, xmmword_22D0EE270), v12), vorrq_s8(vshlq_u64(v8, xmmword_22D0EE290), vshlq_u64(v10, xmmword_22D0EE280))), vorrq_s8(vshlq_u64(v15, xmmword_22D0EE2B0), vshlq_u64(vandq_s8(v7, v14), xmmword_22D0EE2A0)));
  return *&vorr_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL)) | ((self->_junkLevel & 3) << 8) | v4 & 0xFFFFFFFFFFFFE3FFLL | ((self->_flagColor & 7) << 10);
}

- (ECMessageFlagChange)initWithCoder:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__ECMessageFlagChange_initWithCoder___block_invoke;
  v8[3] = &unk_27874BD50;
  v9 = v4;
  v5 = v4;
  v6 = [(ECMessageFlagChange *)self initWithBuilder:v8];

  return v6;
}

void __37__ECMessageFlagChange_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) decodeIntegerForKey:@"EFPropertyKey_hash"];
  v4 = v3;
  if ((v3 & 0x4000) != 0)
  {
    [v5 changesReadTo:v3 & 1];
  }

  if ((v4 & 0x8000) != 0)
  {
    [v5 changesDeletedTo:(v4 >> 1) & 1];
  }

  if ((v4 & 0x10000) != 0)
  {
    [v5 changesRepliedTo:(v4 >> 2) & 1];
  }

  if ((v4 & 0x20000) != 0)
  {
    [v5 changesFlaggedTo:(v4 >> 3) & 1];
  }

  if ((v4 & 0x40000) != 0)
  {
    [v5 changesDraftTo:(v4 >> 4) & 1];
  }

  if ((v4 & 0x80000) != 0)
  {
    [v5 changesForwardedTo:(v4 >> 5) & 1];
  }

  if ((v4 & 0x100000) != 0)
  {
    [v5 changesRedirectedTo:(v4 >> 6) & 1];
  }

  if ((v4 & 0x200000) != 0)
  {
    [v5 changesJunkLevelSetByUserTo:(v4 >> 7) & 1];
  }

  if ((v4 & 0x400000) != 0)
  {
    [v5 changesJunkLevelTo:(v4 >> 8) & 3];
  }

  if ((v4 & 0x800000) != 0)
  {
    [v5 changesFlagColorTo:(v4 >> 10) & 7];
  }

  if ((v4 & 0x1000000) != 0)
  {
    [v5 changesTouchedByCleanupTo:(v4 >> 13) & 1];
  }

  [v5 setReason:(v4 >> 25) & 0xF];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[ECMessageFlagChange hash](self forKey:{"hash") & 0xFFFFFFFFE1FFFFFFLL | ((self->_reason & 0xF) << 25), @"EFPropertyKey_hash"}];
}

@end