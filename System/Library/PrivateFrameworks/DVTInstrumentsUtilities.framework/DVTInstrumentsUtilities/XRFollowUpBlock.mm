@interface XRFollowUpBlock
- (XRFollowUpBlock)initWithBlock:(id)a3 operation:(id)a4;
- (void)go;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation XRFollowUpBlock

- (XRFollowUpBlock)initWithBlock:(id)a3 operation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = XRFollowUpBlock;
  v8 = [(XRFollowUpBlock *)&v12 init];
  if (v8)
  {
    v9 = MEMORY[0x24C1C5B20](v6);
    block = v8->_block;
    v8->_block = v9;

    objc_storeStrong(&v8->_op, a4);
  }

  return v8;
}

- (void)go
{
  objc_storeStrong(&self->_myselfOrNil, self);
  v8 = self->_op;
  objc_msgSend_addObserver_forKeyPath_options_context_(v8, v3, self, @"isFinished", 1, qword_27EE85EC0);
  if (objc_msgSend_isFinished(v8, v4, v5, v6, v7))
  {
    sub_24808D308(self);
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v8 = a4;
  if (qword_27EE85EC0 == a6)
  {
    v14 = v8;
    v9 = v8;
    if (objc_msgSend_isFinished(v9, v10, v11, v12, v13))
    {
      sub_24808D308(self);
    }

    v8 = v14;
  }
}

@end