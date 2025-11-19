@interface CLLocationGroup
+ (vector<std::string,)stringVectorFromNSArray:(id)a2;
+ (void)storeAverage:(id)a3 ofVertices:(id)a4;
- (BOOL)allowCellularDownload:(unint64_t)a3;
- (CLLocationGroup)init;
- (CLLocationGroup)initWithGroupId:(id)a3 locationIds:(id)a4 center:(id)a5 wifiOnlyDownloadLocIdxs:(const void *)a6 locationContext:(int64_t)a7 andTolerance:(double)a8;
- (basic_string<char,)getGroupId;
- (double)distance:(id)a3;
- (id).cxx_construct;
@end

@implementation CLLocationGroup

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 7) = 0;
  *(self + 8) = 0;
  *(self + 12) = 0;
  *(self + 11) = 0;
  *(self + 9) = 0;
  *(self + 10) = self + 88;
  return self;
}

+ (vector<std::string,)stringVectorFromNSArray:(id)a2
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a4;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  v39 = v5;
  v10 = objc_msgSend_count(v5, v6, v7, v8, v9);
  if (0xAAAAAAAAAAAAAAABLL * ((retstr->__cap_ - retstr->__begin_) >> 3) < v10)
  {
    if (v10 < 0xAAAAAAAAAAAAAABLL)
    {
      end = retstr->__end_;
      operator new();
    }

    sub_245A7B094();
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v12 = v39;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, v14, v15, v16, &v42, v46, 16);
  if (v17)
  {
    v18 = *v43;
    do
    {
      v19 = 0;
      v40 = v17;
      do
      {
        if (*v43 != v18)
        {
          objc_enumerationMutation(v12);
        }

        v20 = *(*(&v42 + 1) + 8 * v19);
        v21 = objc_autoreleasePoolPush();
        v22 = v20;
        v27 = objc_msgSend_UTF8String(v20, v23, v24, v25, v26);
        v28 = v27;
        v41 = v27;
        v29 = retstr->__end_;
        if (v29 >= retstr->__cap_)
        {
          v32 = sub_245A80B28(retstr, &v41);
        }

        else
        {
          v30 = strlen(v27);
          if (v30 >= 0x7FFFFFFFFFFFFFF8)
          {
            sub_245A3C1B4();
          }

          v31 = v30;
          if (v30 >= 0x17)
          {
            operator new();
          }

          v29[23] = v30;
          if (v30)
          {
            memmove(v29, v28, v30);
          }

          v29[v31] = 0;
          v32 = v29 + 24;
          v17 = v40;
        }

        retstr->__end_ = v32;
        objc_autoreleasePoolPop(v21);

        ++v19;
      }

      while (v17 != v19);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v33, v34, v35, v36, &v42, v46, 16);
    }

    while (v17);
  }

  v38 = *MEMORY[0x277D85DE8];
  return result;
}

- (basic_string<char,)getGroupId
{
  v7 = objc_msgSend_UTF8String(*(v1 + 16), v2, v3, v4, v5);
  result = strlen(v7);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_245A3C1B4();
  }

  v9 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(&retstr->__rep_.__l + 23) = result;
  if (result)
  {
    result = memmove(retstr, v7, result);
    v9->__rep_.__s.__data_[retstr] = 0;
  }

  else
  {
    retstr->__rep_.__s.__data_[0] = 0;
  }

  return result;
}

