@interface REMeshAttributeDescriptor
- (BOOL)validateWithPayloadSize:(unint64_t)a3 error:(id *)a4;
- (REMeshAttributeDescriptor)initWithCoder:(id)a3;
- (REMeshAttributeDescriptor)initWithMeshAssetBuffer:(const void *)a3 payloadBuilder:(void *)a4;
- (REMeshAttributeDescriptor)initWithPayloadOffset:(unsigned int)a3 count:(unsigned int)a4 format:(unint64_t)a5 stepFunction:(unint64_t)a6 stride:(unsigned int)a7;
- (unint64_t)bufferSize;
- (unint64_t)estimateContainerSize;
- (void)addBufferToArray:(void *)a3 name:(const char *)a4 payloadBuffer:(const void *)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMeshAttributeDescriptor

- (REMeshAttributeDescriptor)initWithMeshAssetBuffer:(const void *)a3 payloadBuilder:(void *)a4
{
  v7 = re::sizeFromVertexFormat(*(a3 + 72), a2);
  v9 = v7;
  v10 = v7;
  v11 = *(a3 + 6) / v7;
  if (HIDWORD(v11))
  {
    v12 = *re::assetTypesLogObjects(v7);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v24[0]) = 0;
      _os_log_fault_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_FAULT, "Vertex count overflow when initializing REMeshAttributeDescriptor", v24, 2u);
    }

    v13 = 0;
  }

  else
  {
    v14 = *(a3 + 2);
    if ((*(a3 + 8) & 1) == 0)
    {
      v14 = a3 + 9;
    }

    if (v14)
    {
      v15 = *v14;
      if (*v14)
      {
        v16 = v14[1];
        if (v16)
        {
          v17 = (v14 + 2);
          do
          {
            v15 = 31 * v15 + v16;
            v18 = *v17++;
            v16 = v18;
          }

          while (v18);
        }
      }
    }

    else
    {
      v15 = 0;
    }

    v24[0] = 2 * v15;
    v24[1] = v14;
    v19 = re::bufferIdentifierForMeshAttribute(v24, v8);
    v20 = v19;
    if (v24[0])
    {
      if (v24[0])
      {
      }
    }

    v21 = 64;
    if (v20 < 4)
    {
      v21 = 8;
    }

    if (v10 <= 0x10)
    {
      v22 = 16;
    }

    else
    {
      v22 = v10;
    }

    v13 = self;
  }

  return v13;
}

