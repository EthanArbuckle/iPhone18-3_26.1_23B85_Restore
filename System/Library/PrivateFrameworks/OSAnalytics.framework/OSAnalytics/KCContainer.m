@interface KCContainer
- (KCContainer)initWithKCData:(kcdata_iter)a3;
- (void)omit;
@end

@implementation KCContainer

- (KCContainer)initWithKCData:(kcdata_iter)a3
{
  item = a3.item;
  v11.receiver = self;
  v11.super_class = KCContainer;
  v4 = [(KCContainer *)&v11 init:a3.item];
  v5 = v4;
  if (v4)
  {
    v4->_type = item[1].type;
    v4->_tag = item->flags;
    v6 = objc_opt_new();
    data = v5->_data;
    v5->_data = v6;

    if (v5->_type == 2307)
    {
      v8 = objc_opt_new();
    }

    else
    {
      v8 = 0;
    }

    truncated_threads = v5->_truncated_threads;
    v5->_truncated_threads = v8;
  }

  return v5;
}

- (void)omit
{
  data = self->_data;
  self->_data = 0;
  MEMORY[0x1EEE66BB8]();
}

@end