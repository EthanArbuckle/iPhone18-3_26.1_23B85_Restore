@interface ICDrawingCommandData
- ($0CEE44BE5CDCEEF763AA42CAC61E9EDC)baseValues;
- ($0CEE44BE5CDCEEF763AA42CAC61E9EDC)readPointFromArchive:(SEL)archive deltaFrom:(const void *)from;
- ($1AB5FA073B851C12C2339EC22442E995)parameters;
- ($1AB5FA073B851C12C2339EC22442E995)version1Parameters;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualDrawingCommandData:(id)data;
- (CGPoint)clipNormal;
- (CGPoint)clipOrigin;
- (CGRect)bounds;
- (ICDrawingCommandData)init;
- (ICDrawingCommandData)initWithArchive:(const void *)archive version:(unsigned int)version sortedUUIDs:(id)ds;
- (ICDrawingCommandID)commandID;
- (id).cxx_construct;
- (id)description;
- (unint64_t)hash;
- (unsigned)savePoint:(id *)point deltaFrom:(id *)from toArchive:(void *)archive;
- (unsigned)saveToArchive:(void *)archive sortedUUIDs:(id)ds withPathData:(BOOL)data isHidden:(BOOL)hidden;
- (void)dealloc;
- (void)invalidateBounds;
- (void)setBaseValues:(id *)values;
- (void)setCommandID:(ICDrawingCommandID *)d;
@end

@implementation ICDrawingCommandData

- (ICDrawingCommandData)init
{
  v4.receiver = self;
  v4.super_class = ICDrawingCommandData;
  result = [(ICDrawingCommandData *)&v4 init];
  if (result)
  {
    v3 = *MEMORY[0x277CBF398];
    result->_cachedBounds.size = *(MEMORY[0x277CBF398] + 16);
    result->_cachedBounds.origin = v3;
  }

  return result;
}

- (void)dealloc
{
  CGColorRelease(self->_color);
  self->_color = 0;
  v3.receiver = self;
  v3.super_class = ICDrawingCommandData;
  [(ICDrawingCommandData *)&v3 dealloc];
}

- (BOOL)isEqualDrawingCommandData:(id)data
{
  dataCopy = data;
  [(ICDrawingCommandData *)self commandID];
  if (dataCopy)
  {
    [dataCopy commandID];
    v5 = v8;
  }

  else
  {
    v5 = 0;
    v9 = 0;
    v10 = 0;
  }

  if (v11 == v5 && v13 == v10)
  {
    v6 = [v12 isEqual:v9];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ICDrawingCommandData *)self isEqualDrawingCommandData:equalCopy];

  return v5;
}

- (unint64_t)hash
{
  [(ICDrawingCommandData *)self commandID];
  v3 = v10;
  [(ICDrawingCommandData *)self commandID];
  v4 = v9;
  [(ICDrawingCommandData *)self commandID];
  v5 = [v7 hash];

  return v5 ^ v3 ^ (v4 << 16);
}

- (void)invalidateBounds
{
  v2 = *MEMORY[0x277CBF398];
  self->_cachedBounds.size = *(MEMORY[0x277CBF398] + 16);
  self->_cachedBounds.origin = v2;
}

