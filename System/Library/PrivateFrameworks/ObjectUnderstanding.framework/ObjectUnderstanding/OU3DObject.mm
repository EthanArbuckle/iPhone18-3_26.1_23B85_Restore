@interface OU3DObject
- (BOOL)getDimension:(id)dimension dim:;
- (BOOL)getTransform:(id)transform transform:(id *)a4;
- (BOOL)hasBoxesDict:(id)dict;
- (OU3DObject)init;
- (OU3DObject)initWithCoder:(id)coder;
- (OU3DObject)initWithDictionaryRepresentation:(id)representation;
- (double)transform;
- (float32x2_t)dimensions;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)getFrameIndexOfLastRefine;
- (void)addBoxesDict:(const box3d *)dict forDictKey:(id)key;
- (void)addObjectPartAttribute:(id)attribute;
- (void)clearGroupInfo:(id)info;
- (void)encodeWithCoder:(id)coder;
- (void)removeBoxesDict:(id)dict;
- (void)updateObjectEmbedding2d:(id)embedding2d;
- (void)updateObjectEmbedding3d:(id)embedding3d;
@end

@implementation OU3DObject

- (float32x2_t)dimensions
{
  v2 = [self hasBoxesDict:@"rawdetection"];
  result = 0;
  if (v2)
  {
    v4 = [self[3] objectForKeyedSubscript:{@"rawdetection", 0.0}];
    v5 = box3dFromNSArray(v4, &v10);

    result = 0;
    if (v5)
    {
      v6 = vsubq_f32(v11, v12);
      v7 = vmulq_f32(v6, v6);
      v8 = vsubq_f32(v10, v11);
      v9 = vmulq_f32(v8, v8);
      return vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v7, v7, 8uLL), *&vextq_s8(v9, v9, 8uLL)), vadd_f32(vzip1_s32(*v7.i8, *v9.i8), vzip2_s32(*v7.i8, *v9.i8))));
    }
  }

  return result;
}

- (double)transform
{
  v2 = [self hasBoxesDict:@"rawdetection"];
  v3.i64[0] = 0;
  if (v2)
  {
    v4 = [self[3] objectForKeyedSubscript:{@"rawdetection", 0.0}];
    v5 = box3dFromNSArray(v4, v22);

    v3 = 0uLL;
    if (v5)
    {
      for (i = 0; i != 8; ++i)
      {
        v3 = vaddq_f32(v3, v22[i]);
      }

      v7 = 0;
      v8 = vsubq_f32(v22[1], v22[2]);
      v9 = vmulq_f32(v8, v8);
      *&v10 = v9.f32[2] + vaddv_f32(*v9.f32);
      *v9.f32 = vrsqrte_f32(v10);
      *v9.f32 = vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32)));
      v11 = vmulq_n_f32(v8, vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32))).f32[0]);
      v12 = vsubq_f32(v22[4], v22[0]);
      v13 = vmulq_f32(v12, v12);
      *&v14 = v13.f32[2] + vaddv_f32(*v13.f32);
      *v13.f32 = vrsqrte_f32(v14);
      *v13.f32 = vmul_f32(*v13.f32, vrsqrts_f32(v14, vmul_f32(*v13.f32, *v13.f32)));
      v15 = vrsqrts_f32(v14, vmul_f32(*v13.f32, *v13.f32));
      v16.i64[0] = 0x3E0000003E000000;
      v16.i64[1] = 0x3E0000003E000000;
      v17 = vmulq_n_f32(v12, vmul_f32(*v13.f32, v15).f32[0]);
      v18 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL), vnegq_f32(v17)), v11, vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL));
      v19 = vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL);
      v11.i32[3] = 0;
      v19.i32[3] = 0;
      v17.i32[3] = 0;
      v20 = vmulq_f32(v3, v16);
      v20.i32[3] = 1.0;
      v23[0] = v11;
      v23[1] = v19;
      v23[2] = v17;
      v23[3] = xmmword_25D277B90;
      do
      {
        *(&v24 + v7 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_25D277BA0, COERCE_FLOAT(v23[v7])), xmmword_25D277BB0, *&v23[v7], 1), xmmword_25D277BC0, v23[v7], 2), v20, v23[v7], 3);
        ++v7;
      }

      while (v7 != 4);
      v3.i64[0] = v24;
    }
  }

  return *v3.i64;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  objc_storeStrong((v4 + 56), self->type);
  objc_storeStrong((v4 + 64), self->identifier);
  objc_storeStrong((v4 + 72), self->parent_id);
  *(v4 + 52) = self->confidence;
  v5 = [(NSArray *)self->logits copy];
  v6 = *(v4 + 80);
  *(v4 + 80) = v5;

  v7 = [(NSArray *)self->embedding2d copy];
  v8 = *(v4 + 88);
  *(v4 + 88) = v7;

  v9 = [(NSArray *)self->embedding3d copy];
  v10 = *(v4 + 96);
  *(v4 + 96) = v9;

  objc_storeStrong((v4 + 104), self->corners_status);
  objc_storeStrong((v4 + 112), self->edges_status);
  *(v4 + 144) = *self->color;
  v11 = [(NSMutableDictionary *)self->_groups mutableCopy];
  v12 = *(v4 + 8);
  *(v4 + 8) = v11;

  v13 = [(NSMutableDictionary *)self->_parts mutableCopy];
  v14 = *(v4 + 16);
  *(v4 + 16) = v13;

  v15 = [(NSMutableDictionary *)self->_boxesDict mutableCopy];
  v16 = *(v4 + 24);
  *(v4 + 24) = v15;

  *(v4 + 48) = self->status;
  objc_storeStrong((v4 + 128), self->detection_source);
  objc_storeStrong((v4 + 136), self->cadModelName);
  return v4;
}

