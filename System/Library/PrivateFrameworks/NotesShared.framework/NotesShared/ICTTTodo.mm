@interface ICTTTodo
- (BOOL)isEqual:(id)equal;
- (ICTTTodo)init;
- (ICTTTodo)initWithArchive:(const void *)archive;
- (ICTTTodo)initWithData:(id)data;
- (ICTTTodo)initWithIdentifier:(id)identifier done:(BOOL)done;
- (ICTTTodo)todoWithDone:(BOOL)done;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)serialize;
- (unint64_t)hash;
- (void)saveToArchive:(void *)archive;
@end

@implementation ICTTTodo

- (ICTTTodo)init
{
  uUID = [MEMORY[0x277CCAD78] UUID];
  v4 = [(ICTTTodo *)self initWithIdentifier:uUID done:0];

  return v4;
}

- (ICTTTodo)initWithIdentifier:(id)identifier done:(BOOL)done
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = ICTTTodo;
  v8 = [(ICTTTodo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_uuid, identifier);
    v9->_done = done;
  }

  return v9;
}

- (ICTTTodo)todoWithDone:(BOOL)done
{
  doneCopy = done;
  if ([(ICTTTodo *)self done]== done)
  {
    selfCopy = self;
  }

  else
  {
    v5 = [ICTTTodo alloc];
    uuid = [(ICTTTodo *)self uuid];
    selfCopy = [(ICTTTodo *)v5 initWithIdentifier:uuid done:doneCopy];
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  uuid = [(ICTTTodo *)self uuid];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICTTTodo done](self, "done")}];
  v8 = [v3 stringWithFormat:@"<%@: %p, uuid: %@, done: %@>", v5, self, uuid, v7];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    equalCopy = equal;
    objc_opt_class();
    v5 = ICDynamicCast();

    uuid = [(ICTTTodo *)self uuid];
    uuid2 = [v5 uuid];
    if ([uuid isEqual:uuid2])
    {
      done = [(ICTTTodo *)self done];
      v9 = done ^ [v5 done] ^ 1;
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
  done = [(ICTTTodo *)self done];
  uuid = [(ICTTTodo *)self uuid];
  v5 = [uuid hash];

  return v5 ^ done;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [ICTTTodo allocWithZone:?];
  v6 = [(NSUUID *)self->_uuid copyWithZone:zone];
  v7 = [(ICTTTodo *)v5 initWithIdentifier:v6 done:self->_done];

  return v7;
}

- (ICTTTodo)initWithData:(id)data
{
  dataCopy = data;
  topotext::Todo::Todo(v10);
  bytes = [dataCopy bytes];
  v6 = ICTTBoundedCheckedCastNSUIntegerToUInt32([dataCopy length]);
  if (google::protobuf::MessageLite::ParseFromArray(v10, bytes, v6))
  {
    self = [(ICTTTodo *)self initWithArchive:v10];
    selfCopy = self;
  }

  else
  {
    v8 = os_log_create("com.apple.notes", "Topotext");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ICTTTodo(ICTTTodoPersistenceAdditions) initWithData:v8];
    }

    selfCopy = 0;
  }

  topotext::Todo::~Todo(v10);

  return selfCopy;
}

- (ICTTTodo)initWithArchive:(const void *)archive
{
  if ((~*(archive + 8) & 3) != 0)
  {
    v8 = 0;
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x277CCAD78]);
    v6 = *(archive + 5);
    if (*(v6 + 23) < 0)
    {
      v6 = *v6;
    }

    v7 = [v5 initWithUUIDBytes:v6];
    v8 = [[ICTTTodo alloc] initWithIdentifier:v7 done:*(archive + 48)];
  }

  return v8;
}

- (void)saveToArchive:(void *)archive
{
  v9 = *MEMORY[0x277D85DE8];
  done = [(ICTTTodo *)self done];
  *(archive + 8) |= 2u;
  *(archive + 48) = done;
  v8 = 0uLL;
  uuid = [(ICTTTodo *)self uuid];
  [uuid getUUIDBytes:&v8];

  *(archive + 8) |= 1u;
  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  v7 = *(archive + 5);
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
  mutableBytes = [v3 mutableBytes];
  v5 = ICTTBoundedCheckedCastNSUIntegerToUInt32([v3 length]);
  google::protobuf::MessageLite::SerializeToArray(v7, mutableBytes, v5);
  topotext::Todo::~Todo(v7);

  return v3;
}

@end