- (CGRect)bounds
{
  if (CGRectIsNull(self->_cachedBounds))
  {
    v3 = *MEMORY[0x277CBF398];
    v4 = *(MEMORY[0x277CBF398] + 8);
    v5 = *(MEMORY[0x277CBF398] + 16);
    v6 = *(MEMORY[0x277CBF398] + 24);
    begin = self->_points.__begin_;
    for (i = self->_points.__end_; begin != i; begin = (begin + 64))
    {
      if (*(begin + 6) >= 1.0)
      {
        v9 = *(begin + 6);
      }

      else
      {
        v9 = 1.0;
      }

      v10 = (*(begin + 2) + *(begin + 5)) * v9;
      v12.origin.x = *begin - v10 + -2.0;
      v12.origin.y = *(begin + 1) - v10 + -2.0;
      v12.size.width = v10 * 2.0 + 4.0;
      v12.size.height = v12.size.width;
      *&v3 = CGRectUnion(*&v3, v12);
    }

    result = CGRectIntegral(*&v3);
    self->_cachedBounds = result;
  }

  else
  {
    return self->_cachedBounds;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p type=%ld points=%ld>", v5, self, self->_type, (self->_points.__end_ - self->_points.__begin_) >> 6];

  return v6;
}

- ($0CEE44BE5CDCEEF763AA42CAC61E9EDC)baseValues
{
  v3 = *&self[2].var5;
  retstr->var0 = *&self[2].var3;
  *&retstr->var1 = v3;
  v4 = *&self[3].var1;
  *&retstr->var3 = self[3].var0;
  *&retstr->var5 = v4;
  return self;
}

- (void)setBaseValues:(id *)values
{
  var0 = values->var0;
  v4 = *&values->var1;
  v5 = *&values->var5;
  *&self->_baseValues.azimuth = *&values->var3;
  *&self->_baseValues.aspectRatio = v5;
  self->_baseValues.point = var0;
  *&self->_baseValues.radius = v4;
}

- ($1AB5FA073B851C12C2339EC22442E995)parameters
{
  baseAlpha = self->_parameters.baseAlpha;
  blendAlpha = self->_parameters.blendAlpha;
  targetMultiple = self->_parameters.targetMultiple;
  result.var2 = targetMultiple;
  result.var1 = blendAlpha;
  result.var0 = baseAlpha;
  return result;
}

- (CGPoint)clipOrigin
{
  x = self->_clipOrigin.x;
  y = self->_clipOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)clipNormal
{
  x = self->_clipNormal.x;
  y = self->_clipNormal.y;
  result.y = y;
  result.x = x;
  return result;
}

- (ICDrawingCommandID)commandID
{
  retstr->clock = self->_commandID.clock;
  result = self->_commandID.replicaUUID;
  retstr->replicaUUID = result;
  retstr->subclock = self->_commandID.subclock;
  return result;
}

- (void)setCommandID:(ICDrawingCommandID *)d
{
  self->_commandID.clock = d->clock;
  objc_storeStrong(&self->_commandID.replicaUUID, d->replicaUUID);
  self->_commandID.subclock = d->subclock;
  replicaUUID = d->replicaUUID;
}

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 7) = 0;
  *(self + 18) = 0;
  return self;
}

