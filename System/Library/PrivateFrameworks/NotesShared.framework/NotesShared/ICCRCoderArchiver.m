@interface ICCRCoderArchiver
+ (id)encodedDataWithDocument:(id)a3;
- (id).cxx_construct;
- (id)encodeDocument:(id)a3;
- (int)indexForKey:(id)a3;
- (unint64_t)encodeUUIDIndexFromUUID:(id)a3;
- (void)currentCustomObjectForEncoding;
- (void)encodeData:(id)a3 forKey:(id)a4;
- (void)encodeDouble:(double)a3 forKey:(id)a4;
- (void)encodeInt32:(int)a3 forKey:(id)a4;
- (void)encodeInt64:(int64_t)a3 forKey:(id)a4;
- (void)encodeObject:(id)a3 forKey:(id)a4;
- (void)encodeObject:(id)a3 forObjectID:(void *)a4;
- (void)encodeString:(id)a3 forKey:(id)a4;
- (void)encodeUInt32:(unsigned int)a3 forKey:(id)a4;
- (void)encodeUInt64:(unint64_t)a3 forKey:(id)a4;
- (void)encodeUUID:(id)a3 forKey:(id)a4;
- (void)mutableObjectIDForKey:(id)a3;
- (void)setTypeIndexForCurrentCustomObjectIfNecessary:(id)a3;
@end

@implementation ICCRCoderArchiver

+ (id)encodedDataWithDocument:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v6 = [v5 encodeDocument:v4];

  return v6;
}

- (id)encodeDocument:(id)a3
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = a3;
  operator new();
}

- (void)setTypeIndexForCurrentCustomObjectIfNecessary:(id)a3
{
  v7 = a3;
  v4 = [(ICCRCoder *)self typeIndexForClass:objc_opt_class()];
  v5 = v4;
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(ICCRCoderArchiver *)self currentCustomObjectForEncoding];
    v6[8] |= 1u;
    v6[16] = v5;
  }
}

- (void)encodeObject:(id)a3 forKey:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (v7)
  {
    [(ICCRCoderArchiver *)self encodeObject:v7 forObjectID:[(ICCRCoderArchiver *)self mutableObjectIDForKey:v6]];
  }
}

- (void)encodeObject:(id)a3 forObjectID:(void *)a4
{
  v6 = a3;
  v7 = [(ICCRCoderArchiver *)self encodedObjects];
  v8 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:v6];
  v9 = [v7 indexOfObject:v8];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = *([(ICCRCoderArchiver *)self currentDocument]+ 64);
    if (*(a4 + 12) != 6)
    {
      CRDT::ObjectID::clear_contents(a4);
      *(a4 + 12) = 6;
    }

    *(a4 + 10) = v10;
    v11 = [(ICCRCoderArchiver *)self currentDocument];
    v12 = v11[17];
    v13 = v11[16];
    if (v13 >= v12)
    {
      if (v12 == v11[18])
      {
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v11 + 14), v12 + 1);
      }

      google::protobuf::internal::GenericTypeHandler<CRDT::Document_DocObject>::New();
    }

    v14 = *(v11 + 7);
    v11[16] = v13 + 1;
    v17 = *(v14 + 8 * v13);
    std::vector<TopoSubstring *>::push_back[abi:ne200100](&self->currentDocObjectEncodingStack, &v17);
    v15 = [(ICCRCoderArchiver *)self encodedObjects];
    v16 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:v6];
    [v15 addObject:v16];

    [(ICCRCoderArchiver *)self setTypeIndexForCurrentCustomObjectIfNecessary:v6];
    [v6 encodeWithICCRCoder:self];
    --self->currentDocObjectEncodingStack.__end_;
  }

  else
  {
    if (*(a4 + 12) != 6)
    {
      CRDT::ObjectID::clear_contents(a4);
      *(a4 + 12) = 6;
    }

    *(a4 + 10) = v9;
  }
}

- (void)encodeData:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICCRCoderArchiver *)self mutableObjectIDForKey:v7];
  v9 = [v6 bytes];
  v10 = [v6 length];
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
    memmove(&__dst, v9, v10);
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

- (void)encodeString:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = [(ICCRCoderArchiver *)self mutableObjectIDForKey:a4];
  std::string::basic_string[abi:ne200100]<0>(&__str, [v6 UTF8String]);
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

