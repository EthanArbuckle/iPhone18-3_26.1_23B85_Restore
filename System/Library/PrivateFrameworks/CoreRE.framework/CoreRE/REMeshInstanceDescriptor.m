@interface REMeshInstanceDescriptor
- (BOOL)validateWithModelCount:(unint64_t)a3 error:(id *)a4;
- (MeshInstance)meshInstanceWithModels:(SEL)a3 meshManager:(const void *)a4;
- (REMeshInstanceDescriptor)initWithCoder:(id)a3;
- (REMeshInstanceDescriptor)initWithMeshAssetInstance:(const void *)a3;
- (REMeshInstanceDescriptor)initWithName:(__n128)a3 modelIndex:(__n128)a4 transform:(__n128)a5;
- (unint64_t)estimateContainerSize;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMeshInstanceDescriptor

- (REMeshInstanceDescriptor)initWithMeshAssetInstance:(const void *)a3
{
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(a3 + 1)];
  v6 = [(REMeshInstanceDescriptor *)self initWithName:v5 modelIndex:*(a3 + 20) transform:*(a3 + 2), *(a3 + 4), *(a3 + 6), *(a3 + 8)];

  return v6;
}

- (MeshInstance)meshInstanceWithModels:(SEL)a3 meshManager:(const void *)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v9 = [(REMeshInstanceDescriptor *)self name];
  v10 = [v9 UTF8String];
  v26 = 0;
  v27 = &str_67;
  v11 = [(REMeshInstanceDescriptor *)self modelIndex];
  v12 = v11;
  v13 = *(a4 + 7);
  if (v13 <= v11)
  {
    v28 = 0;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v29 = 136315906;
    v30 = "operator[]";
    v31 = 1024;
    v32 = 797;
    v33 = 2048;
    v34 = v12;
    v35 = 2048;
    v36 = v13;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v14 = *(*(a4 + 9) + 8 * v11);
  [(REMeshInstanceDescriptor *)self transform];
  v24 = v16;
  v25 = v15;
  v22 = v18;
  v23 = v17;
  v19 = v27;
  *&retstr->var0.var0 = v26;
  retstr->var0.var1 = v19;
  v26 = 0;
  v27 = &str_67;
  *&retstr->var3.var1 = 0u;
  *&retstr->var4.var0 = 0u;
  *&retstr->var4.var2 = 0u;
  v20 = re::DataArray<re::MeshModel>::tryGet(a5 + 8, v14);
  *&retstr->var2.var0.var5[2] = v25;
  *&retstr->var2.var0.var5[6] = v24;
  *&retstr->var2.var0.var5[10] = v23;
  *&retstr->var2.var0.var5[14] = v22;
  retstr->var1 = v14;
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0;
  v27 = &str_67;

  return result;
}

- (REMeshInstanceDescriptor)initWithName:(__n128)a3 modelIndex:(__n128)a4 transform:(__n128)a5
{
  v10 = a7;
  v19.receiver = a1;
  v19.super_class = REMeshInstanceDescriptor;
  v11 = [(REMeshInstanceDescriptor *)&v19 init];
  if (v11)
  {
    v12 = [v10 copy];
    name = v11->_name;
    v11->_name = v12;

    v11->_modelIndex = a8;
    *&v11[1].super.isa = a2;
    *&v11[1]._name = a3;
    *&v11[2].super.isa = a4;
    *&v11[2]._name = a5;
  }

  return v11;
}