- (OU3DObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v50.receiver = self;
  v50.super_class = OU3DObject;
  v5 = [(OU3DObject *)&v50 init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
  type = v5->type;
  v5->type = v6;

  if ((isValidType(v5->type) & 1) != 0 && ([coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"detectionsource"], v8 = objc_claimAutoreleasedReturnValue(), detection_source = v5->detection_source, v5->detection_source = v8, detection_source, isValidODSourceType(v5->detection_source)))
  {
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->identifier;
    v5->identifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parent_id"];
    parent_id = v5->parent_id;
    v5->parent_id = v12;

    [coderCopy decodeFloatForKey:@"confidence"];
    v5->confidence = v14;
    v5->status = [coderCopy decodeBoolForKey:@"status"];
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"logits"];
    logits = v5->logits;
    v5->logits = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"embedding2d"];
    embedding2d = v5->embedding2d;
    v5->embedding2d = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"embedding3d"];
    embedding3d = v5->embedding3d;
    v5->embedding3d = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"corners_status"];
    corners_status = v5->corners_status;
    v5->corners_status = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"edges_status"];
    edges_status = v5->edges_status;
    v5->edges_status = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"color"];
    *v5->color = *[v25 bytes];
    v26 = MEMORY[0x277CBEB98];
    v27 = objc_opt_class();
    v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
    v29 = MEMORY[0x277CBEB98];
    v30 = objc_opt_class();
    v31 = objc_opt_class();
    v32 = objc_opt_class();
    v33 = [v29 setWithObjects:{v30, v31, v32, objc_opt_class(), 0}];

    v34 = [coderCopy decodeObjectOfClasses:v33 forKey:@"groups"];
    v35 = [v34 mutableCopy];

    v36 = [v35 mutableCopy];
    groups = v5->_groups;
    v5->_groups = v36;

    v38 = [coderCopy decodeObjectOfClasses:v33 forKey:@"parts"];
    v39 = [v38 mutableCopy];

    v40 = [v39 mutableCopy];
    parts = v5->_parts;
    v5->_parts = v40;

    v42 = [coderCopy decodeObjectOfClasses:v33 forKey:@"boxes_dict"];
    v43 = [v42 mutableCopy];

    v44 = [v43 mutableCopy];
    boxesDict = v5->_boxesDict;
    v5->_boxesDict = v44;

    v46 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cadmodelname"];
    cadModelName = v5->cadModelName;
    v5->cadModelName = v46;

    v48 = v5;
  }

  else
  {
    v48 = 0;
  }

  return v48;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->type forKey:@"type"];
  [coderCopy encodeObject:self->detection_source forKey:@"detectionsource"];
  [coderCopy encodeObject:self->identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->parent_id forKey:@"parent_id"];
  *&v4 = self->confidence;
  [coderCopy encodeFloat:@"confidence" forKey:v4];
  [coderCopy encodeObject:self->logits forKey:@"logits"];
  [coderCopy encodeObject:self->embedding2d forKey:@"embedding2d"];
  [coderCopy encodeObject:self->embedding3d forKey:@"embedding3d"];
  [coderCopy encodeObject:self->corners_status forKey:@"corners_status"];
  [coderCopy encodeObject:self->edges_status forKey:@"edges_status"];
  [coderCopy encodeBool:self->status forKey:@"status"];
  v5 = [MEMORY[0x277CBEA90] dataWithBytes:self->color length:16];
  [coderCopy encodeObject:v5 forKey:@"color"];
  [coderCopy encodeObject:self->_groups forKey:@"groups"];
  [coderCopy encodeObject:self->_parts forKey:@"parts"];
  [coderCopy encodeObject:self->_boxesDict forKey:@"boxes_dict"];
  [coderCopy encodeObject:self->cadModelName forKey:@"cadmodelname"];
}

