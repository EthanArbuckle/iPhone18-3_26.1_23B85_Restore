@interface MURouteSnapshotKey
- (BOOL)isEqual:(id)equal;
- (UIEdgeInsets)padding;
- (unint64_t)hash;
@end

@implementation MURouteSnapshotKey

- (UIEdgeInsets)padding
{
  top = self->_padding.top;
  left = self->_padding.left;
  bottom = self->_padding.bottom;
  right = self->_padding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_identifier hash];
  v4 = fabs(self->_width);
  v5 = floor(v4 + 0.5);
  v6 = (v4 - v5) * 1.84467441e19;
  v7 = 2654435761u * (v5 - trunc(v5 * 5.42101086e-20) * 1.84467441e19);
  v8 = v7 + v6;
  v9 = fabs(v6);
  if (v6 <= 0.0)
  {
    v8 = v7;
  }

  v10 = v7 - v9;
  if (v6 >= 0.0)
  {
    v10 = v8;
  }

  v11 = fabs(self->_height);
  v12 = floor(v11 + 0.5);
  v13 = (v11 - v12) * 1.84467441e19;
  v14 = v12 - trunc(v12 * 5.42101086e-20) * 1.84467441e19;
  v15 = 2654435761u * v14;
  v16 = v15 + v13;
  if (v13 <= 0.0)
  {
    v16 = 2654435761u * v14;
  }

  v17 = v15 - fabs(v13);
  if (v13 >= 0.0)
  {
    v17 = v16;
  }

  v18 = fabs(self->_scale);
  v19 = floor(v18 + 0.5);
  v20 = (v18 - v19) * 1.84467441e19;
  v21 = v19 - trunc(v19 * 5.42101086e-20) * 1.84467441e19;
  v22 = 2654435761u * v21;
  v23 = v22 + v20;
  if (v20 <= 0.0)
  {
    v23 = 2654435761u * v21;
  }

  v24 = v22 - fabs(v20);
  if (v20 >= 0.0)
  {
    v24 = v23;
  }

  return v10 ^ v3 ^ v17 ^ v24 ^ PBHashBytes() ^ (2654435761 * self->_darkMode);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifier = self->_identifier;
    v7 = *(v5 + 3);
    v8 = identifier;
    v11 = (!(v7 | v8) || (v9 = v8, v10 = [v7 isEqual:v8], v9, v7, v10)) && vabdd_f64(*(v5 + 4), self->_width) <= 2.22044605e-16 && vabdd_f64(*(v5 + 5), self->_height) <= 2.22044605e-16 && vabdd_f64(*(v5 + 6), self->_scale) <= 2.22044605e-16 && (vminv_u16(vcltz_s16(vshl_n_s16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v5 + 4), *&self->_padding.top), vceqq_f64(*(v5 + 5), *&self->_padding.bottom))), 0xFuLL))) & 1) != 0 && v5[16] == self->_darkMode;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end