- (REMeshInstanceDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  name = self->_name;
  self->_name = v5;

  v7 = [v4 decodeIntegerForKey:@"modelIndex"];
  self->_modelIndex = v7;
  v32 = 0;
  v8 = [v4 decodeBytesForKey:@"transform" returnedLength:&v32];
  if (v32 != 64)
  {
LABEL_41:
    if (!HIDWORD(v7))
      v30 = {;
      [v4 failWithError:v30];
      goto LABEL_44;
    }

    v30 = LABEL_42:;
    [v4 failWithError:v30];
LABEL_44:

    v29 = 0;
    goto LABEL_45;
  }

  v10 = 0;
  v11 = *v8;
  v12 = v8[1];
  v13 = v8[2];
  v14 = vneg_f32(0x7F0000007FLL);
  LODWORD(v15) = HIDWORD(*v8);
  if ((v8->u32[0] & 0x7FFFFFFF) <= 0x7F7FFFFF)
  {
    v16 = vcge_s32((*&vext_s8(*v11.i8, *&vextq_s8(v11, v11, 8uLL), 4uLL) & 0x7FFFFFFF7FFFFFFFLL), v14);
    if ((v16.i8[0] & 1) == 0 && (v16.i8[4] & 1) == 0)
    {
      v10 = (LODWORD(v15) & 0x7FFFFFFFu) < 0x7F800000;
    }
  }

  v17 = v8[3];
  v18 = vcge_s32((vextq_s8(v12, v12, 4uLL).u64[0] & 0x7FFFFFFF7FFFFFFFLL), v14);
  v19 = (v18.i8[4] & 1) == 0 && (v12.i32[3] & 0x7FFFFFFFu) < 0x7F800000;
  if (v18.i8[0])
  {
    v19 = 0;
  }

  v20 = (v12.i32[0] & 0x7FFFFFFFu) <= 0x7F7FFFFF && v19;
  if ((v13.i32[0] & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    v21 = 0;
  }

  else
  {
    v21 = 0;
    v22 = vcge_s32((vextq_s8(v13, v13, 4uLL).u64[0] & 0x7FFFFFFF7FFFFFFFLL), v14);
    if ((v22.i8[0] & 1) == 0)
    {
      v21 = (v22.i8[4] & 1) == 0 && (v13.i32[3] & 0x7FFFFFFFu) < 0x7F800000;
    }
  }

  v23 = vcge_s32((vextq_s8(v17, v17, 4uLL).u64[0] & 0x7FFFFFFF7FFFFFFFLL), vneg_f32(0x7F0000007FLL));
  v24 = (v17.i32[3] & 0x7FFFFFFFu) < 0x7F800000;
  if (v23.i8[4])
  {
    v24 = 0;
  }

  if (v23.i8[0])
  {
    v24 = 0;
  }

  if ((v17.i32[0] & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    v24 = 0;
  }

  v26 = *&v12.i32[3] == 0.0 && v15 == 0.0;
  v28 = *&v13.i32[3] == 0.0 && *&v17.i32[3] == 1.0;
  if (!v28 || !v26 || !v24 || !v21 || !v20 || !v10)
  {
    *&self[2].super.isa = 0u;
    *&self[2]._name = 0u;
    *&self[1].super.isa = 0u;
    *&self[1]._name = 0u;
    goto LABEL_41;
  }

  *&self[1].super.isa = v11;
  *&self[1]._name = v12;
  *&self[2].super.isa = v13;
  *&self[2]._name = v17;
  if (HIDWORD(v7))
  {
    goto LABEL_42;
  }

  v29 = self;
LABEL_45:

  return v29;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_name forKey:@"name"];
  [v4 encodeInteger:self->_modelIndex forKey:@"modelIndex"];
  [v4 encodeBytes:&self[1] length:64 forKey:@"transform"];
}

- (BOOL)validateWithModelCount:(unint64_t)a3 error:(id *)a4
{
  modelIndex = self->_modelIndex;
  if (modelIndex >= a3)
  {
  }

  return modelIndex < a3;
}

- (unint64_t)estimateContainerSize
{
  v3 = objc_opt_class();
  InstanceSize = class_getInstanceSize(v3);
  name = self->_name;
  if (name)
  {
    v6 = objc_opt_class();
    v7 = class_getInstanceSize(v6);
    v8 = self->_name;
    if (v8)
    {
      name = ([(NSString *)v8 lengthOfBytesUsingEncoding:4]+ 1);
    }

    else
    {
      name = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return name + v7 + InstanceSize;
}

@end