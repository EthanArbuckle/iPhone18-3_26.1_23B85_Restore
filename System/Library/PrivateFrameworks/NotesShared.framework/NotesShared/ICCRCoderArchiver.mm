@interface ICCRCoderArchiver
+ (id)encodedDataWithDocument:(id)document;
- (id).cxx_construct;
- (id)encodeDocument:(id)document;
- (int)indexForKey:(id)key;
- (unint64_t)encodeUUIDIndexFromUUID:(id)d;
- (void)currentCustomObjectForEncoding;
- (void)encodeData:(id)data forKey:(id)key;
- (void)encodeDouble:(double)double forKey:(id)key;
- (void)encodeInt32:(int)int32 forKey:(id)key;
- (void)encodeInt64:(int64_t)int64 forKey:(id)key;
- (void)encodeObject:(id)object forKey:(id)key;
- (void)encodeObject:(id)object forObjectID:(void *)d;
- (void)encodeString:(id)string forKey:(id)key;
- (void)encodeUInt32:(unsigned int)int32 forKey:(id)key;
- (void)encodeUInt64:(unint64_t)int64 forKey:(id)key;
- (void)encodeUUID:(id)d forKey:(id)key;
- (void)mutableObjectIDForKey:(id)key;
- (void)setTypeIndexForCurrentCustomObjectIfNecessary:(id)necessary;
@end

@implementation ICCRCoderArchiver

+ (id)encodedDataWithDocument:(id)document
{
  documentCopy = document;
  v5 = objc_alloc_init(self);
  v6 = [v5 encodeDocument:documentCopy];

  return v6;
}

- (id)encodeDocument:(id)document
{
  v5 = *MEMORY[0x277D85DE8];
  documentCopy = document;
  operator new();
}

- (void)setTypeIndexForCurrentCustomObjectIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  v4 = [(ICCRCoder *)self typeIndexForClass:objc_opt_class()];
  v5 = v4;
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    currentCustomObjectForEncoding = [(ICCRCoderArchiver *)self currentCustomObjectForEncoding];
    currentCustomObjectForEncoding[8] |= 1u;
    currentCustomObjectForEncoding[16] = v5;
  }
}

- (void)encodeObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if (objectCopy)
  {
    [(ICCRCoderArchiver *)self encodeObject:objectCopy forObjectID:[(ICCRCoderArchiver *)self mutableObjectIDForKey:keyCopy]];
  }
}

- (void)encodeObject:(id)object forObjectID:(void *)d
{
  objectCopy = object;
  encodedObjects = [(ICCRCoderArchiver *)self encodedObjects];
  v8 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:objectCopy];
  v9 = [encodedObjects indexOfObject:v8];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = *([(ICCRCoderArchiver *)self currentDocument]+ 64);
    if (*(d + 12) != 6)
    {
      CRDT::ObjectID::clear_contents(d);
      *(d + 12) = 6;
    }

    *(d + 10) = v10;
    currentDocument = [(ICCRCoderArchiver *)self currentDocument];
    v12 = currentDocument[17];
    v13 = currentDocument[16];
    if (v13 >= v12)
    {
      if (v12 == currentDocument[18])
      {
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((currentDocument + 14), v12 + 1);
      }

      google::protobuf::internal::GenericTypeHandler<CRDT::Document_DocObject>::New();
    }

    v14 = *(currentDocument + 7);
    currentDocument[16] = v13 + 1;
    v17 = *(v14 + 8 * v13);
    std::vector<TopoSubstring *>::push_back[abi:ne200100](&self->currentDocObjectEncodingStack, &v17);
    encodedObjects2 = [(ICCRCoderArchiver *)self encodedObjects];
    v16 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:objectCopy];
    [encodedObjects2 addObject:v16];

    [(ICCRCoderArchiver *)self setTypeIndexForCurrentCustomObjectIfNecessary:objectCopy];
    [objectCopy encodeWithICCRCoder:self];
    --self->currentDocObjectEncodingStack.__end_;
  }

  else
  {
    if (*(d + 12) != 6)
    {
      CRDT::ObjectID::clear_contents(d);
      *(d + 12) = 6;
    }

    *(d + 10) = v9;
  }
}

