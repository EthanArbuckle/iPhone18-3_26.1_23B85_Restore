@interface LACACMPoolInfo
- (LACACMPoolInfo)initWithSize:(int64_t)a3 used:(int64_t)a4;
- (id)description;
@end

@implementation LACACMPoolInfo

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ size: %d, used: %d, free: %d, freeForLA: %d, reservedForLA: %d>", v5, -[LACACMPoolInfo size](self, "size"), -[LACACMPoolInfo used](self, "used"), -[LACACMPoolInfo free](self, "free"), -[LACACMPoolInfo freeForLA](self, "freeForLA"), -[LACACMPoolInfo reservedForLA](self, "reservedForLA")];;

  return v6;
}

- (LACACMPoolInfo)initWithSize:(int64_t)a3 used:(int64_t)a4
{
  v8.receiver = self;
  v8.super_class = LACACMPoolInfo;
  result = [(LACACMPoolInfo *)&v8 init];
  if (result)
  {
    result->_size = a3;
    result->_used = a4;
    v7 = (a3 - a4) & ~((a3 - a4) >> 63);
    result->_free = v7;
    result->_freeForLA = (v7 - a3 / 10) & ~((v7 - a3 / 10) >> 63);
    result->_reservedForACM = a3 / 10;
    result->_reservedForLA = (a3 - a3 / 10) & ~((a3 - a3 / 10) >> 63);
  }

  return result;
}

@end