- (ICDrawingCommandData)initWithArchive:(const void *)archive version:(unsigned int)version sortedUUIDs:(id)ds
{
  dsCopy = ds;
  v8 = [(ICDrawingCommandData *)self init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_65;
  }

  v10 = [(ICDrawingCommandData *)v8 setType:*(archive + 32)];
  v11 = *(archive + 5);
  if (!v11)
  {
    v11 = *(drawing::Command::default_instance(v10) + 40);
  }

  v12 = [dsCopy objectAtIndexedSubscript:{*(v11 + 48), 0}];
  v13 = v12;
  v14 = *(archive + 5);
  if (v14)
  {
    v15 = *(v14 + 40);
  }

  else
  {
    v16 = drawing::Command::default_instance(v12);
    v14 = *(archive + 5);
    v15 = *(*(v16 + 5) + 40);
    if (!v14)
    {
      v14 = *(drawing::Command::default_instance(v16) + 40);
    }
  }

  v17 = *(v14 + 44);
  v77 = v15;
  v65 = v13;
  v78 = v65;
  v79 = v17;
  v18 = [(ICDrawingCommandData *)v9 setCommandID:&v77];
  if ((*(archive + 32) & 4) != 0)
  {
    v23 = *(archive + 6);
    if (v23)
    {
      v20 = v23[10];
      v21 = v23[11];
    }

    else
    {
      v25 = drawing::Command::default_instance(v18);
      v23 = *(archive + 6);
      v20 = *(*(v25 + 6) + 40);
      if (v23)
      {
        v24 = v23[12];
        v21 = v23[11];
        goto LABEL_15;
      }

      v63 = drawing::Command::default_instance(v25);
      v23 = *(archive + 6);
      v21 = *(*(v63 + 6) + 44);
      if (!v23)
      {
        v64 = drawing::Command::default_instance(v63);
        v23 = *(archive + 6);
        v24 = *(*(v64 + 6) + 48);
        if (!v23)
        {
          v23 = *(drawing::Command::default_instance(v64) + 48);
        }

        goto LABEL_15;
      }
    }

    v24 = v23[12];
LABEL_15:
    v22 = v24;
    v19 = v23[13];
    goto LABEL_16;
  }

  v19 = 1.0;
  v20 = 0.0;
  v21 = 0.0;
  v22 = 0.0;
LABEL_16:
  v26 = [(ICDrawingCommandData *)v9 setColor:CGColorCreateRGBA(v20, v21, v22, v19)];
  v27 = *(archive + 8);
  if ((v27 & 8) != 0)
  {
    v28 = *(archive + 7);
    if (!v28)
    {
      v28 = *(drawing::Command::default_instance(v26) + 56);
    }

    [(ICDrawingCommandData *)v9 readPointFromArchive:v28 deltaFrom:&ICDrawingOutputPointDefault];
    v69 = v73;
    v70 = v74;
    v71 = v75;
    v72 = v76;
    v26 = [(ICDrawingCommandData *)v9 setBaseValues:&v69];
    v27 = *(archive + 8);
  }

  if ((v27 & 0x200) != 0)
  {
    v30 = *(archive + 15);
    if (!v30)
    {
      v30 = *(drawing::Command::default_instance(v26) + 120);
    }

    v31 = *(v30 + 32);
    v32 = 0.0;
    v33 = 0.0;
    if (v31)
    {
      v33 = *(v30 + 40);
    }

    if ((v31 & 2) != 0)
    {
      v32 = *(v30 + 44);
    }

    v34 = 0.0;
    if ((v31 & 4) != 0)
    {
      v34 = *(v30 + 48);
    }

    v29 = [(ICDrawingCommandData *)v9 setParameters:v33, v32, v34];
  }

  else
  {
    [(ICDrawingCommandData *)v9 version1Parameters];
    v29 = [(ICDrawingCommandData *)v9 setParameters:?];
  }

  if ((*(archive + 32) & 0x80) != 0)
  {
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v35 = *(archive + 13);
    if (!v35)
    {
      v35 = *(drawing::Command::default_instance(v29) + 104);
    }

    [(ICDrawingCommandData *)v9 baseValues];
    v36 = [(ICDrawingCommandData *)v9 readPointFromArchive:v35 deltaFrom:v68];
    memset(v68, 0, sizeof(v68));
    v37 = *(archive + 14);
    if (!v37)
    {
      v37 = *(drawing::Command::default_instance(v36) + 112);
    }

    [(ICDrawingCommandData *)v9 baseValues];
    [(ICDrawingCommandData *)v9 readPointFromArchive:v37 deltaFrom:v67];
    [(ICDrawingCommandData *)v9 setIsClipped:1];
    [(ICDrawingCommandData *)v9 setClipOrigin:v69];
    [(ICDrawingCommandData *)v9 setClipNormal:v68[0]];
  }

  points = [(ICDrawingCommandData *)v9 points];
  v39 = *(archive + 18);
  if (v39)
  {
    v40 = points;
    points = std::vector<ICDrawingOutputPoint>::reserve(points, v39);
    v41 = *(archive + 18);
    if (v41)
    {
      for (i = 0; i != v41; ++i)
      {
        v43 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<drawing::Point>::TypeHandler>(archive + 64, i);
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        [(ICDrawingCommandData *)v9 baseValues];
        points = [(ICDrawingCommandData *)v9 readPointFromArchive:v43 deltaFrom:v68];
        v44 = *(v40 + 8);
        if (!version && i && *&v69 == *(v44 - 8) && *(&v69 + 1) == *(v44 - 7))
        {
          continue;
        }

        v46 = *(v40 + 16);
        if (v44 >= v46)
        {
          v51 = (v44 - *v40) >> 6;
          v52 = v51 + 1;
          if ((v51 + 1) >> 58)
          {
            std::vector<std::pair<minIdPathData,TopoSubstring *>>::__throw_length_error[abi:ne200100]();
          }

          v53 = v46 - *v40;
          if (v53 >> 5 > v52)
          {
            v52 = v53 >> 5;
          }

          if (v53 >= 0x7FFFFFFFFFFFFFC0)
          {
            v54 = 0x3FFFFFFFFFFFFFFLL;
          }

          else
          {
            v54 = v52;
          }

          if (v54)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<ICDrawingOutputPoint>>(v40, v54);
          }

          v55 = (v51 << 6);
          v56 = v69;
          v57 = v70;
          v58 = v72;
          v55[2] = v71;
          v55[3] = v58;
          *v55 = v56;
          v55[1] = v57;
          v50 = (v51 << 6) + 64;
          v59 = *(v40 + 8) - *v40;
          v60 = (v51 << 6) - v59;
          memcpy(v55 - v59, *v40, v59);
          points = *v40;
          *v40 = v60;
          *(v40 + 8) = v50;
          *(v40 + 16) = 0;
          if (points)
          {
            operator delete(points);
          }
        }

        else
        {
          v47 = v69;
          v48 = v70;
          v49 = v72;
          *(v44 + 2) = v71;
          *(v44 + 3) = v49;
          *v44 = v47;
          *(v44 + 1) = v48;
          v50 = (v44 + 8);
        }

        *(v40 + 8) = v50;
      }
    }
  }

  if ((*(archive + 32) & 0x40) != 0)
  {
    v61 = *(archive + 12);
    if (!v61)
    {
      v61 = *(drawing::Command::default_instance(points) + 96);
    }

    drawing::Rectangle::Rectangle(&v69, v61);
    v9->_cachedBounds.origin = vcvtq_f64_f32(*(&v71 + 8));
    v9->_cachedBounds.size = vcvtq_f64_f32(*&v72);
    drawing::Rectangle::~Rectangle(&v69);
  }