- (BOOL)hasBoxesDict:(id)dict
{
  dictCopy = dict;
  boxesDict = self->_boxesDict;
  if (boxesDict)
  {
    allKeys = [(NSMutableDictionary *)boxesDict allKeys];
    v7 = [allKeys containsObject:dictCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)getDimension:(id)dimension dim:
{
  v4 = v3;
  dimensionCopy = dimension;
  if (![(OU3DObject *)self hasBoxesDict:dimensionCopy])
  {
    LOBYTE(v8) = 0;
    v16 = 0uLL;
    goto LABEL_5;
  }

  v7 = [(NSMutableDictionary *)self->_boxesDict objectForKeyedSubscript:dimensionCopy];
  v8 = box3dFromNSArray(v7, &v18);

  if (v8)
  {
    v9 = vsubq_f32(v19, v20);
    v10 = vmulq_f32(v9, v9);
    v11 = vsubq_f32(v18, v19);
    v12 = vmulq_f32(v11, v11);
    v13 = vadd_f32(vzip1_s32(*v10.i8, *v12.i8), vzip2_s32(*v10.i8, *v12.i8));
    v16 = vextq_s8(v12, v12, 8uLL);
    *v16.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v10, v10, 8uLL), *v16.i8), v13));
    v14 = vsubq_f32(v18, v21);
    v15 = vmulq_f32(v14, v14);
    v16.i32[2] = sqrtf(v15.f32[2] + vaddv_f32(*v15.f32));
LABEL_5:
    *v4 = v16;
  }

  return v8;
}

