@interface KVItemMapper
- (KVItemMapper)init;
- (KVItemMapper)initWithObjectClass:(Class)a3 error:(id *)a4;
@end

@implementation KVItemMapper

- (KVItemMapper)initWithObjectClass:(Class)a3 error:(id *)a4
{
  v17.receiver = self;
  v17.super_class = KVItemMapper;
  v6 = [(KVItemMapper *)&v17 init];
  if (!v6)
  {
    goto LABEL_5;
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v7 = qword_28106B388;
  v22 = qword_28106B388;
  if (!qword_28106B388)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_2559C33AC;
    v18[3] = &unk_279804178;
    v18[4] = &v19;
    sub_2559C33AC(v18);
    v7 = v20[3];
  }

  v8 = v7;
  _Block_object_dispose(&v19, 8);
  v9 = [v7 alloc];
  v13 = objc_msgSend_initWithObjectClass_error_(v9, v10, a3, a4, v11, v12);
  mapper = v6->_mapper;
  v6->_mapper = v13;

  if (!v6->_mapper)
  {
    v15 = 0;
  }

  else
  {
LABEL_5:
    v15 = v6;
  }

  return v15;
}

- (KVItemMapper)init
{
  v3 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x277CBEAD8], a2, *MEMORY[0x277CBE658], @"init unsupported", MEMORY[0x277CBEC10], v2);
  objc_exception_throw(v3);
}

@end