LABEL_65:
  return v9;
}

- ($1AB5FA073B851C12C2339EC22442E995)version1Parameters
{
  type = [(ICDrawingCommandData *)self type];
  if (type > 3)
  {
    v3 = 0.0;
    v4 = 0.97;
  }

  else
  {
    v3 = dbl_2150C0FD0[type];
    v4 = dbl_2150C0FF0[type];
  }

  v5 = 0.0;
  result.var2 = v5;
  result.var1 = v3;
  result.var0 = v4;
  return result;
}

- ($0CEE44BE5CDCEEF763AA42CAC61E9EDC)readPointFromArchive:(SEL)archive deltaFrom:(const void *)from
{
  v5 = *(from + 8);
  v6 = vdup_n_s32(v5);
  v7 = vceqz_s32(vand_s8(v6, 0x800000004));
  v8.i64[0] = v7.i32[0];
  v8.i64[1] = v7.i32[1];
  v9 = *&a5->var3;
  v10 = vbslq_s8(v8, *&a5->var1, vcvtq_f64_f32(*(from + 48)));
  v11 = vceqz_s32(vand_s8(v6, 0x200000001));
  v8.i64[0] = v11.i32[0];
  v8.i64[1] = v11.i32[1];
  retstr->var0 = vbicq_s8(vcvtq_f64_f32(*(from + 40)), v8);
  *&retstr->var1 = v10;
  v12 = vceqz_s32(vand_s8(v6, 0x2000000010));
  v8.i64[0] = v12.i32[0];
  v8.i64[1] = v12.i32[1];
  *&retstr->var3 = vbslq_s8(v8, v9, vcvtq_f64_f32(*(from + 56)));
  var5 = *(from + 16);
  if ((v5 & 0x40) == 0)
  {
    var5 = a5->var5;
  }

  retstr->var5 = var5;
  retstr->var6 = 0.0;
  return self;
}

