@interface _SYInputDataItem
- (_SYInputDataItem)initWithLength:(unint64_t)a3 callback:(id)a4;
- (unint64_t)lengthRemaining;
@end

@implementation _SYInputDataItem

- (_SYInputDataItem)initWithLength:(unint64_t)a3 callback:(id)a4
{
  v6 = a4;
  v14.receiver = self;
  v14.super_class = _SYInputDataItem;
  v7 = [(_SYInputDataItem *)&v14 init];
  v8 = v7;
  if (v7)
  {
    v7->_lock._os_unfair_lock_opaque = 0;
    os_unfair_lock_lock(&v7->_lock);
    v9 = objc_opt_new();
    data = v8->_data;
    v8->_data = v9;

    v8->_length = a3;
    v11 = MEMORY[0x1E12E11B0](v6);
    callback = v8->_callback;
    v8->_callback = v11;

    os_unfair_lock_unlock(&v8->_lock);
  }

  return v8;
}

- (unint64_t)lengthRemaining
{
  os_unfair_lock_lock(&self->_lock);
  length = self->_length;
  v4 = length - [(NSMutableData *)self->_data length];
  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

@end