- (BOOL)getTransform:(id)transform transform:(id *)a4
{
  transformCopy = transform;
  if ([(OU3DObject *)self hasBoxesDict:transformCopy])
  {
    v7 = [(NSMutableDictionary *)self->_boxesDict objectForKeyedSubscript:transformCopy];
    v8 = box3dFromNSArray(v7, &v30);

    if (v8)
    {
      v9 = 0;
      v10 = 0uLL;
      do
      {
        v10 = vaddq_f32(v10, *(&v30 + v9));
        v9 += 16;
      }

      while (v9 != 128);
      v11 = 0;
      v12 = vsubq_f32(v31, v32);
      v13 = vmulq_f32(v12, v12);
      *&v14 = v13.f32[2] + vaddv_f32(*v13.f32);
      *v13.f32 = vrsqrte_f32(v14);
      *v13.f32 = vmul_f32(*v13.f32, vrsqrts_f32(v14, vmul_f32(*v13.f32, *v13.f32)));
      v15 = vmulq_n_f32(v12, vmul_f32(*v13.f32, vrsqrts_f32(v14, vmul_f32(*v13.f32, *v13.f32))).f32[0]);
      v16 = vsubq_f32(v30, v31);
      v17 = vmulq_f32(v16, v16);
      *&v18 = v17.f32[2] + vaddv_f32(*v17.f32);
      *v17.f32 = vrsqrte_f32(v18);
      *v17.f32 = vmul_f32(*v17.f32, vrsqrts_f32(v18, vmul_f32(*v17.f32, *v17.f32)));
      v19.i64[0] = 0x3E0000003E000000;
      v19.i64[1] = 0x3E0000003E000000;
      v20 = vmulq_n_f32(v16, vmul_f32(*v17.f32, vrsqrts_f32(v18, vmul_f32(*v17.f32, *v17.f32))).f32[0]);
      v21 = vsubq_f32(v33, v30);
      v22 = vmulq_f32(v21, v21);
      *&v23 = v22.f32[2] + vaddv_f32(*v22.f32);
      *v22.f32 = vrsqrte_f32(v23);
      *v22.f32 = vmul_f32(*v22.f32, vrsqrts_f32(v23, vmul_f32(*v22.f32, *v22.f32)));
      v24 = vmulq_n_f32(v21, vmul_f32(*v22.f32, vrsqrts_f32(v23, vmul_f32(*v22.f32, *v22.f32))).f32[0]);
      v15.i32[3] = 0;
      v20.i32[3] = 0;
      v24.i32[3] = 0;
      v25 = vmulq_f32(v10, v19);
      v25.i32[3] = 1.0;
      v34[0] = v15;
      v34[1] = v20;
      v34[2] = v24;
      v34[3] = xmmword_25D277B90;
      do
      {
        v35[v11] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_25D277BA0, COERCE_FLOAT(v34[v11])), xmmword_25D277BB0, *&v34[v11], 1), xmmword_25D277BC0, v34[v11], 2), v25, v34[v11], 3);
        ++v11;
      }

      while (v11 != 4);
      v26 = v35[1];
      v27 = v35[2];
      v28 = v35[3];
      *a4 = v35[0];
      *(a4 + 1) = v26;
      *(a4 + 2) = v27;
      *(a4 + 3) = v28;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (id)dictionaryRepresentation
{
  v20[4] = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:self->type forKeyedSubscript:@"type"];
  [dictionary setObject:self->detection_source forKeyedSubscript:@"detectionsource"];
  uUIDString = [(NSUUID *)self->identifier UUIDString];
  [dictionary setObject:uUIDString forKeyedSubscript:@"identifier"];

  parent_id = self->parent_id;
  if (parent_id)
  {
    uUIDString2 = [(NSUUID *)self->parent_id UUIDString];
  }

  else
  {
    uUIDString2 = 0;
  }

  [dictionary setObject:uUIDString2 forKeyedSubscript:@"parent_id"];
  if (parent_id)
  {
  }

  *&v7 = self->confidence;
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  [dictionary setObject:v8 forKeyedSubscript:@"confidence"];

  [dictionary setObject:self->logits forKeyedSubscript:@"logits"];
  [dictionary setObject:self->embedding2d forKeyedSubscript:@"embedding2d"];
  [dictionary setObject:self->embedding3d forKeyedSubscript:@"embedding3d"];
  [dictionary setObject:self->corners_status forKeyedSubscript:@"corners_status"];
  [dictionary setObject:self->edges_status forKeyedSubscript:@"edges_status"];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:self->status];
  [dictionary setObject:v9 forKeyedSubscript:@"status"];

  v19 = *self->color;
  v10 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  v20[0] = v10;
  HIDWORD(v11) = DWORD1(v19);
  LODWORD(v11) = DWORD1(v19);
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  v20[1] = v12;
  v13 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v19), DWORD2(v19)))}];
  v20[2] = v13;
  v14 = [MEMORY[0x277CCABB0] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(DWORD1(v19), HIDWORD(v19)))}];
  v20[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:4];

  [dictionary setObject:v15 forKeyedSubscript:@"color"];
  [dictionary setObject:self->_groups forKeyedSubscript:@"groups"];
  [dictionary setObject:self->_parts forKeyedSubscript:@"parts"];
  if ([(NSMutableDictionary *)self->_boxesDict count])
  {
    [dictionary setObject:self->_boxesDict forKeyedSubscript:@"boxes_dict"];
  }

  [dictionary setObject:self->cadModelName forKeyedSubscript:@"cadmodelname"];
  v16 = [dictionary copy];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (OU3DObject)init
{
  v17.receiver = self;
  v17.super_class = OU3DObject;
  v2 = [(OU3DObject *)&v17 init];
  if (v2)
  {
    v3 = objc_opt_new();
    groups = v2->_groups;
    v2->_groups = v3;

    v5 = objc_opt_new();
    parts = v2->_parts;
    v2->_parts = v5;

    v7 = objc_opt_new();
    boxesDict = v2->_boxesDict;
    v2->_boxesDict = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    corners_history = v2->_corners_history;
    v2->_corners_history = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    refined_box_history = v2->_refined_box_history;
    v2->_refined_box_history = v11;

    v13 = 8;
    do
    {
      v14 = objc_alloc_init(OU3DObjectCorner);
      [(NSMutableArray *)v2->_corners_history addObject:v14];

      --v13;
    }

    while (v13);
    cadModelName = v2->cadModelName;
    v2->cadModelName = 0;
  }

  return v2;
}