- (void)encodeUUID:(id)a3 forKey:(id)a4
{
  v7 = a4;
  v6 = [a3 UUIDString];
  [(ICCRCoderArchiver *)self encodeString:v6 forKey:v7];
}

- (void)encodeDouble:(double)a3 forKey:(id)a4
{
  v8 = a4;
  v6 = [(ICCRCoderArchiver *)self mutableObjectIDForKey:?];
  v7 = v6;
  if (v6[12] != 3)
  {
    CRDT::ObjectID::clear_contents(v6);
    *(v7 + 12) = 3;
  }

  v7[5] = a3;
}

- (void)encodeInt32:(int)a3 forKey:(id)a4
{
  v8 = a4;
  v6 = [(ICCRCoderArchiver *)self mutableObjectIDForKey:?];
  v7 = v6;
  if (v6[12] != 1)
  {
    CRDT::ObjectID::clear_contents(v6);
    v7[12] = 1;
  }

  *(v7 + 5) = a3;
}

- (void)encodeInt64:(int64_t)a3 forKey:(id)a4
{
  v8 = a4;
  v6 = [(ICCRCoderArchiver *)self mutableObjectIDForKey:?];
  v7 = v6;
  if (v6[12] != 1)
  {
    CRDT::ObjectID::clear_contents(v6);
    v7[12] = 1;
  }

  *(v7 + 5) = a3;
}

- (void)encodeUInt32:(unsigned int)a3 forKey:(id)a4
{
  v8 = a4;
  v6 = [(ICCRCoderArchiver *)self mutableObjectIDForKey:?];
  v7 = v6;
  if (v6[12] != 2)
  {
    CRDT::ObjectID::clear_contents(v6);
    v7[12] = 2;
  }

  *(v7 + 5) = a3;
}

- (void)encodeUInt64:(unint64_t)a3 forKey:(id)a4
{
  v8 = a4;
  v6 = [(ICCRCoderArchiver *)self mutableObjectIDForKey:?];
  v7 = v6;
  if (v6[12] != 2)
  {
    CRDT::ObjectID::clear_contents(v6);
    v7[12] = 2;
  }

  *(v7 + 5) = a3;
}

- (unint64_t)encodeUUIDIndexFromUUID:(id)a3
{
  v4 = a3;
  v5 = [(ICCRCoderArchiver *)self uuidSet];
  v6 = [v5 indexOfObject:v4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(ICCRCoderArchiver *)self uuidSet];
    v6 = [v7 count];

    v8 = [(ICCRCoderArchiver *)self uuidSet];
    [v8 addObject:v4];
  }

  return v6;
}

- (void)mutableObjectIDForKey:(id)a3
{
  v4 = a3;
  v5 = [(ICCRCoderArchiver *)self currentCustomObjectForEncoding];
  v6 = v5[13];
  v7 = v5[12];
  if (v7 >= v6)
  {
    if (v6 == v5[14])
    {
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 10), v6 + 1);
    }

    google::protobuf::internal::GenericTypeHandler<CRDT::Document_CustomObject_MapEntry>::New();
  }

  v8 = *(v5 + 5);
  v5[12] = v7 + 1;
  v9 = *(v8 + 8 * v7);
  v10 = [(ICCRCoderArchiver *)self indexForKey:v4];
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
  v2 = [(ICCRCoderArchiver *)self currentDocumentObjectForEncoding];
  v3 = v2;
  if (*(v2 + 12) != 13)
  {
    CRDT::Document_DocObject::clear_contents(v2);
    *(v3 + 12) = 13;
    operator new();
  }

  return v2[5];
}

- (int)indexForKey:(id)a3
{
  v4 = a3;
  v5 = [(ICCRCoderArchiver *)self keySet];

  if (!v5)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"self.keySet" functionName:"-[ICCRCoderArchiver indexForKey:]" simulateCrash:1 showAlert:0 format:@"keySet should have been allocated"];
  }

  v6 = [(ICCRCoderArchiver *)self keySet];
  v7 = [v6 indexOfObject:v4];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(ICCRCoderArchiver *)self keySet];
    LODWORD(v7) = [v8 count];

    v9 = [(ICCRCoderArchiver *)self keySet];
    [v9 addObject:v4];
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