- (void)encodeData:(id)data forKey:(id)key
{
  dataCopy = data;
  keyCopy = key;
  v8 = [(ICCRCoderArchiver *)self mutableObjectIDForKey:keyCopy];
  bytes = [dataCopy bytes];
  v10 = [dataCopy length];
  v11 = v10;
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v10 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v10;
  if (v10)
  {
    memmove(&__dst, bytes, v10);
  }

  __dst.__r_.__value_.__s.__data_[v11] = 0;
  if (*(v8 + 12) != 5)
  {
    CRDT::ObjectID::clear_contents(v8);
    *(v8 + 12) = 5;
    operator new();
  }

  std::string::operator=(*(v8 + 5), &__dst);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

- (void)encodeString:(id)string forKey:(id)key
{
  stringCopy = string;
  v7 = [(ICCRCoderArchiver *)self mutableObjectIDForKey:key];
  std::string::basic_string[abi:ne200100]<0>(&__str, [stringCopy UTF8String]);
  if (*(v7 + 12) != 4)
  {
    CRDT::ObjectID::clear_contents(v7);
    *(v7 + 12) = 4;
    operator new();
  }

  std::string::operator=(*(v7 + 5), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

- (void)encodeUUID:(id)d forKey:(id)key
{
  keyCopy = key;
  uUIDString = [d UUIDString];
  [(ICCRCoderArchiver *)self encodeString:uUIDString forKey:keyCopy];
}

- (void)encodeDouble:(double)double forKey:(id)key
{
  keyCopy = key;
  v6 = [(ICCRCoderArchiver *)self mutableObjectIDForKey:?];
  v7 = v6;
  if (v6[12] != 3)
  {
    CRDT::ObjectID::clear_contents(v6);
    *(v7 + 12) = 3;
  }

  v7[5] = double;
}

- (void)encodeInt32:(int)int32 forKey:(id)key
{
  keyCopy = key;
  v6 = [(ICCRCoderArchiver *)self mutableObjectIDForKey:?];
  v7 = v6;
  if (v6[12] != 1)
  {
    CRDT::ObjectID::clear_contents(v6);
    v7[12] = 1;
  }

  *(v7 + 5) = int32;
}

- (void)encodeInt64:(int64_t)int64 forKey:(id)key
{
  keyCopy = key;
  v6 = [(ICCRCoderArchiver *)self mutableObjectIDForKey:?];
  v7 = v6;
  if (v6[12] != 1)
  {
    CRDT::ObjectID::clear_contents(v6);
    v7[12] = 1;
  }

  *(v7 + 5) = int64;
}

- (void)encodeUInt32:(unsigned int)int32 forKey:(id)key
{
  keyCopy = key;
  v6 = [(ICCRCoderArchiver *)self mutableObjectIDForKey:?];
  v7 = v6;
  if (v6[12] != 2)
  {
    CRDT::ObjectID::clear_contents(v6);
    v7[12] = 2;
  }

  *(v7 + 5) = int32;
}

- (void)encodeUInt64:(unint64_t)int64 forKey:(id)key
{
  keyCopy = key;
  v6 = [(ICCRCoderArchiver *)self mutableObjectIDForKey:?];
  v7 = v6;
  if (v6[12] != 2)
  {
    CRDT::ObjectID::clear_contents(v6);
    v7[12] = 2;
  }

  *(v7 + 5) = int64;
}

- (unint64_t)encodeUUIDIndexFromUUID:(id)d
{
  dCopy = d;
  uuidSet = [(ICCRCoderArchiver *)self uuidSet];
  v6 = [uuidSet indexOfObject:dCopy];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    uuidSet2 = [(ICCRCoderArchiver *)self uuidSet];
    v6 = [uuidSet2 count];

    uuidSet3 = [(ICCRCoderArchiver *)self uuidSet];
    [uuidSet3 addObject:dCopy];
  }

  return v6;
}

- (void)mutableObjectIDForKey:(id)key
{
  keyCopy = key;
  currentCustomObjectForEncoding = [(ICCRCoderArchiver *)self currentCustomObjectForEncoding];
  v6 = currentCustomObjectForEncoding[13];
  v7 = currentCustomObjectForEncoding[12];
  if (v7 >= v6)
  {
    if (v6 == currentCustomObjectForEncoding[14])
    {
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((currentCustomObjectForEncoding + 10), v6 + 1);
    }

    google::protobuf::internal::GenericTypeHandler<CRDT::Document_CustomObject_MapEntry>::New();
  }

  v8 = *(currentCustomObjectForEncoding + 5);
  currentCustomObjectForEncoding[12] = v7 + 1;
  v9 = *(v8 + 8 * v7);
  v10 = [(ICCRCoderArchiver *)self indexForKey:keyCopy];
  v11 = *(v9 + 32);
  *(v9 + 48) = v10;
  *(v9 + 32) = v11 | 3;
  v12 = *(v9 + 40);
  if (!v12)
  {
    operator new();
  }

  return v12;
}

- (void)currentCustomObjectForEncoding
{
  currentDocumentObjectForEncoding = [(ICCRCoderArchiver *)self currentDocumentObjectForEncoding];
  v3 = currentDocumentObjectForEncoding;
  if (*(currentDocumentObjectForEncoding + 12) != 13)
  {
    CRDT::Document_DocObject::clear_contents(currentDocumentObjectForEncoding);
    *(v3 + 12) = 13;
    operator new();
  }

  return currentDocumentObjectForEncoding[5];
}

- (int)indexForKey:(id)key
{
  keyCopy = key;
  keySet = [(ICCRCoderArchiver *)self keySet];

  if (!keySet)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"self.keySet" functionName:"-[ICCRCoderArchiver indexForKey:]" simulateCrash:1 showAlert:0 format:@"keySet should have been allocated"];
  }

  keySet2 = [(ICCRCoderArchiver *)self keySet];
  v7 = [keySet2 indexOfObject:keyCopy];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    keySet3 = [(ICCRCoderArchiver *)self keySet];
    LODWORD(v7) = [keySet3 count];

    keySet4 = [(ICCRCoderArchiver *)self keySet];
    [keySet4 addObject:keyCopy];
  }

  return v7;
}

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 4) = 0;
  return self;
}

@end