- (OU3DObject)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v75.receiver = self;
  v75.super_class = OU3DObject;
  v5 = [(OU3DObject *)&v75 init];
  v6 = v5;
  v7 = [representationCopy objectForKeyedSubscript:@"type"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    goto LABEL_39;
  }

  type = v5->type;
  v5->type = v8;
  v10 = v8;

  valid = isValidType(v5->type);
  if ((valid & 1) == 0)
  {
    goto LABEL_39;
  }

  v12 = [representationCopy objectForKeyedSubscript:@"detectionsource"];
  objc_opt_class();
  v13 = (objc_opt_isKindOfClass() & 1) != 0 ? v12 : 0;

  if (!v13)
  {
    goto LABEL_39;
  }

  detection_source = v5->detection_source;
  v5->detection_source = v13;
  v15 = v13;

  v16 = isValidODSourceType(v5->detection_source);
  if ((v16 & 1) == 0)
  {
    goto LABEL_39;
  }

  v17 = [representationCopy objectForKeyedSubscript:@"identifier"];
  if (!v17)
  {
    goto LABEL_39;
  }

  v18 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v17];
  identifier = v5->identifier;
  v5->identifier = v18;

  v20 = [representationCopy objectForKeyedSubscript:@"parent_id"];
  v21 = v20 ? [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v20] : 0;
  parent_id = v5->parent_id;
  v5->parent_id = v21;

  v23 = [representationCopy objectForKeyedSubscript:@"status"];
  objc_opt_class();
  v24 = (objc_opt_isKindOfClass() & 1) != 0 ? v23 : 0;

  if (!v24)
  {
    goto LABEL_39;
  }

  v5->status = [v24 BOOLValue];

  v25 = [representationCopy objectForKeyedSubscript:@"confidence"];
  v26 = objc_cast<NSNumber>(v25);

  if (v26)
  {
    [v26 floatValue];
    v5->confidence = v27;

    v28 = [representationCopy objectForKeyedSubscript:@"logits"];
    v29 = objc_cast<NSArray<NSNumber *>>(v28);
    logits = v5->logits;
    v5->logits = v29;

    if (!v5->logits)
    {
      v31 = objc_opt_new();
      v32 = v5->logits;
      v5->logits = v31;
    }

    v33 = [representationCopy objectForKeyedSubscript:@"embedding2d"];
    v34 = objc_cast<NSArray<NSArray*<NSNumber *>>>(v33);
    embedding2d = v5->embedding2d;
    v5->embedding2d = v34;

    if (!v5->embedding2d)
    {
      v36 = objc_opt_new();
      v37 = v5->embedding2d;
      v5->embedding2d = v36;
    }

    v38 = [representationCopy objectForKeyedSubscript:@"embedding3d"];
    v39 = objc_cast<NSArray<NSNumber *>>(v38);
    embedding3d = v5->embedding3d;
    v5->embedding3d = v39;

    if (!v5->embedding3d)
    {
      v41 = objc_opt_new();
      v42 = v5->embedding3d;
      v5->embedding3d = v41;
    }

    v43 = [representationCopy objectForKeyedSubscript:@"corners_status"];
    v44 = objc_cast<NSArray<NSNumber *>>(v43);
    corners_status = v5->corners_status;
    v5->corners_status = v44;

    if (!v5->corners_status)
    {
      v46 = objc_opt_new();
      v47 = v5->corners_status;
      v5->corners_status = v46;
    }

    v48 = [representationCopy objectForKeyedSubscript:@"edges_status"];
    v49 = objc_cast<NSArray<NSNumber *>>(v48);
    edges_status = v5->edges_status;
    v5->edges_status = v49;

    if (!v5->edges_status)
    {
      v51 = objc_opt_new();
      v52 = v5->edges_status;
      v5->edges_status = v51;
    }

    v53 = [representationCopy objectForKeyedSubscript:@"color"];
    v54 = objc_cast<NSArray>(v53);

    if (v54)
    {
      float4FromNSArray(v54, v5->color);
    }

    v55 = [representationCopy objectForKeyedSubscript:@"groups"];
    v56 = objc_cast<NSMutableDictionary>(v55);
    groups = v5->_groups;
    v5->_groups = v56;

    if (!v5->_groups)
    {
      v58 = objc_opt_new();
      v59 = v5->_groups;
      v5->_groups = v58;
    }

    v60 = [representationCopy objectForKeyedSubscript:@"parts"];
    v61 = objc_cast<NSMutableDictionary>(v60);
    parts = v5->_parts;
    v5->_parts = v61;

    if (!v5->_parts)
    {
      v63 = objc_opt_new();
      v64 = v5->_parts;
      v5->_parts = v63;
    }

    v65 = [representationCopy objectForKeyedSubscript:@"boxes_dict"];
    v66 = objc_cast<NSMutableDictionary>(v65);
    boxesDict = v5->_boxesDict;
    v5->_boxesDict = v66;

    if (!v5->_boxesDict)
    {
      v68 = objc_opt_new();
      v69 = v5->_boxesDict;
      v5->_boxesDict = v68;
    }

    v70 = [representationCopy objectForKeyedSubscript:@"cadmodelname"];
    v71 = objc_cast<NSString>(v70);
    cadModelName = v5->cadModelName;
    v5->cadModelName = v71;

    v73 = v5;
  }

  else
  {
LABEL_39:
    v73 = 0;
  }

  return v73;
}