- (void)addBufferToArray:(void *)a3 name:(const char *)a4 payloadBuffer:(const void *)a5
{
  if (a4)
  {
    v9 = *a4;
    if (*a4)
    {
      v10 = a4[1];
      if (v10)
      {
        v11 = a4 + 2;
        do
        {
          v9 = 31 * v9 + v10;
          v12 = *v11++;
          v10 = v12;
        }

        while (v12);
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v15 = 2 * v9;
  v16 = a4;
  v13 = re::bufferIdentifierForMeshAttribute(&v15, a2);
  v14 = v13;
  if (v15)
  {
    if (v15)
    {
    }
  }

  v17 = [(REMeshAttributeDescriptor *)self format];
  v18 = [(REMeshAttributeDescriptor *)self stepFunction];
  re::MeshPayloadBuffers::slice(a5, v14, [(REMeshAttributeDescriptor *)self payloadOffset], [(REMeshAttributeDescriptor *)self bufferSize]);
  v21 = 0;
  v22 = [(REMeshAttributeDescriptor *)self stride];
  re::DynamicArray<re::NamedVertexBuffer>::add(a3, &v15);
  if (v20 != -1)
  {
    (off_1F5CC8DB0[v20])(&v23, &v19);
  }

  v20 = -1;
  if (v15)
  {
    if (v16)
    {
      (*(*v15 + 40))();
    }
  }
}

- (REMeshAttributeDescriptor)initWithPayloadOffset:(unsigned int)a3 count:(unsigned int)a4 format:(unint64_t)a5 stepFunction:(unint64_t)a6 stride:(unsigned int)a7
{
  v13.receiver = self;
  v13.super_class = REMeshAttributeDescriptor;
  result = [(REMeshAttributeDescriptor *)&v13 init];
  if (result)
  {
    result->_payloadOffset = a3;
    result->_count = a4;
    result->_format = a5;
    result->_stepFunction = a6;
    result->_stride = a7;
  }

  return result;
}

- (REMeshAttributeDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"payloadOffset"];
  self->_payloadOffset = v5;
  v6 = [v4 decodeIntegerForKey:@"count"];
  self->_count = v6;
  v7 = [v4 decodeIntegerForKey:@"format"];
  v8 = v7;
  if ((atomic_load_explicit(&qword_1EE19BB90, memory_order_acquire) & 1) == 0)
  {
    v7 = __cxa_guard_acquire(&qword_1EE19BB90);
    if (v7)
    {
      qword_1EE19BB88 = re::mtl::introspect_VertexFormat(0, v32);
      __cxa_guard_release(&qword_1EE19BB90);
    }
  }

  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = *(qword_1EE19BB88 + 64);
  v10 = *v9;
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v9 + 1);
  v12 = 1;
  v13 = v10;
  v14 = 1;
  do
  {
    if (**v11 == 1 && *(*v11 + 8) == v8)
    {
      break;
    }

    v14 = v12++ < v10;
    v11 += 8;
    --v13;
  }

  while (v13);
  if (v14)
  {
    self->_format = v8;
    v15 = 1;
  }

  else
  {
LABEL_10:
    self->_format = 0;
    v16 = *re::assetTypesLogObjects(v7);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v34[0] = 0;
      _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "Invalid MTLVertexFormat when decoding REMeshAttributeDescriptor", v34, 2u);
    }

    v15 = 0;
  }

  v17 = [v4 decodeIntegerForKey:@"stepFunction"];
  v18 = v17;
  if ((atomic_load_explicit(&qword_1EE19BBA0, memory_order_acquire) & 1) == 0)
  {
    v17 = __cxa_guard_acquire(&qword_1EE19BBA0);
    if (v17)
    {
      qword_1EE19BB98 = re::mtl::introspect_VertexStepFunction(0, v33);
      __cxa_guard_release(&qword_1EE19BBA0);
    }
  }

  v19 = *(qword_1EE19BB98 + 64);
  v20 = *v19;
  if (!v20)
  {
    goto LABEL_21;
  }

  v21 = *(v19 + 1);
  v22 = 1;
  v23 = v20;
  v24 = 1;
  do
  {
    if (**v21 == 1 && *(*v21 + 8) == v18)
    {
      break;
    }

    v24 = v22++ < v20;
    v21 += 8;
    --v23;
  }

  while (v23);
  if (v24)
  {
    self->_stepFunction = v18;
    v25 = 1;
  }

  else
  {
LABEL_21:
    self->_stepFunction = -1;
    v26 = *re::assetTypesLogObjects(v17);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_ERROR, "Invalid MTLVertexStepFunction when decoding REMeshAttributeDescriptor", buf, 2u);
    }

    v25 = 0;
  }

  v27 = [v4 decodeIntegerForKey:@"stride"];
  self->_stride = v27;
  if (HIDWORD(v27) || HIDWORD(v6) || HIDWORD(v5))
    v30 = {;
    [v4 failWithError:v30];
LABEL_31:

    v29 = 0;
    goto LABEL_32;
  }

  if ((v15 & v25 & 1) == 0)
    v30 = {;
    [v4 failWithError:v30];
    goto LABEL_31;
  }

  v29 = self;
LABEL_32:

  return v29;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:self->_payloadOffset forKey:@"payloadOffset"];
  [v4 encodeInteger:self->_count forKey:@"count"];
  [v4 encodeInteger:self->_format forKey:@"format"];
  [v4 encodeInteger:self->_stepFunction forKey:@"stepFunction"];
  [v4 encodeInteger:self->_stride forKey:@"stride"];
}

- (BOOL)validateWithPayloadSize:(unint64_t)a3 error:(id *)a4
{
  payloadOffset = self->_payloadOffset;
  v7 = [(REMeshAttributeDescriptor *)self bufferSize];
  if (v7 && !__CFADD__(payloadOffset, v7) && payloadOffset < a3 && payloadOffset + v7 <= a3)
  {
    return 1;
  }

  return 0;
}

- (unint64_t)bufferSize
{
  v3 = re::sizeFromVertexFormat(LOBYTE(self->_format), a2);
  count = self->_count;
  if (count)
  {
    return (count - 1) * self->_stride + v3;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)estimateContainerSize
{
  v2 = objc_opt_class();

  return class_getInstanceSize(v2);
}

@end