+ (void)storeAverage:(id)a3 ofVertices:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v11 = objc_msgSend_count(v6, v7, v8, v9, v10);
  if (v11)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v12 = v6;
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, v14, v15, v16, &v40, v44, 16);
    if (v18)
    {
      v22 = *v41;
      v23 = 0.0;
      v24 = 0.0;
      v25 = 0.0;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v41 != v22)
          {
            objc_enumerationMutation(v12);
          }

          v27 = *(*(&v40 + 1) + 8 * i);
          objc_msgSend_x(v27, v17, v19, v20, v21, v40);
          v29 = v28;
          objc_msgSend_y(v27, v30, v28, v31, v32);
          v34 = v33;
          objc_msgSend_z(v27, v35, v33, v36, v37);
          v23 = v23 + v29;
          v24 = v24 + v34;
          v25 = v25 + v19;
        }

        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v17, v19, v20, v21, &v40, v44, 16);
      }

      while (v18);
    }

    else
    {
      v23 = 0.0;
      v24 = 0.0;
      v25 = 0.0;
    }

    objc_msgSend_setFromX_y_z_(v5, v38, v23 / v11, v24 / v11, v25 / v11);
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (CLLocationGroup)initWithGroupId:(id)a3 locationIds:(id)a4 center:(id)a5 wifiOnlyDownloadLocIdxs:(const void *)a6 locationContext:(int64_t)a7 andTolerance:(double)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v59.receiver = self;
  v59.super_class = CLLocationGroup;
  v18 = [(CLLocationGroup *)&v59 init];
  v19 = v18;
  v20 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_groupId, a3);
    objc_msgSend_stringVectorFromNSArray_(CLLocationGroup, v21, v22, v23, v24, v16);
    p_begin = &v20->_locationIds.__begin_;
    begin = v20->_locationIds.__begin_;
    if (begin)
    {
      end = v20->_locationIds.__end_;
      v28 = v20->_locationIds.__begin_;
      if (end != begin)
      {
        do
        {
          v29 = *(end - 1);
          end -= 3;
          if (v29 < 0)
          {
            operator delete(*end);
          }
        }

        while (end != begin);
        v28 = *p_begin;
      }

      v20->_locationIds.__end_ = begin;
      operator delete(v28);
      *p_begin = 0;
      v20->_locationIds.__end_ = 0;
      v20->_locationIds.__cap_ = 0;
    }

    *&v20->_locationIds.__begin_ = v57;
    v20->_locationIds.__cap_ = v58;
    v30 = [ECEFCoordinate alloc];
    objc_msgSend_x(v17, v31, v32, v33, v34);
    v36 = v35;
    objc_msgSend_y(v17, v37, v35, v38, v39);
    v41 = v40;
    objc_msgSend_z(v17, v42, v40, v43, v44);
    v47 = objc_msgSend_initWithX_y_z_(v30, v45, v36, v41, v46);
    centerECEF = v20->_centerECEF;
    v20->_centerECEF = v47;

    v49 = [GeographicCoordinate alloc];
    v54 = objc_msgSend_initFromECEFCoordinate_(v49, v50, v51, v52, v53, v20->_centerECEF);
    centerLatLon = v20->_centerLatLon;
    v20->_centerLatLon = v54;

    v20->_tolerance = a8;
    if (&v19->_wifiOnlyDownloadLocIdxs != a6)
    {
      sub_245A32258(&v19->_wifiOnlyDownloadLocIdxs.__tree_.__begin_node_, *a6, a6 + 1);
    }

    v20->_locationContext = a7;
    operator new();
  }

  return 0;
}

- (CLLocationGroup)init
{
  v3 = objc_alloc_init(MEMORY[0x277CBEA60]);
  v4 = objc_alloc_init(ECEFCoordinate);
  v11[0] = 0;
  v11[1] = 0;
  v10 = v11;
  v8 = objc_msgSend_initWithGroupId_locationIds_center_wifiOnlyDownloadLocIdxs_locationContext_andTolerance_(self, v5, 0.0, v6, v7, &stru_2858A1A60, v3, v4, &v10, 0);
  sub_245A312EC(&v10, v11[0]);

  return v8;
}

- (double)distance:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_fromLatLonOrigin_andEcefOrigin_andEcefPoint_(ENUCoordinate, v5, v6, v7, v8, self->_centerLatLon, self->_centerECEF, v4);
  objc_msgSend_east(v9, v10, v11, v12, v13);
  v15 = v14;
  objc_msgSend_north(v9, v16, v14, v17, v18);
  v25[0] = v15;
  v25[1] = v19;
  ptr = self->vertices.__ptr_;
  if (*ptr == ptr[1])
  {
    v23 = ptr[3];
    v24 = ptr[4];
    if (v23 == v24)
    {
LABEL_6:
      v28 = &unk_2858A0110;
      v26.i64[0] = "/AppleInternal/Library/BuildRoots/4~B_wcugD8w_6gRz7HY0Av3w2R9xnn4s-x0-9me1Q/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/geometry/algorithms/detail/throw_on_empty_input.hpp";
      v26.i64[1] = "void boost::geometry::detail::throw_on_empty_input(const Geometry &) [Geometry = boost::geometry::model::polygon<boost::geometry::model::d2::point_xy<double>>]";
      v27 = 54;
      sub_245A7F67C(&v28, &v26);
    }

    while (*v23 == *(v23 + 1))
    {
      v23 += 3;
      if (v23 == v24)
      {
        goto LABEL_6;
      }
    }
  }

  v21 = sub_245A39D8C(v25, ptr);

  return v21;
}

- (BOOL)allowCellularDownload:(unint64_t)a3
{
  left = self->_wifiOnlyDownloadLocIdxs.__tree_.__end_node_.__left_;
  p_end_node = &self->_wifiOnlyDownloadLocIdxs.__tree_.__end_node_;
  v4 = left;
  if (!left)
  {
    goto LABEL_9;
  }

  v6 = p_end_node;
  do
  {
    v7 = *(v4 + 4);
    v8 = v7 >= a3;
    v9 = v7 < a3;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *(v4 + v9);
  }

  while (v4);
  if (v6 == p_end_node || v6[4].__left_ > a3)
  {
LABEL_9:
    v6 = p_end_node;
  }

  return v6 == p_end_node;
}

@end