- (unsigned)savePoint:(id *)point deltaFrom:(id *)from toArchive:(void *)archive
{
  if (point->var0.x != 0.0)
  {
    x = point->var0.x;
    *(archive + 8) |= 1u;
    *(archive + 10) = x;
  }

  y = point->var0.y;
  if (y != 0.0)
  {
    v7 = y;
    *(archive + 8) |= 2u;
    *(archive + 11) = v7;
  }

  var1 = point->var1;
  if (var1 != from->var1)
  {
    v9 = var1;
    *(archive + 8) |= 4u;
    *(archive + 12) = v9;
  }

  var2 = point->var2;
  if (var2 != from->var2)
  {
    v11 = var2;
    *(archive + 8) |= 8u;
    *(archive + 13) = v11;
  }

  var3 = point->var3;
  if (var3 != from->var3)
  {
    v13 = var3;
    *(archive + 8) |= 0x10u;
    *(archive + 14) = v13;
  }

  var4 = point->var4;
  if (var4 != from->var4)
  {
    v15 = var4;
    *(archive + 8) |= 0x20u;
    *(archive + 15) = v15;
  }

  var5 = point->var5;
  if (var5 == from->var5)
  {
    return 1;
  }

  v17 = var5;
  *(archive + 8) |= 0x40u;
  *(archive + 16) = v17;
  return 4;
}

