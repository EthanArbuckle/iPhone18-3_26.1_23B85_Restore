@interface _IMLogFileCompressor
+ (id)sharedInstance;
- (_IMLogFileCompressor)init;
- (void)compressPath:(id)a3 toPath:(id)a4;
- (void)fileCopierDidFinish:(id)a3;
@end

@implementation _IMLogFileCompressor

+ (id)sharedInstance
{
  if (qword_1ED517640 != -1)
  {
    sub_1959D5FD4();
  }

  v3 = qword_1ED5175F8;

  return v3;
}

- (_IMLogFileCompressor)init
{
  v6.receiver = self;
  v6.super_class = _IMLogFileCompressor;
  v2 = [(_IMLogFileCompressor *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    archivers = v2->_archivers;
    v2->_archivers = v3;
  }

  return v2;
}

- (void)compressPath:(id)a3 toPath:(id)a4
{
  if (a3 && a4)
  {
    v6 = a4;
    v7 = a3;
    v8 = [IMFileCopier alloc];
    v10 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v9, v7);
    v12 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v11, v6);

    v17 = objc_msgSend_initWithInputURL_outputURL_identifier_operation_delegate_(v8, v13, v10, v12, v7, 2, self);
    objc_msgSend_addObject_(self->_archivers, v14, v17);
    objc_msgSend_start(v17, v15, v16);
  }
}

- (void)fileCopierDidFinish:(id)a3
{
  v4 = MEMORY[0x1E696AC08];
  v14 = a3;
  v7 = objc_msgSend_defaultManager(v4, v5, v6);
  v10 = objc_msgSend_identifier(v14, v8, v9);
  objc_msgSend_removeItemAtPath_error_(v7, v11, v10, 0);

  objc_msgSend_setDelegate_(v14, v12, 0);
  objc_msgSend_removeObject_(self->_archivers, v13, v14);
}

@end