- (id)description
{
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  [(OU3DObject *)self getTransform:@"rawdetection" transform:&v15];
  v10 = v15;
  v11 = v16;
  v12 = v18;
  v13 = v17;
  v14 = 0uLL;
  [(OU3DObject *)self getDimension:@"rawdetection" dim:&v14];
  v9 = v14;
  v3 = MEMORY[0x277CCACA8];
  uUIDString = [(NSUUID *)self->identifier UUIDString];
  uTF8String = [uUIDString UTF8String];
  v6 = vaddq_f32(v12, vmlaq_f32(vmlaq_f32(vmulq_f32(v10, 0), 0, v11), 0, v13));
  v7 = [v3 stringWithFormat:@"<OU3DObject> [id=%s conf=%0.2f] %@ { position = < %.2f, %.2f, %.2f > dimension = < %.2f x %.2f x %.2f > color = < r=%.2f, g=%.2f, b=%.2f, a=%.2f > }", uTF8String, self->confidence, self->type, v6.f32[0], v6.f32[1], v6.f32[2], *&v9, *(&v9 + 1), *(&v9 + 2), COERCE_FLOAT(*self->color), COERCE_FLOAT(HIDWORD(*self->color)), COERCE_FLOAT(*&self->color[8]), COERCE_FLOAT(HIDWORD(*self->color))];

  return v7;
}