- (unsigned)saveToArchive:(void *)archive sortedUUIDs:(id)ds withPathData:(BOOL)data isHidden:(BOOL)hidden
{
  dataCopy = data;
  dsCopy = ds;
  type = [(ICDrawingCommandData *)self type];
  *(archive + 8) |= 2u;
  *(archive + 32) = type;
  ColorSpace = CGColorGetColorSpace([(ICDrawingCommandData *)self color]);
  if (CGColorSpaceGetModel(ColorSpace) == kCGColorSpaceModelRGB)
  {
    Components = CGColorGetComponents([(ICDrawingCommandData *)self color]);
    *(archive + 8) |= 4u;
    v14 = *(archive + 6);
    if (!v14)
    {
      operator new();
    }

    v14[4].i32[0] |= 1u;
    *(archive + 8) |= 4u;
    v14[4].i32[0] |= 2u;
    v14[5] = vcvt_f32_f64(*Components);
    *(archive + 8) |= 4u;
    v15 = Components[1].f64[0];
    v14[4].i32[0] |= 4u;
    v14[6].f32[0] = v15;
    *(archive + 8) |= 4u;
    Alpha = CGColorGetAlpha([(ICDrawingCommandData *)self color]);
    v14[4].i32[0] |= 8u;
    v14[6].f32[1] = Alpha;
  }

  *(archive + 8) |= 1u;
  v17 = *(archive + 5);
  if (!v17)
  {
    operator new();
  }

  [(ICDrawingCommandData *)self commandID];
  v18 = v73;
  *(v17 + 32) |= 1u;
  *(v17 + 40) = v18;

  *(archive + 8) |= 1u;
  v19 = *(archive + 5);
  if (!v19)
  {
    operator new();
  }

  [(ICDrawingCommandData *)self commandID];
  v20 = v75;
  *(v19 + 32) |= 2u;
  *(v19 + 44) = v20;

  [(ICDrawingCommandData *)self commandID];
  v21 = [dsCopy indexOfObject:v74];

  *(archive + 8) |= 1u;
  v22 = *(archive + 5);
  if (!v22)
  {
    operator new();
  }

  *(v22 + 32) |= 4u;
  *(v22 + 48) = v21;
  if (hidden)
  {
    v23 = 1;
  }

  else
  {
    if (dataCopy)
    {
      points = [(ICDrawingCommandData *)self points];
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(archive + 64, (points[1] - *points) >> 6);
      v25 = points[1] - *points;
      if ((v25 & 0x3FFFFFFFC0) != 0)
      {
        v26 = 0;
        v27 = (v25 >> 6);
        do
        {
          v28 = *(archive + 19);
          v29 = *(archive + 18);
          if (v29 >= v28)
          {
            if (v28 == *(archive + 20))
            {
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve(archive + 64, v28 + 1);
            }

            google::protobuf::internal::GenericTypeHandler<drawing::Point>::New();
          }

          v30 = *(archive + 8);
          *(archive + 18) = v29 + 1;
          v31 = *(v30 + 8 * v29);
          v32 = *points;
          [(ICDrawingCommandData *)self baseValues];
          [(ICDrawingCommandData *)self savePoint:v32 + v26 deltaFrom:&v73 toArchive:v31];
          v26 += 64;
          --v27;
        }

        while (v27);
      }

      [(ICDrawingCommandData *)self baseValues];
      *(archive + 8) |= 8u;
      v33 = *(archive + 7);
      if (!v33)
      {
        operator new();
      }

      v34 = [(ICDrawingCommandData *)self savePoint:&v73 deltaFrom:&ICDrawingOutputPointDefault toArchive:v33];
      if (v34 <= 1)
      {
        v23 = 1;
      }

      else
      {
        v23 = v34;
      }

      if ([(ICDrawingCommandData *)self isClipped])
      {
        *(archive + 8) |= 0x80u;
        v35 = *(archive + 13);
        if (!v35)
        {
          operator new();
        }

        [(ICDrawingCommandData *)self clipOrigin];
        *&v36 = v36;
        *(v35 + 32) |= 1u;
        *(v35 + 40) = LODWORD(v36);
        *(archive + 8) |= 0x80u;
        v37 = *(archive + 13);
        if (!v37)
        {
          operator new();
        }

        [(ICDrawingCommandData *)self clipOrigin];
        v39 = v38;
        *(v37 + 32) |= 2u;
        *(v37 + 44) = v39;
        *(archive + 8) |= 0x100u;
        v40 = *(archive + 14);
        if (!v40)
        {
          operator new();
        }

        [(ICDrawingCommandData *)self clipNormal];
        *&v41 = v41;
        *(v40 + 32) |= 1u;
        *(v40 + 40) = LODWORD(v41);
        *(archive + 8) |= 0x100u;
        v42 = *(archive + 14);
        if (!v42)
        {
          operator new();
        }

        [(ICDrawingCommandData *)self clipNormal];
        v44 = v43;
        *(v42 + 32) |= 2u;
        *(v42 + 44) = v44;
      }
    }

    else
    {
      v23 = 1;
    }

    [(ICDrawingCommandData *)self bounds];
    x = v76.origin.x;
    y = v76.origin.y;
    width = v76.size.width;
    height = v76.size.height;
    if (!CGRectIsNull(v76))
    {
      *(archive + 8) |= 0x40u;
      v49 = *(archive + 12);
      if (!v49)
      {
        operator new();
      }

      v50 = x;
      v51 = *(v49 + 32);
      v52 = y;
      *(v49 + 40) = v50;
      *(v49 + 44) = v52;
      v53 = width;
      v54 = height;
      *(v49 + 32) = v51 | 0xF;
      *(v49 + 48) = v53;
      *(v49 + 52) = v54;
    }

    [(ICDrawingCommandData *)self baseValues];
    *(archive + 8) |= 8u;
    v55 = *(archive + 7);
    if (!v55)
    {
      operator new();
    }

    [(ICDrawingCommandData *)self savePoint:&v73 deltaFrom:&ICDrawingOutputPointDefault toArchive:v55];
    [(ICDrawingCommandData *)self version1Parameters];
    v57 = v56;
    v59 = v58;
    [(ICDrawingCommandData *)self parameters];
    if (vabdd_f64(v60, v57) >= 0.00999999978 || ([(ICDrawingCommandData *)self parameters], vabdd_f64(v61, v59) >= 0.00999999978) || ([(ICDrawingCommandData *)self parameters], v62 > 0.0))
    {
      *(archive + 8) |= 0x200u;
      v63 = *(archive + 15);
      if (!v63)
      {
        operator new();
      }

      [(ICDrawingCommandData *)self parameters];
      *&v64 = v64;
      *(v63 + 32) |= 1u;
      *(v63 + 40) = LODWORD(v64);
      [(ICDrawingCommandData *)self parameters];
      v66 = v65;
      *(v63 + 32) |= 2u;
      *(v63 + 44) = v66;
      [(ICDrawingCommandData *)self parameters];
      if (v67 <= 0.0)
      {
        v70 = v23 > 2;
        v71 = 2;
      }

      else
      {
        [(ICDrawingCommandData *)self parameters];
        v69 = v68;
        *(v63 + 32) |= 4u;
        *(v63 + 48) = v69;
        v70 = v23 > 3;
        v71 = 3;
      }

      if (!v70)
      {
        v23 = v71;
      }
    }
  }

  return v23;
}

@end