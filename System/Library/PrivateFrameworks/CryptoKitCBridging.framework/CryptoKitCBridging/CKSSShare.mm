@interface CKSSShare
- (CKSSShare)initWithParams:(ccss_shamir_parameters *)params share:(ccss_shamir_share *)share;
- (CKSSShare)initWithParams:(ccss_shamir_parameters *)params x:(unsigned int)x y:(id)y;
- (id)y;
- (unsigned)x;
- (void)dealloc;
@end

@implementation CKSSShare

- (CKSSShare)initWithParams:(ccss_shamir_parameters *)params x:(unsigned int)x y:(id)y
{
  yCopy = y;
  v12.receiver = self;
  v12.super_class = CKSSShare;
  v7 = [(CKSSShare *)&v12 init];
  if (v7 && (v8 = ccss_sizeof_share(), v7->_share_size = v8, v7->_share = malloc_type_malloc(v8, 0xDDFD590CuLL), ccss_shamir_share_init(), share = v7->_share, [yCopy bytes], objc_msgSend(yCopy, "length"), ccss_shamir_share_import()))
  {
    free(v7->_share);
    printf("Failed on import with share import");
    v10 = 0;
  }

  else
  {
    v10 = v7;
  }

  return v10;
}

- (CKSSShare)initWithParams:(ccss_shamir_parameters *)params share:(ccss_shamir_share *)share
{
  v9.receiver = self;
  v9.super_class = CKSSShare;
  v5 = [(CKSSShare *)&v9 init];
  if (v5)
  {
    v6 = ccss_sizeof_share();
    v5->_share_size = v6;
    v7 = malloc_type_malloc(v6, 0xB12A3E84uLL);
    v5->_share = v7;
    memcpy(v7, share, v5->_share_size);
  }

  return v5;
}

- (unsigned)x
{
  v3 = objc_alloc(MEMORY[0x277CBEB28]);
  share = self->_share;
  v5 = [v3 initWithLength:ccss_shamir_share_sizeof_y()];
  v6 = self->_share;
  [v5 mutableBytes];
  [v5 length];
  ccss_shamir_share_export();

  return 0;
}

- (id)y
{
  v3 = objc_alloc(MEMORY[0x277CBEB28]);
  share = self->_share;
  v5 = [v3 initWithLength:ccss_shamir_share_sizeof_y()];
  v6 = self->_share;
  [v5 mutableBytes];
  [v5 length];
  if (ccss_shamir_share_export())
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (void)dealloc
{
  share_size = self->_share_size;
  share = self->_share;
  cc_clear();
  free(self->_share);
  v5.receiver = self;
  v5.super_class = CKSSShare;
  [(CKSSShare *)&v5 dealloc];
}

@end