- (void)addBoxesDict:(const box3d *)dict forDictKey:(id)key
{
  v17[8] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v6 = float3ToNSArray(*dict);
  v17[0] = v6;
  v7 = float3ToNSArray(*(dict + 1));
  v17[1] = v7;
  v8 = float3ToNSArray(*(dict + 2));
  v17[2] = v8;
  v9 = float3ToNSArray(*(dict + 3));
  v17[3] = v9;
  v10 = float3ToNSArray(*(dict + 4));
  v17[4] = v10;
  v11 = float3ToNSArray(*(dict + 5));
  v17[5] = v11;
  v12 = float3ToNSArray(*(dict + 6));
  v17[6] = v12;
  v13 = float3ToNSArray(*(dict + 7));
  v17[7] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:8];

  [(NSMutableDictionary *)self->_boxesDict setObject:v14 forKeyedSubscript:keyCopy];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)addObjectPartAttribute:(id)attribute
{
  attributeCopy = attribute;
  v4 = objc_alloc_init(MEMORY[0x277CBEA60]);
  [(NSMutableDictionary *)self->_parts setObject:v4 forKeyedSubscript:attributeCopy];
}

- (void)updateObjectEmbedding2d:(id)embedding2d
{
  embedding2dCopy = embedding2d;
  if (![(NSArray *)self->embedding2d count])
  {
    v8 = objc_opt_new();
    v20 = [embedding2dCopy mutableCopy];
    [v8 addObject:v20];

    v21 = [v8 copy];
LABEL_14:
    embedding2d = self->embedding2d;
    self->embedding2d = v21;

    goto LABEL_15;
  }

  v5 = [(NSArray *)self->embedding2d objectAtIndexedSubscript:0];
  v6 = [v5 count];
  v7 = [embedding2dCopy count];

  if (v6 == v7)
  {
    v8 = [(NSArray *)self->embedding2d mutableCopy];
    for (i = 0; [embedding2dCopy count] > i; ++i)
    {
      v10 = [v8 objectAtIndexedSubscript:0];
      v11 = [v10 objectAtIndex:i];
      [v11 floatValue];
      v13 = v12;

      v14 = [embedding2dCopy objectAtIndex:i];
      [v14 floatValue];
      v16 = v15;

      v17 = [v8 objectAtIndexedSubscript:0];
      if (v13 >= v16)
      {
        *&v18 = v13;
      }

      else
      {
        *&v18 = v16;
      }

      v19 = [MEMORY[0x277CCABB0] numberWithFloat:v18];
      [v17 replaceObjectAtIndex:i withObject:v19];
    }

    v21 = [v8 copy];
    goto LABEL_14;
  }

  v22 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    [OU3DObject updateObjectEmbedding2d:v22];
  }

LABEL_15:
}

- (void)updateObjectEmbedding3d:(id)embedding3d
{
  embedding3dCopy = embedding3d;
  if (-[NSArray count](self->embedding3d, "count") && (v5 = -[NSArray count](self->embedding3d, "count"), v5 != [embedding3dCopy count]))
  {
    v8 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [OU3DObject updateObjectEmbedding3d:v8];
    }
  }

  else
  {
    v6 = [embedding3dCopy mutableCopy];
    embedding3d = self->embedding3d;
    self->embedding3d = v6;
  }
}

- (int)getFrameIndexOfLastRefine
{
  v19 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_refined_box_history count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    reverseObjectEnumerator = [(NSMutableArray *)self->_refined_box_history reverseObjectEnumerator];
    v4 = [reverseObjectEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v4)
    {
      v5 = *v15;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v15 != v5)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v7 = *(*(&v14 + 1) + 8 * i);
          refinedBox = [v7 refinedBox];
          if (refinedBox)
          {
            refinedBox2 = [v7 refinedBox];
            v10 = [refinedBox2 count] == 8;

            if (v10)
            {
              frameIndex = [v7 frameIndex];
              goto LABEL_14;
            }
          }
        }

        v4 = [reverseObjectEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    frameIndex = -1;
LABEL_14:
  }

  else
  {
    frameIndex = -1;
  }

  v12 = *MEMORY[0x277D85DE8];
  return frameIndex;
}

- (void)removeBoxesDict:(id)dict
{
  dictCopy = dict;
  v4 = [(NSMutableDictionary *)self->_boxesDict objectForKey:?];

  if (v4)
  {
    [(NSMutableDictionary *)self->_boxesDict removeObjectForKey:dictCopy];
  }
}

- (void)clearGroupInfo:(id)info
{
  infoCopy = info;
  if (isValidGroupType(infoCopy))
  {
    [(NSMutableDictionary *)self->_groups setObject:0 forKeyedSubscript:infoCopy];
  }
}

@end