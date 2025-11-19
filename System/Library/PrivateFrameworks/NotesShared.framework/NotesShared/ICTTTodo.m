@interface ICTTTodo
- (BOOL)isEqual:(id)a3;
- (ICTTTodo)init;
- (ICTTTodo)initWithArchive:(const void *)a3;
- (ICTTTodo)initWithData:(id)a3;
- (ICTTTodo)initWithIdentifier:(id)a3 done:(BOOL)a4;
- (ICTTTodo)todoWithDone:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)serialize;
- (unint64_t)hash;
- (void)saveToArchive:(void *)a3;
@end

@implementation ICTTTodo

- (ICTTTodo)init
{
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = [(ICTTTodo *)self initWithIdentifier:v3 done:0];

  return v4;
}

- (ICTTTodo)initWithIdentifier:(id)a3 done:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = ICTTTodo;
  v8 = [(ICTTTodo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_uuid, a3);
    v9->_done = a4;
  }

  return v9;
}

- (ICTTTodo)todoWithDone:(BOOL)a3
{
  v3 = a3;
  if ([(ICTTTodo *)self done]== a3)
  {
    v7 = self;
  }

  else
  {
    v5 = [ICTTTodo alloc];
    v6 = [(ICTTTodo *)self uuid];
    v7 = [(ICTTTodo *)v5 initWithIdentifier:v6 done:v3];
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ICTTTodo *)self uuid];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICTTTodo done](self, "done")}];
  v8 = [v3 stringWithFormat:@"<%@: %p, uuid: %@, done: %@>", v5, self, v6, v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    v4 = a3;
    objc_opt_class();
    v5 = ICDynamicCast();

    v6 = [(ICTTTodo *)self uuid];
    v7 = [v5 uuid];
    if ([v6 isEqual:v7])
    {
      v8 = [(ICTTTodo *)self done];
      v9 = v8 ^ [v5 done] ^ 1;
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(ICTTTodo *)self done];
  v4 = [(ICTTTodo *)self uuid];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [ICTTTodo allocWithZone:?];
  v6 = [(NSUUID *)self->_uuid copyWithZone:a3];
  v7 = [(ICTTTodo *)v5 initWithIdentifier:v6 done:self->_done];

  return v7;
}

- (ICTTTodo)initWithData:(id)a3
{
  v4 = a3;
  topotext::Todo::Todo(v10);
  v5 = [v4 bytes];
  v6 = ICTTBoundedCheckedCastNSUIntegerToUInt32([v4 length]);
  if (google::protobuf::MessageLite::ParseFromArray(v10, v5, v6))
  {
    self = [(ICTTTodo *)self initWithArchive:v10];
    v7 = self;
  }

  else
  {
    v8 = os_log_create("com.apple.notes", "Topotext");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ICTTTodo(ICTTTodoPersistenceAdditions) initWithData:v8];
    }

    v7 = 0;
  }

  topotext::Todo::~Todo(v10);

  return v7;
}

- (ICTTTodo)initWithArchive:(const void *)a3
{
  if ((~*(a3 + 8) & 3) != 0)
  {
    v8 = 0;
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x277CCAD78]);
    v6 = *(a3 + 5);
    if (*(v6 + 23) < 0)
    {
      v6 = *v6;
    }

    v7 = [v5 initWithUUIDBytes:v6];
    v8 = [[ICTTTodo alloc] initWithIdentifier:v7 done:*(a3 + 48)];
  }

  return v8;
}

- (void)saveToArchive:(void *)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = [(ICTTTodo *)self done];
  *(a3 + 8) |= 2u;
  *(a3 + 48) = v5;
  v8 = 0uLL;
  v6 = [(ICTTTodo *)self uuid];
  [v6 getUUIDBytes:&v8];

  *(a3 + 8) |= 1u;
  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  v7 = *(a3 + 5);
  if (v7 == google::protobuf::internal::empty_string_)
  {
    operator new();
  }

  if (*(v7 + 23) < 0)
  {
    v7[1] = 16;
    v7 = *v7;
  }

  else
  {
    *(v7 + 23) = 16;
  }

  *v7 = v8;
  *(v7 + 16) = 0;
}

- (id)serialize
{
  topotext::Todo::Todo(v7);
  [(ICTTTodo *)self saveToArchive:v7];
  v3 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:topotext::Todo::ByteSize(v7)];
  v4 = [v3 mutableBytes];
  v5 = ICTTBoundedCheckedCastNSUIntegerToUInt32([v3 length]);
  google::protobuf::MessageLite::SerializeToArray(v7, v4, v5);
  topotext::Todo::~Todo(v7);

  return v3;
}

@end