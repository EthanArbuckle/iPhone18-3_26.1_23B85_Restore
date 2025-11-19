@interface ML3DAAPImportOperation
- (BOOL)_importDAAPPayloadFromFile:(id)a3;
- (BOOL)_importDAAPPayloadFromFile:(id)a3 entityType:(int)a4;
- (BOOL)_preprocessDAAPPayloadFromFile:(id)a3 entityType:(int)a4;
- (BOOL)_processAlbumArtistFromArtistElement:(shared_ptr<ML3CPP::Element>)a3;
- (BOOL)_processAlbumCount:(int)a3;
- (BOOL)_processAlbumFromAlbumElement:(shared_ptr<ML3CPP::Element>)a3;
- (BOOL)_processAlbumFromTrackElement:(shared_ptr<ML3CPP:(shared_ptr<ML3DAAPImportItem>)a4 :(int64_t)a5 Element>)a3 importItem:albumArtistPersistentID:;
- (BOOL)_processArtistCount:(int)a3;
- (BOOL)_processArtistFromTrackElement:(shared_ptr<ML3CPP:(shared_ptr<ML3DAAPImportItem>)a4 :(int64_t *)a5 Element>)a3 importItem:albumArtistPersistentID:;
- (BOOL)_processContainerElement:(shared_ptr<ML3CPP:(vector<long)long :(std:()vector<std:(std::allocator<std::unordered_set<std::string>>> *)a5 :unordered_set<std::string> :allocator<long long>> *)a4 Element>)a3 withTrackIds:trackPersonIdentifiers:;
- (BOOL)_processContainerItemCount:(int)a3;
- (BOOL)_processDeletedAlbumId:(const void *)a3;
- (BOOL)_processDeletedArtistId:(const void *)a3;
- (BOOL)_processDeletedContainerId:(int64_t)a3;
- (BOOL)_processDeletedTrackId:(int64_t)a3;
- (BOOL)_processLibraryPinElement:(shared_ptr<ML3CPP::Element>)a3;
- (BOOL)_processMaxPinCount:(int)a3;
- (BOOL)_processPersonElement:(shared_ptr<ML3CPP::Element>)a3;
- (BOOL)_processPinCount:(int)a3;
- (BOOL)_processTrackElement:(shared_ptr<ML3CPP::Element>)a3;
- (BOOL)_processTrackImportItem:(shared_ptr<ML3DAAPImportItem>)a3;
- (BOOL)_processTrackItemCount:(int)a3;
- (BOOL)_startImportSessionIfNeeded;
- (BOOL)performImportOfSourceType:(int)a3 usingConnection:(id)a4;
- (id).cxx_construct;
- (shared_ptr<ML3DAAPDeleteImportItem>)albumArtistItemFromDeletedDAAPArtistEntity:(const void *)a3;
- (shared_ptr<ML3DAAPDeleteImportItem>)albumItemFromDeletedDAAPAlbumEntity:(const void *)a3;
- (shared_ptr<ML3DAAPImportItem>)_trackImportItemWithTrackElement:(shared_ptr<ML3CPP::Element>)a3;
- (shared_ptr<ML3DAAPImportItem>)albumArtistImportItemFromDAAPElement:(shared_ptr<ML3CPP::Element>)a3;
- (shared_ptr<ML3DAAPImportItem>)albumImportItemFromDAAPElement:(shared_ptr<ML3CPP::Element>)a3;
- (shared_ptr<ML3DAAPImportItem>)libraryPinImportItemFromDAAPElement:(shared_ptr<ML3CPP::Element>)a3;
- (void)_finishParsingWithError:(id)a3;
- (void)dealloc;
@end

@implementation ML3DAAPImportOperation

- (id).cxx_construct
{
  *(self + 39) = 0;
  *(self + 40) = 0;
  return self;
}

- (shared_ptr<ML3DAAPImportItem>)_trackImportItemWithTrackElement:(shared_ptr<ML3CPP::Element>)a3
{
  v3 = *(a3.var0 + 1);
  v6 = *a3.var0;
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [(ML3DAAPImportOperation *)self importItemFromDAAPElement:&v6, a3.var1];
  v5 = v7;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  result.var1 = v4;
  result.var0 = v5;
  return result;
}

- (BOOL)_processArtistFromTrackElement:(shared_ptr<ML3CPP:(shared_ptr<ML3DAAPImportItem>)a4 :(int64_t *)a5 Element>)a3 importItem:albumArtistPersistentID:
{
  var0 = a4.var0;
  var1 = a3.var1;
  v7 = a3.var0;
  v57 = *MEMORY[0x277D85DE8];
  if ([(ML3DAAPImportOperation *)self _startImportSessionIfNeeded:a3.var0])
  {
    if ((*(**var1 + 16))())
    {
      v9 = *(v7 + 1);
      v44 = *v7;
      v45 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      [(ML3DAAPImportOperation *)self artistImportItemFromDAAPTrackElement:&v44 artistEntityType:2];
      v11 = *buf;
      v10 = v51;
      *buf = 0;
      v51 = 0;
      if (v45)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v45);
      }

      if (self->_sourceType != 2)
      {
        v20 = *(v7 + 1);
        v42 = *v7;
        v43 = v20;
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        [(ML3DAAPImportOperation *)self artistImportItemFromDAAPTrackElement:&v42 artistEntityType:7];
        v22 = *buf;
        v21 = v51;
        *buf = 0;
        v51 = 0;
        if (v43)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v43);
        }

        if (v22)
        {
          importSession = self->_importSession;
          v41[0] = v22;
          v41[1] = v21;
          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v24 = *(var1 + 1);
          v40[0] = *var1;
          v40[1] = v24;
          if (v24)
          {
            atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v25 = ML3ImportSession::addAlbumArtist(importSession, v41, v40);
          if (v24)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v24);
          }

          if (v21)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v21);
          }

          if (!v25)
          {
            v17 = 0;
            if (!v21)
            {
              goto LABEL_66;
            }

            goto LABEL_65;
          }

          *var0 = *(v22 + 8);
        }

        v26 = v21;
        if (!v11)
        {
          goto LABEL_60;
        }

        goto LABEL_37;
      }

      v12 = self->_importSession;
      v14 = *var1;
      v13 = *(var1 + 1);
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        v15 = v12 + 8;
        if (v12[8] == 2)
        {
          v48 = v14;
          v49 = v13;
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
          goto LABEL_47;
        }
      }

      else
      {
        v15 = v12 + 8;
        if (v12[8] == 2)
        {
          v48 = *var1;
          v49 = 0;
LABEL_47:
          v29 = ML3ImportSession::_prepareTrackForImport(v12, &v48, 0, 0);
          v30 = v29;
          if (v13)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v13);
            if (!v30)
            {
              v46 = v14;
              v47 = v13;
              atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
              goto LABEL_78;
            }
          }

          else if (!v29)
          {
            v46 = v14;
            v47 = 0;
LABEL_78:
            ML3ImportSession::_prepareTrackSortData(v12, &v46);
          }

          v36 = os_log_create("com.apple.amp.medialibrary", "Import");
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            (*(*v14 + 88))(buf, v14);
            v37 = v52 >= 0 ? buf : *buf;
            v53 = 136446210;
            v54 = v37;
            _os_log_impl(&dword_22D2FA000, v36, OS_LOG_TYPE_ERROR, "Error augmenting albumArtist with track data=%{public}s", &v53, 0xCu);
            if (SHIBYTE(v52) < 0)
            {
              operator delete(*buf);
            }
          }

          v34 = 0;
          if (!v13)
          {
LABEL_58:
            if (!v34)
            {
              v17 = 0;
              goto LABEL_66;
            }

            v26 = 0;
            if (!v11)
            {
LABEL_60:
              v17 = 1;
              goto LABEL_61;
            }

LABEL_37:
            v27 = self->_importSession;
            v39[0] = v11;
            v39[1] = v10;
            if (v10)
            {
              atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v28 = *(var1 + 1);
            v38[0] = *var1;
            v38[1] = v28;
            if (v28)
            {
              atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v17 = ML3ImportSession::addItemArtist(v27, v39, v38);
            if (v28)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v28);
            }

            if (v10)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v10);
            }

LABEL_61:
            v21 = v26;
            if (!v26)
            {
LABEL_66:
              if (v10)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v10);
              }

              return v17;
            }

LABEL_65:
            std::__shared_weak_count::__release_shared[abi:ne200100](v21);
            goto LABEL_66;
          }

LABEL_57:
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
          goto LABEL_58;
        }
      }

      *(v12 + 1530) = 1;
      v31 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        (*(*v14 + 88))(buf, v14);
        v32 = v52 >= 0 ? buf : *buf;
        v33 = *v15;
        v53 = 136446466;
        v54 = v32;
        v55 = 1024;
        v56 = v33;
        _os_log_impl(&dword_22D2FA000, v31, OS_LOG_TYPE_ERROR, "not augmenting album artist with track data=%{public}s as it's not supported for source=%d", &v53, 0x12u);
        if (SHIBYTE(v52) < 0)
        {
          operator delete(*buf);
        }
      }

      v34 = 1;
      if (!v13)
      {
        goto LABEL_58;
      }

      goto LABEL_57;
    }

    v18 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      (*(**var1 + 88))(buf);
      v19 = v52 >= 0 ? buf : *buf;
      v53 = 136446210;
      v54 = v19;
      _os_log_impl(&dword_22D2FA000, v18, OS_LOG_TYPE_ERROR, "Not processing artist from invalid track element=%{public}s", &v53, 0xCu);
      if (SHIBYTE(v52) < 0)
      {
        operator delete(*buf);
      }
    }

    return 1;
  }

  else
  {
    v16 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v16, OS_LOG_TYPE_ERROR, "failed to start import session", buf, 2u);
    }

    return 0;
  }
}

- (BOOL)_processAlbumFromTrackElement:(shared_ptr<ML3CPP:(shared_ptr<ML3DAAPImportItem>)a4 :(int64_t)a5 Element>)a3 importItem:albumArtistPersistentID:
{
  var1 = a3.var1;
  var0 = a3.var0;
  v84 = *MEMORY[0x277D85DE8];
  if (![(ML3DAAPImportOperation *)self _startImportSessionIfNeeded:a3.var0])
  {
    v12 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v12, OS_LOG_TYPE_ERROR, "failed to start import session", buf, 2u);
    }

    return 0;
  }

  if (!(*(**var1 + 16))())
  {
    v14 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      (*(**var1 + 88))(buf);
      v15 = buf[23] >= 0 ? buf : *buf;
      LODWORD(v83.__r_.__value_.__l.__data_) = 136446210;
      *(v83.__r_.__value_.__r.__words + 4) = v15;
      _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_ERROR, "Not processing album from invalid track element=%{public}s", &v83, 0xCu);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    return 1;
  }

  if (self->_sourceType != 2)
  {
    v16 = *(var0 + 1);
    v67 = *var0;
    v68 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    [(ML3DAAPImportOperation *)self albumImportItemFromDAAPTrackElement:&v67];
    if (v68)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v68);
    }

    importSession = self->_importSession;
    v18 = *&buf[8];
    v66[0] = *buf;
    v66[1] = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
    }

    v19 = *var1;
    v20 = *(var1 + 1);
    v65[0] = v19;
    v65[1] = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = ML3ImportSession::addAlbum(importSession, v66, v65, 0);
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    v21 = *&buf[8];
    if (*&buf[8])
    {
      goto LABEL_53;
    }

    return v13;
  }

  v8 = self->_importSession;
  v10 = *var1;
  v9 = *(var1 + 1);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = v8 + 8;
    if (v8[8] == 2)
    {
      v80 = v10;
      v81 = v9;
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      goto LABEL_33;
    }

LABEL_43:
    *(v8 + 1530) = 1;
    v25 = os_log_create("com.apple.amp.medialibrary", "Import");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      (*(*v10 + 88))(buf, v10);
      v26 = buf[23] >= 0 ? buf : *buf;
      v27 = *v11;
      LODWORD(v83.__r_.__value_.__l.__data_) = 136446466;
      *(v83.__r_.__value_.__r.__words + 4) = v26;
      WORD2(v83.__r_.__value_.__r.__words[1]) = 1024;
      *(&v83.__r_.__value_.__r.__words[1] + 6) = v27;
      _os_log_impl(&dword_22D2FA000, v25, OS_LOG_TYPE_ERROR, "not augmenting album with track data=%{public}s as it's not supported for source=%d", &v83, 0x12u);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    goto LABEL_50;
  }

  v11 = v8 + 8;
  if (v8[8] != 2)
  {
    goto LABEL_43;
  }

  v80 = v10;
  v81 = 0;
LABEL_33:
  v22 = ML3ImportSession::_prepareTrackForImport(v8, &v80, 0, 0);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (!v22)
  {
    v79 = 0;
    (*(*v10 + 24))(buf, v10, 100663348);
    if ((buf[39] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v83, *&buf[16], *&buf[24]);
      *buf = &unk_28408AC60;
      if ((buf[39] & 0x80000000) != 0)
      {
        operator delete(*&buf[16]);
      }
    }

    else
    {
      v83 = *&buf[16];
    }

    v77 = 0;
    v78 = 0;
    v75 = v10;
    v76 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v29 = ML3ImportSession::_getAlbumGroupingIdentifierForImportItem(v8, &v77, &v75, 0);
    if (v76)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v76);
    }

    if (v78)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v78);
    }

    v30 = SHIBYTE(v83.__r_.__value_.__r.__words[2]);
    v64 = v29;
    if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v74, v83.__r_.__value_.__l.__data_, v83.__r_.__value_.__l.__size_);
    }

    else
    {
      v74 = v83;
    }

    ML3ImportSession::_getAlbumImportItemForGroupingIdentifierAndPIDs(buf, v8, v29, &v74, 0, 0, &v79);
    v32 = *buf;
    v31 = *&buf[8];
    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }

    if (!v32)
    {
      v38 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        (*(*v10 + 88))(&__p, v10);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        v40 = v83.__r_.__value_.__r.__words[0];
        if (v30 >= 0)
        {
          v40 = &v83;
        }

        *buf = 136446722;
        *&buf[4] = p_p;
        *&buf[12] = 2082;
        *&buf[14] = v40;
        *&buf[22] = 2048;
        *&buf[24] = v64;
        _os_log_impl(&dword_22D2FA000, v38, OS_LOG_TYPE_ERROR, "Could not locate album to augment with track data=%{public}s, cloudLibraryID=%{public}s, albumGroupingIdentifier=%p", buf, 0x20u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v41 = v10[1];
      ML3ImportSession::_getDefaultEmptyAlbum(&v71);
      v42 = v72;
      ML3ImportSession::_setAlbumInfoForTrackPersistentID(v8, v41, v71, v72);
      goto LABEL_146;
    }

    v34 = v33;
    v35 = 0;
    if (v33 && v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      v35 = v31;
    }

    v63 = v35;
    v62 = v33[1];
    if ((*(*v10 + 56))(v10, 167772185) && (v36 = (*(*v10 + 32))(v10, 167772185), v36 != (*(*v34 + 32))(v34, 285212679)))
    {
      *(v34[8] + 56) = (*(*v10 + 32))(v10, 167772185);
      v43 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = (*(*v10 + 32))(v10, 167772185);
        *buf = 134217984;
        *&buf[4] = v44;
        _os_log_impl(&dword_22D2FA000, v43, OS_LOG_TYPE_DEFAULT, "Augmenting user rating=%lld", buf, 0xCu);
      }

      v37 = 1;
    }

    else
    {
      v37 = 0;
    }

    if ((*(*v10 + 56))(v10, 167772186))
    {
      v45 = (*(*v10 + 32))(v10, 167772186);
      if (v45 != (*(*v34 + 32))(v34, 285212690))
      {
        *(v34[8] + 60) = (*(*v10 + 32))(v10, 167772186) != 0;
        v46 = os_log_create("com.apple.amp.medialibrary", "Import");
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          v47 = (*(*v10 + 32))(v10, 167772186);
          *buf = 134217984;
          *&buf[4] = v47;
          _os_log_impl(&dword_22D2FA000, v46, OS_LOG_TYPE_DEFAULT, "Augmenting user rating is derived=%lld", buf, 0xCu);
        }

        v37 = 1;
      }
    }

    if ((*(*v10 + 56))(v10, 100663323))
    {
      (*(*v10 + 24))(buf, v10, 100663323);
      if ((buf[39] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&__p, *&buf[16], *&buf[24]);
        *buf = &unk_28408AC60;
        if ((buf[39] & 0x80000000) != 0)
        {
          operator delete(*&buf[16]);
        }
      }

      else
      {
        __p = *&buf[16];
      }

      (*(*v34 + 24))(buf, v34, 285212682);
      if ((buf[39] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v70, *&buf[16], *&buf[24]);
        *buf = &unk_28408AC60;
        if ((buf[39] & 0x80000000) != 0)
        {
          operator delete(*&buf[16]);
        }
      }

      else
      {
        v70 = *&buf[16];
      }

      size = HIBYTE(v70.__r_.__value_.__r.__words[2]);
      v49 = SHIBYTE(v70.__r_.__value_.__r.__words[2]);
      if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v70.__r_.__value_.__l.__size_;
      }

      if (!size)
      {
        v50 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v50 = __p.__r_.__value_.__l.__size_;
        }

        if (v50)
        {
          (*(*v10 + 24))(buf, v10, 100663323);
          if ((buf[39] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(&__str, *&buf[16], *&buf[24]);
          }

          else
          {
            __str = *&buf[16];
          }

          std::string::operator=((v34 + 10), &__str);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          *buf = &unk_28408AC60;
          if ((buf[39] & 0x80000000) != 0)
          {
            operator delete(*&buf[16]);
          }

          v51 = _ML3LogCategoryImport();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            v52 = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v52 = __p.__r_.__value_.__r.__words[0];
            }

            *buf = 136446210;
            *&buf[4] = v52;
            _os_log_impl(&dword_22D2FA000, v51, OS_LOG_TYPE_DEFAULT, "Augmenting feedurl=%{public}s", buf, 0xCu);
          }

          v37 = 1;
        }
      }

      if (v49 < 0)
      {
        operator delete(v70.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if ((*(*v10 + 56))(v10, 33554438))
    {
      v53 = (*(*v10 + 32))(v10, 33554438);
      if (v53 > (*(*v34 + 32))(v34, 285212684))
      {
        *(v34[8] + 68) = (*(*v10 + 32))(v10, 33554438);
        v54 = os_log_create("com.apple.amp.medialibrary", "Import");
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          v55 = (*(*v10 + 32))(v10, 33554438);
          *buf = 134217984;
          *&buf[4] = v55;
          _os_log_impl(&dword_22D2FA000, v54, OS_LOG_TYPE_DEFAULT, "Augmenting album year=%lld", buf, 0xCu);
        }

        v37 = 1;
      }
    }

    v56 = (*(*v10 + 32))(v10, 16777217);
    if ((MLMediaTypeByStandardizingMediaType(v56) & 0x400) != 0 || (*(*v34 + 32))(v34, 285212676))
    {
      if (!v37)
      {
LABEL_142:
        v59 = v10[1];
        v60 = v34[8];
        v61 = v34[9];
        if (v61)
        {
          atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v42 = v63;
        ML3ImportSession::_setAlbumInfoForTrackPersistentID(v8, v59, v60, v61);
        if (v61)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v61);
        }

LABEL_146:
        if (v42)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v42);
        }

        if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v83.__r_.__value_.__l.__data_);
        }

        if (v31)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v31);
        }

LABEL_50:
        v13 = 1;
        goto LABEL_51;
      }
    }

    else
    {
      v34[15] = v10[1];
      v57 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        v58 = v10[1];
        *buf = 134217984;
        *&buf[4] = v58;
        _os_log_impl(&dword_22D2FA000, v57, OS_LOG_TYPE_DEFAULT, "Augmenting representative item pid=%lld", buf, 0xCu);
      }
    }

    if ((v79 & 1) == 0)
    {
      *buf = v62;
      *&buf[8] = v32;
      *&buf[16] = v31;
      if (v31)
      {
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<ML3ImportItem>>>>::__emplace_unique_key_args<long long,std::pair<long long const,std::shared_ptr<ML3ImportItem>>>(v8 + 282, v62);
      if (*&buf[16])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[16]);
      }
    }

    goto LABEL_142;
  }

  v23 = os_log_create("com.apple.amp.medialibrary", "Import");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    (*(*v10 + 88))(buf, v10);
    if (buf[23] >= 0)
    {
      v24 = buf;
    }

    else
    {
      v24 = *buf;
    }

    LODWORD(v83.__r_.__value_.__l.__data_) = 136446210;
    *(v83.__r_.__value_.__r.__words + 4) = v24;
    _os_log_impl(&dword_22D2FA000, v23, OS_LOG_TYPE_ERROR, "Error augmenting album with track data=%{public}s", &v83, 0xCu);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  v13 = 0;
LABEL_51:
  if (v9)
  {
    v21 = v9;
LABEL_53:
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  return v13;
}

- (BOOL)_processAlbumFromAlbumElement:(shared_ptr<ML3CPP::Element>)a3
{
  var0 = a3.var0;
  if ([(ML3DAAPImportOperation *)self _startImportSessionIfNeeded:a3.var0])
  {
    v5 = *(var0 + 1);
    v17 = *var0;
    v18 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    [(ML3DAAPImportOperation *)self albumImportItemFromDAAPElement:&v17];
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    if ((*(**buf + 16))(*buf))
    {
      importSession = self->_importSession;
      v7 = v20;
      v16[0] = *buf;
      v16[1] = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15[0] = 0;
      v15[1] = 0;
      v8 = ML3ImportSession::addAlbum(importSession, v16, v15, 0);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }

    else
    {
      v11 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_DEFAULT, "skipping invalid album", v14, 2u);
      }

      v8 = 1;
    }

    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }
  }

  else
  {
    v10 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_ERROR, "failed to start import session", buf, 2u);
    }

    v8 = 0;
  }

  v12 = self->_processedAlbumCount + 1;
  self->_processedAlbumCount = v12;
  *&v9 = (self->_processedTrackCount + self->_processedContainerCount + v12 + self->_processedArtistCount + self->_processedLibraryPinsCount) / (self->_totalContainerCount + self->_totalTrackCount + self->_totalAlbumCount + self->_totalArtistCount + self->_totalLibraryPinsCount);
  [(ML3DAAPImportOperation *)self updateImportProgress:v9];
  return v8;
}

- (BOOL)_processAlbumArtistFromArtistElement:(shared_ptr<ML3CPP::Element>)a3
{
  var0 = a3.var0;
  if ([(ML3DAAPImportOperation *)self _startImportSessionIfNeeded:a3.var0])
  {
    v5 = *(var0 + 1);
    v17 = *var0;
    v18 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    [(ML3DAAPImportOperation *)self albumArtistImportItemFromDAAPElement:&v17];
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    if ((*(**buf + 16))(*buf))
    {
      importSession = self->_importSession;
      v7 = v20;
      v16[0] = *buf;
      v16[1] = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15[0] = 0;
      v15[1] = 0;
      v8 = ML3ImportSession::addAlbumArtist(importSession, v16, v15);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }

    else
    {
      v11 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_DEFAULT, "skipping invalid album artist", v14, 2u);
      }

      v8 = 1;
    }

    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }
  }

  else
  {
    v10 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_ERROR, "failed to start import session", buf, 2u);
    }

    v8 = 0;
  }

  v12 = self->_processedArtistCount + 1;
  self->_processedArtistCount = v12;
  *&v9 = (self->_processedTrackCount + self->_processedContainerCount + v12 + self->_processedAlbumCount + self->_processedLibraryPinsCount) / (self->_totalContainerCount + self->_totalTrackCount + self->_totalAlbumCount + self->_totalArtistCount + self->_totalLibraryPinsCount);
  [(ML3DAAPImportOperation *)self updateImportProgress:v9];
  return v8;
}

- (BOOL)_processLibraryPinElement:(shared_ptr<ML3CPP::Element>)a3
{
  var0 = a3.var0;
  v24 = *MEMORY[0x277D85DE8];
  if ([(ML3DAAPImportOperation *)self _startImportSessionIfNeeded:a3.var0])
  {
    v5 = *(var0 + 1);
    v18 = *var0;
    v19 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    [(ML3DAAPImportOperation *)self libraryPinImportItemFromDAAPElement:&v18];
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    if ((*(*v20 + 16))(v20))
    {
      importSession = self->_importSession;
      v7 = v21;
      v17[0] = v20;
      v17[1] = v21;
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = ML3ImportSession::addLibraryPinnedEntity(importSession, v17);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }

    else
    {
      v11 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        (*(*v20 + 88))(__p);
        v12 = v16 >= 0 ? __p : __p[0];
        *buf = 136315138;
        v23 = v12;
        _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_DEFAULT, "skipping invalid library pin %s", buf, 0xCu);
        if (v16 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v8 = 1;
    }

    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }
  }

  else
  {
    v10 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_ERROR, "failed to start import session", __p, 2u);
    }

    v8 = 0;
  }

  v13 = self->_processedLibraryPinsCount + 1;
  self->_processedLibraryPinsCount = v13;
  *&v9 = (self->_processedTrackCount + self->_processedContainerCount + v13 + self->_processedAlbumCount + self->_processedArtistCount) / (self->_totalContainerCount + self->_totalTrackCount + self->_totalAlbumCount + self->_totalArtistCount + self->_totalLibraryPinsCount);
  [(ML3DAAPImportOperation *)self updateImportProgress:v9];
  return v8;
}

- (BOOL)_processMaxPinCount:(int)a3
{
  v30 = *MEMORY[0x277D85DE8];
  self->_maxLibraryPinsCount = a3;
  v4 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "no";
    totalTrackCount = self->_totalTrackCount;
    totalArtistCount = self->_totalArtistCount;
    if (self->_importSessionStarted)
    {
      v5 = "yes";
    }

    totalAlbumCount = self->_totalAlbumCount;
    totalContainerCount = self->_totalContainerCount;
    totalLibraryPinsCount = self->_totalLibraryPinsCount;
    maxLibraryPinsCount = self->_maxLibraryPinsCount;
    updateType = self->_updateType;
    v14 = 136316930;
    v15 = v5;
    v16 = 2048;
    v17 = totalTrackCount;
    v18 = 2048;
    v19 = totalArtistCount;
    v20 = 2048;
    v21 = totalAlbumCount;
    v22 = 2048;
    v23 = totalContainerCount;
    v24 = 2048;
    v25 = totalLibraryPinsCount;
    v26 = 2048;
    v27 = maxLibraryPinsCount;
    v28 = 1024;
    v29 = updateType;
    _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_DEFAULT, "updating entity counts for import session: sessionStarted=%s, %lld tracks, %lld artists, %lld albums, %lld containers, %lld pins, %lld maxPinCount for update type %d", &v14, 0x4Eu);
  }

  return 1;
}

- (BOOL)_processPinCount:(int)a3
{
  v30 = *MEMORY[0x277D85DE8];
  self->_totalLibraryPinsCount += a3;
  v4 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "no";
    totalTrackCount = self->_totalTrackCount;
    totalArtistCount = self->_totalArtistCount;
    if (self->_importSessionStarted)
    {
      v5 = "yes";
    }

    totalAlbumCount = self->_totalAlbumCount;
    totalContainerCount = self->_totalContainerCount;
    totalLibraryPinsCount = self->_totalLibraryPinsCount;
    maxLibraryPinsCount = self->_maxLibraryPinsCount;
    updateType = self->_updateType;
    v14 = 136316930;
    v15 = v5;
    v16 = 2048;
    v17 = totalTrackCount;
    v18 = 2048;
    v19 = totalArtistCount;
    v20 = 2048;
    v21 = totalAlbumCount;
    v22 = 2048;
    v23 = totalContainerCount;
    v24 = 2048;
    v25 = totalLibraryPinsCount;
    v26 = 2048;
    v27 = maxLibraryPinsCount;
    v28 = 1024;
    v29 = updateType;
    _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_DEFAULT, "updating entity counts for import session: sessionStarted=%s, %lld tracks, %lld artists, %lld albums, %lld containers, %lld pins, %lld maxPinCount for update type %d", &v14, 0x4Eu);
  }

  return 1;
}

- (BOOL)_processArtistCount:(int)a3
{
  v30 = *MEMORY[0x277D85DE8];
  self->_totalArtistCount += a3;
  v4 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "no";
    totalTrackCount = self->_totalTrackCount;
    totalArtistCount = self->_totalArtistCount;
    if (self->_importSessionStarted)
    {
      v5 = "yes";
    }

    totalAlbumCount = self->_totalAlbumCount;
    totalContainerCount = self->_totalContainerCount;
    totalLibraryPinsCount = self->_totalLibraryPinsCount;
    maxLibraryPinsCount = self->_maxLibraryPinsCount;
    updateType = self->_updateType;
    v14 = 136316930;
    v15 = v5;
    v16 = 2048;
    v17 = totalTrackCount;
    v18 = 2048;
    v19 = totalArtistCount;
    v20 = 2048;
    v21 = totalAlbumCount;
    v22 = 2048;
    v23 = totalContainerCount;
    v24 = 2048;
    v25 = totalLibraryPinsCount;
    v26 = 2048;
    v27 = maxLibraryPinsCount;
    v28 = 1024;
    v29 = updateType;
    _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_DEFAULT, "updating entity counts for import session: sessionStarted=%s, %lld tracks, %lld artists, %lld albums, %lld containers, %lld pins, %lld maxPinCount for update type %d", &v14, 0x4Eu);
  }

  return 1;
}

- (BOOL)_processAlbumCount:(int)a3
{
  v30 = *MEMORY[0x277D85DE8];
  self->_totalAlbumCount += a3;
  v4 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "no";
    totalTrackCount = self->_totalTrackCount;
    totalArtistCount = self->_totalArtistCount;
    if (self->_importSessionStarted)
    {
      v5 = "yes";
    }

    totalAlbumCount = self->_totalAlbumCount;
    totalContainerCount = self->_totalContainerCount;
    totalLibraryPinsCount = self->_totalLibraryPinsCount;
    maxLibraryPinsCount = self->_maxLibraryPinsCount;
    updateType = self->_updateType;
    v14 = 136316930;
    v15 = v5;
    v16 = 2048;
    v17 = totalTrackCount;
    v18 = 2048;
    v19 = totalArtistCount;
    v20 = 2048;
    v21 = totalAlbumCount;
    v22 = 2048;
    v23 = totalContainerCount;
    v24 = 2048;
    v25 = totalLibraryPinsCount;
    v26 = 2048;
    v27 = maxLibraryPinsCount;
    v28 = 1024;
    v29 = updateType;
    _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_DEFAULT, "updating entity counts for import session: sessionStarted=%s, %lld tracks, %lld artists, %lld albums, %lld containers, %lld pins, %lld maxPinCount for update type %d", &v14, 0x4Eu);
  }

  return 1;
}

- (BOOL)_startImportSessionIfNeeded
{
  v26 = *MEMORY[0x277D85DE8];
  if (self->_importSessionStarted)
  {
    return 1;
  }

  v4 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    totalTrackCount = self->_totalTrackCount;
    totalArtistCount = self->_totalArtistCount;
    totalAlbumCount = self->_totalAlbumCount;
    totalContainerCount = self->_totalContainerCount;
    totalLibraryPinsCount = self->_totalLibraryPinsCount;
    updateType = self->_updateType;
    clientInitiatedReset = self->_clientInitiatedReset;
    v12 = 134219520;
    v13 = totalTrackCount;
    v14 = 2048;
    v15 = totalArtistCount;
    v16 = 2048;
    v17 = totalAlbumCount;
    v18 = 2048;
    v19 = totalContainerCount;
    v20 = 2048;
    v21 = totalLibraryPinsCount;
    v22 = 1024;
    v23 = updateType;
    v24 = 1024;
    v25 = clientInitiatedReset;
    _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_DEFAULT, "starting import session with %lld tracks, %lld artists, %lld albums, %lld containers, %lld pins for update type %d, clientInitiatedReset=%d", &v12, 0x40u);
  }

  result = ML3ImportSession::begin(self->_importSession, LODWORD(self->_totalContainerCount) + LODWORD(self->_totalTrackCount) + LODWORD(self->_totalArtistCount) + LODWORD(self->_totalAlbumCount) + LODWORD(self->_totalLibraryPinsCount), self->_updateType == 0, self->_clientInitiatedReset);
  self->_importSessionStarted = 1;
  return result;
}

- (BOOL)_processDeletedArtistId:(const void *)a3
{
  v19 = *MEMORY[0x277D85DE8];
  if ([(ML3DAAPImportOperation *)self _startImportSessionIfNeeded])
  {
    [(ML3DAAPImportOperation *)self albumArtistItemFromDeletedDAAPArtistEntity:a3];
    if ((*(*v15 + 16))(v15))
    {
      importSession = self->_importSession;
      v6 = v16;
      v14[0] = v15;
      v14[1] = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v7 = ML3ImportSession::removeAlbumArtist(importSession, v14);
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }
    }

    else
    {
      v9 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        (*(*v15 + 88))(__p);
        v10 = v13 >= 0 ? __p : __p[0];
        *buf = 136446210;
        v18 = v10;
        _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_ERROR, "skip deleting invalid albumArtist=%{public}s", buf, 0xCu);
        if (v13 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v7 = 1;
    }

    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }

  else
  {
    v8 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_ERROR, "failed to start import session", __p, 2u);
    }

    return 0;
  }

  return v7;
}

- (BOOL)_processDeletedAlbumId:(const void *)a3
{
  v29 = *MEMORY[0x277D85DE8];
  if ([(ML3DAAPImportOperation *)self _startImportSessionIfNeeded])
  {
    [(ML3DAAPImportOperation *)self albumItemFromDeletedDAAPAlbumEntity:a3];
    if (!(*(*v20 + 16))())
    {
      v13 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        (*(*v20 + 88))(buf);
        v14 = v27 >= 0 ? buf : *buf;
        *v28 = 136446210;
        *&v28[4] = v14;
        _os_log_impl(&dword_22D2FA000, v13, OS_LOG_TYPE_ERROR, "skip deleting invalid album=%{public}s", v28, 0xCu);
        if (v27 < 0)
        {
          operator delete(*buf);
        }
      }

      v12 = 1;
      goto LABEL_46;
    }

    importSession = self->_importSession;
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (*(importSession + 8) == 2)
    {
      if (([importSession[261] count] || importSession[285]) && !ML3ImportSession::flush(importSession, 1))
      {
        v12 = 0;
        goto LABEL_44;
      }

      *v28 = v20;
      *&v28[8] = v21;
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      AlbumPersistentID = ML3ImportSession::_getAlbumPersistentID(importSession, v28, 0);
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      if (AlbumPersistentID)
      {
        v7 = importSession[287];
        v8 = [MEMORY[0x277CCABB0] numberWithLongLong:AlbumPersistentID];
        [v7 addObject:v8];

        ++*(importSession + 57);
        v9 = os_log_create("com.apple.amp.medialibrary", "Import");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [importSession[287] count];
          *buf = 134218240;
          *&buf[4] = AlbumPersistentID;
          v25 = 2048;
          v26 = v10;
          _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_DEFAULT, "removing albumPID=%lld, _deletedAlbums count=%ld", buf, 0x16u);
        }
      }

      else
      {
        v9 = os_log_create("com.apple.amp.medialibrary", "Import");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          (*(*v20 + 88))(buf);
          v18 = v27 >= 0 ? buf : *buf;
          *v22 = 136446210;
          v23 = v18;
          _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_DEFAULT, "not removing album=%{public}s", v22, 0xCu);
          if (v27 < 0)
          {
            operator delete(*buf);
          }
        }
      }

      if ([importSession[287] count] > 0x3E7 || importSession[285])
      {
        v12 = ML3ImportSession::flush(importSession, 1);
LABEL_44:
        if (v21)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        }

LABEL_46:
        if (v21)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        }

        return v12;
      }
    }

    else
    {
      *(importSession + 1530) = 1;
      v15 = os_log_create("com.apple.amp.medialibrary", "Import");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        (*(*v20 + 88))(buf);
        v16 = v27 >= 0 ? buf : *buf;
        v17 = *(importSession + 8);
        *v28 = 136446466;
        *&v28[4] = v16;
        *&v28[12] = 1024;
        *&v28[14] = v17;
        _os_log_impl(&dword_22D2FA000, v15, OS_LOG_TYPE_ERROR, "not removing album=%{public}s as it's not supported for source=%d", v28, 0x12u);
        if (v27 < 0)
        {
          operator delete(*buf);
        }
      }
    }

    v12 = 1;
    goto LABEL_44;
  }

  v11 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_ERROR, "failed to start import session", buf, 2u);
  }

  return 0;
}

- (BOOL)_processPersonElement:(shared_ptr<ML3CPP::Element>)a3
{
  var0 = a3.var0;
  v5 = [(ML3DAAPImportOperation *)self _startImportSessionIfNeeded:a3.var0];
  if (v5)
  {
    v6 = *(var0 + 1);
    v12 = *var0;
    v13 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    [(ML3DAAPImportOperation *)self personImportItemFromDAAPElement:&v12];
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    importSession = self->_importSession;
    v8 = *(&buf + 1);
    v11 = buf;
    if (*(&buf + 1))
    {
      atomic_fetch_add_explicit((*(&buf + 1) + 8), 1uLL, memory_order_relaxed);
    }

    ML3ImportSession::addPerson(importSession, &v11);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    if (*(&buf + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&buf + 1));
    }
  }

  else
  {
    v9 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_ERROR, "failed to start import session", &buf, 2u);
    }
  }

  return v5;
}

- (BOOL)_processDeletedContainerId:(int64_t)a3
{
  if ([(ML3DAAPImportOperation *)self _startImportSessionIfNeeded])
  {
    operator new();
  }

  v3 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_ERROR, "failed to start import session", buf, 2u);
  }

  return 0;
}

- (BOOL)_processContainerElement:(shared_ptr<ML3CPP:(vector<long)long :(std:()vector<std:(std::allocator<std::unordered_set<std::string>>> *)a5 :unordered_set<std::string> :allocator<long long>> *)a4 Element>)a3 withTrackIds:trackPersonIdentifiers:
{
  var1 = a3.var1;
  var0 = a3.var0;
  if ([(ML3DAAPImportOperation *)self _startImportSessionIfNeeded:a3.var0])
  {
    v9 = *(var0 + 1);
    v24 = *var0;
    v25 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    __p = 0;
    v22 = 0;
    v23 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&__p, *var1, *(var1 + 1), (*(var1 + 1) - *var1) >> 3);
    memset(v20, 0, sizeof(v20));
    std::vector<std::unordered_set<std::string>>::__init_with_size[abi:ne200100]<std::unordered_set<std::string>*,std::unordered_set<std::string>*>(v20, a4->__begin_, a4->__end_, 0xCCCCCCCCCCCCCCCDLL * (a4->__end_ - a4->__begin_));
    [(ML3DAAPImportOperation *)self containerImportItemFromDAAPElement:&v24 withTrackIds:&__p trackPersonIdentifiers:v20];
    *v28 = v20;
    std::vector<std::unordered_set<std::string>>::__destroy_vector::operator()[abi:ne200100](v28);
    if (__p)
    {
      v22 = __p;
      operator delete(__p);
    }

    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    if ((*(**buf + 16))(*buf))
    {
      importSession = self->_importSession;
      v11 = v27;
      v18 = *buf;
      v19 = v27;
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = ML3ImportSession::addContainer(importSession, &v18);
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }
    }

    else
    {
      v15 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *v28 = 0;
        _os_log_impl(&dword_22D2FA000, v15, OS_LOG_TYPE_DEFAULT, "skipping invalid container", v28, 2u);
      }

      v12 = 1;
    }

    v16 = self->_processedContainerCount + 1;
    self->_processedContainerCount = v16;
    *&v13 = (self->_processedTrackCount + self->_processedAlbumCount + v16 + self->_processedArtistCount + self->_processedLibraryPinsCount) / (self->_totalContainerCount + self->_totalTrackCount + self->_totalAlbumCount + self->_totalArtistCount + self->_totalLibraryPinsCount);
    [(ML3DAAPImportOperation *)self updateImportProgress:v13, v18, v19];
    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }
  }

  else
  {
    v14 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_ERROR, "failed to start import session", buf, 2u);
    }

    return 0;
  }

  return v12;
}

- (BOOL)_processContainerItemCount:(int)a3
{
  v30 = *MEMORY[0x277D85DE8];
  self->_totalContainerCount += a3;
  v4 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "no";
    totalTrackCount = self->_totalTrackCount;
    totalArtistCount = self->_totalArtistCount;
    if (self->_importSessionStarted)
    {
      v5 = "yes";
    }

    totalAlbumCount = self->_totalAlbumCount;
    totalContainerCount = self->_totalContainerCount;
    totalLibraryPinsCount = self->_totalLibraryPinsCount;
    maxLibraryPinsCount = self->_maxLibraryPinsCount;
    updateType = self->_updateType;
    v14 = 136316930;
    v15 = v5;
    v16 = 2048;
    v17 = totalTrackCount;
    v18 = 2048;
    v19 = totalArtistCount;
    v20 = 2048;
    v21 = totalAlbumCount;
    v22 = 2048;
    v23 = totalContainerCount;
    v24 = 2048;
    v25 = totalLibraryPinsCount;
    v26 = 2048;
    v27 = maxLibraryPinsCount;
    v28 = 1024;
    v29 = updateType;
    _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_DEFAULT, "updating entity counts for import session: sessionStarted=%s, %lld tracks, %lld artists, %lld albums, %lld containers, %lld pins, %lld maxPinCount for update type %d", &v14, 0x4Eu);
  }

  return 1;
}

- (BOOL)_processDeletedTrackId:(int64_t)a3
{
  if ([(ML3DAAPImportOperation *)self _startImportSessionIfNeeded])
  {
    operator new();
  }

  v3 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_22D2FA000, v3, OS_LOG_TYPE_ERROR, "failed to start import session", buf, 2u);
  }

  return 0;
}

- (BOOL)_processTrackImportItem:(shared_ptr<ML3DAAPImportItem>)a3
{
  var0 = a3.var0;
  if ([(ML3DAAPImportOperation *)self _startImportSessionIfNeeded:a3.var0])
  {
    if ((*(**var0 + 16))())
    {
      importSession = self->_importSession;
      v6 = *(var0 + 1);
      v13 = *var0;
      v14 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v7 = ML3ImportSession::addTrack(importSession, &v13, 1);
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }
    }

    else
    {
      v10 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_DEFAULT, "skipping invalid track", buf, 2u);
      }

      v7 = 1;
    }

    v11 = self->_processedTrackCount + 1;
    self->_processedTrackCount = v11;
    *&v8 = (self->_processedContainerCount + self->_processedAlbumCount + v11 + self->_processedArtistCount + self->_processedLibraryPinsCount) / (self->_totalContainerCount + self->_totalTrackCount + self->_totalAlbumCount + self->_totalArtistCount + self->_totalLibraryPinsCount);
    [(ML3DAAPImportOperation *)self updateImportProgress:v8, v13, v14];
  }

  else
  {
    v9 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_ERROR, "failed to start import session", buf, 2u);
    }

    return 0;
  }

  return v7;
}

- (BOOL)_processTrackElement:(shared_ptr<ML3CPP::Element>)a3
{
  var0 = a3.var0;
  if ([(ML3DAAPImportOperation *)self _startImportSessionIfNeeded:a3.var0])
  {
    v5 = *(var0 + 1);
    v16 = *var0;
    v17 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    [(ML3DAAPImportOperation *)self importItemFromDAAPElement:&v16];
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    if ((*(**buf + 16))(*buf))
    {
      importSession = self->_importSession;
      v7 = v19;
      v15[0] = *buf;
      v15[1] = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = ML3ImportSession::addTrack(importSession, v15, 0);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }

    else
    {
      v11 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_DEFAULT, "skipping invalid track", v14, 2u);
      }

      v8 = 1;
    }

    v12 = self->_processedTrackCount + 1;
    self->_processedTrackCount = v12;
    *&v9 = (self->_processedContainerCount + self->_processedAlbumCount + v12 + self->_processedArtistCount + self->_processedLibraryPinsCount) / (self->_totalContainerCount + self->_totalTrackCount + self->_totalAlbumCount + self->_totalArtistCount + self->_totalLibraryPinsCount);
    [(ML3DAAPImportOperation *)self updateImportProgress:v9];
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }
  }

  else
  {
    v10 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_ERROR, "failed to start import session", buf, 2u);
    }

    return 0;
  }

  return v8;
}

- (BOOL)_processTrackItemCount:(int)a3
{
  v30 = *MEMORY[0x277D85DE8];
  self->_totalTrackCount += a3;
  v4 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "no";
    totalTrackCount = self->_totalTrackCount;
    totalArtistCount = self->_totalArtistCount;
    if (self->_importSessionStarted)
    {
      v5 = "yes";
    }

    totalAlbumCount = self->_totalAlbumCount;
    totalContainerCount = self->_totalContainerCount;
    totalLibraryPinsCount = self->_totalLibraryPinsCount;
    maxLibraryPinsCount = self->_maxLibraryPinsCount;
    updateType = self->_updateType;
    v14 = 136316930;
    v15 = v5;
    v16 = 2048;
    v17 = totalTrackCount;
    v18 = 2048;
    v19 = totalArtistCount;
    v20 = 2048;
    v21 = totalAlbumCount;
    v22 = 2048;
    v23 = totalContainerCount;
    v24 = 2048;
    v25 = totalLibraryPinsCount;
    v26 = 2048;
    v27 = maxLibraryPinsCount;
    v28 = 1024;
    v29 = updateType;
    _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_DEFAULT, "updating entity counts for import session: sessionStarted=%s, %lld tracks, %lld artists, %lld albums, %lld containers, %lld pins, %lld maxPinCount for update type %d", &v14, 0x4Eu);
  }

  return 1;
}

- (void)_finishParsingWithError:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_DEFAULT, "parsing finished. error=%{public}@", &v7, 0xCu);
  }

  importError = self->_importError;
  self->_importError = v4;
}

- (BOOL)_importDAAPPayloadFromFile:(id)a3
{
  v4[72] = *MEMORY[0x277D85DE8];
  [a3 fileSystemRepresentation];
  std::ifstream::basic_ifstream(v4);
  operator new();
}

- (BOOL)_importDAAPPayloadFromFile:(id)a3 entityType:(int)a4
{
  v6[72] = *MEMORY[0x277D85DE8];
  v5 = a4;
  [a3 fileSystemRepresentation];
  std::ifstream::basic_ifstream(v6);
  operator new();
}

- (BOOL)_preprocessDAAPPayloadFromFile:(id)a3 entityType:(int)a4
{
  v6[72] = *MEMORY[0x277D85DE8];
  v5 = a4;
  [a3 fileSystemRepresentation];
  std::ifstream::basic_ifstream(v6);
  operator new();
}

- (shared_ptr<ML3DAAPDeleteImportItem>)albumItemFromDeletedDAAPAlbumEntity:(const void *)a3
{
  *v3 = 0;
  v3[1] = 0;
  result.var1 = a2;
  result.var0 = self;
  return result;
}

- (shared_ptr<ML3DAAPDeleteImportItem>)albumArtistItemFromDeletedDAAPArtistEntity:(const void *)a3
{
  *v3 = 0;
  v3[1] = 0;
  result.var1 = a2;
  result.var0 = self;
  return result;
}

- (shared_ptr<ML3DAAPImportItem>)libraryPinImportItemFromDAAPElement:(shared_ptr<ML3CPP::Element>)a3
{
  *v3 = 0;
  v3[1] = 0;
  result.var1 = a2;
  result.var0 = self;
  return result;
}

- (shared_ptr<ML3DAAPImportItem>)albumArtistImportItemFromDAAPElement:(shared_ptr<ML3CPP::Element>)a3
{
  *v3 = 0;
  v3[1] = 0;
  result.var1 = a2;
  result.var0 = self;
  return result;
}

- (shared_ptr<ML3DAAPImportItem>)albumImportItemFromDAAPElement:(shared_ptr<ML3CPP::Element>)a3
{
  *v3 = 0;
  v3[1] = 0;
  result.var1 = a2;
  result.var0 = self;
  return result;
}

- (BOOL)performImportOfSourceType:(int)a3 usingConnection:(id)a4
{
  v134 = *MEMORY[0x277D85DE8];
  v87 = a4;
  self->_sourceType = a3;
  self->_clientInitiatedReset = 0;
  self->_updateType = -1;
  v6 = [(ML3ImportOperation *)self import];
  v90 = v6;
  v88 = [v6 library];
  v99 = [MEMORY[0x277CCAA00] defaultManager];
  v100 = self;
  if (self->_sourceType != 2)
  {
    v18 = 0;
    v91 = 0;
    v92 = 0;
    v93 = 0;
    v95 = 0;
    v97 = 0;
    goto LABEL_8;
  }

  v7 = [(ML3ImportOperation *)self import];
  self->_clientInitiatedReset = [v7 clientInitiatedReset];

  v8 = [v6 albumData];
  v9 = [v8 length];

  if (!v9)
  {
    v49 = 0;
LABEL_49:
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v92 = v49;
    v50 = [v92 countByEnumeratingWithState:&v120 objects:v133 count:16];
    if (v50)
    {
      v97 = 0;
      v51 = *v121;
      do
      {
        for (i = 0; i != v50; ++i)
        {
          if (*v121 != v51)
          {
            objc_enumerationMutation(v92);
          }

          v53 = *(*(&v120 + 1) + 8 * i);
          v54 = [v99 attributesOfItemAtPath:v53 error:0];
          v55 = [v54 fileSize];

          v56 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            v130 = v55;
            v131 = 2114;
            v132 = v53;
            _os_log_impl(&dword_22D2FA000, v56, OS_LOG_TYPE_DEFAULT, "Importing %llu bytes of album data from: %{public}@", buf, 0x16u);
          }

          [(ML3DAAPImportOperation *)v100 _preprocessDAAPPayloadFromFile:v53 entityType:0];
          v97 |= v55 != 0;
        }

        v50 = [v92 countByEnumeratingWithState:&v120 objects:v133 count:16];
      }

      while (v50);
    }

    else
    {
      v97 = 0;
    }

    v57 = [v6 albumArtistData];
    v58 = [v57 length] == 0;

    if (v58)
    {
      v16 = 0;
    }

    else
    {
      v59 = MEMORY[0x277CCAC58];
      v60 = [v6 albumArtistData];
      v119 = 0;
      v16 = [v59 propertyListWithData:v60 options:0 format:0 error:&v119];
      v61 = v119;

      if (v61)
      {
        v62 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v130 = v61;
          _os_log_impl(&dword_22D2FA000, v62, OS_LOG_TYPE_DEFAULT, "Failed to deserialize artist data with error: %{public}@", buf, 0xCu);
        }

        v89 = 0;
        v14 = 0;
        v15 = 0;
        v17 = 0;
        goto LABEL_83;
      }
    }

    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v91 = v16;
    v63 = [v91 countByEnumeratingWithState:&v115 objects:v128 count:16];
    if (v63)
    {
      v95 = 0;
      v64 = *v116;
      do
      {
        for (j = 0; j != v63; ++j)
        {
          if (*v116 != v64)
          {
            objc_enumerationMutation(v91);
          }

          v66 = *(*(&v115 + 1) + 8 * j);
          v67 = [v99 attributesOfItemAtPath:v66 error:0];
          v68 = [v67 fileSize];

          v69 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            v130 = v68;
            v131 = 2114;
            v132 = v66;
            _os_log_impl(&dword_22D2FA000, v69, OS_LOG_TYPE_DEFAULT, "Importing %llu bytes of artist data from: %{public}@", buf, 0x16u);
          }

          [(ML3DAAPImportOperation *)v100 _preprocessDAAPPayloadFromFile:v66 entityType:1];
          v95 |= v68 != 0;
        }

        v63 = [v91 countByEnumeratingWithState:&v115 objects:v128 count:16];
      }

      while (v63);
    }

    else
    {
      v95 = 0;
    }

    v70 = [v6 libraryPinsData];
    v71 = [v70 length] == 0;

    if (v71)
    {
      v77 = 0;
    }

    else
    {
      v72 = MEMORY[0x277CCAC58];
      v73 = [v6 libraryPinsData];
      v114 = 0;
      v89 = [v72 propertyListWithData:v73 options:0 format:0 error:&v114];
      v74 = v114;

      if (v74)
      {
        v75 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v130 = v74;
          _os_log_impl(&dword_22D2FA000, v75, OS_LOG_TYPE_DEFAULT, "Failed to deserialize library pins data with error: %{public}@", buf, 0xCu);
        }

        v14 = 0;
        v15 = 0;
        v17 = 0;
LABEL_82:
        v16 = v91;
LABEL_83:
        v96 = v92;
        goto LABEL_84;
      }

      v77 = v89;
    }

    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v78 = v77;
    v18 = v78;
    v79 = [v78 countByEnumeratingWithState:&v110 objects:v127 count:16];
    if (v79)
    {
      v93 = 0;
      v80 = *v111;
      do
      {
        for (k = 0; k != v79; ++k)
        {
          if (*v111 != v80)
          {
            objc_enumerationMutation(v18);
          }

          v82 = *(*(&v110 + 1) + 8 * k);
          v83 = [v99 attributesOfItemAtPath:v82 error:0];
          v84 = [v83 fileSize];

          v85 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            v130 = v84;
            v131 = 2114;
            v132 = v82;
            _os_log_impl(&dword_22D2FA000, v85, OS_LOG_TYPE_DEFAULT, "Importing %llu bytes of library pins data from: %{public}@", buf, 0x16u);
          }

          [(ML3DAAPImportOperation *)v100 _preprocessDAAPPayloadFromFile:v82 entityType:4];
          v93 |= v84 != 0;
        }

        v78 = v18;
        v79 = [v18 countByEnumeratingWithState:&v110 objects:v127 count:16];
      }

      while (v79);
    }

    else
    {
      v93 = 0;
    }

LABEL_8:
    v19 = [v6 trackData];
    v89 = v18;
    v20 = [v19 length] == 0;

    if (v20)
    {
      v23 = 0;
      v86 = 1;
    }

    else
    {
      v21 = MEMORY[0x277CCAC58];
      v22 = [v6 trackData];
      v109 = 0;
      v23 = [v21 propertyListWithData:v22 options:0 format:0 error:&v109];
      v24 = v109;

      v86 = v24 == 0;
      if (v24)
      {
        v25 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v130 = v24;
          _os_log_impl(&dword_22D2FA000, v25, OS_LOG_TYPE_DEFAULT, "Failed to deserialize track data with error: %{public}@", buf, 0xCu);
        }
      }
    }

    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v26 = v23;
    v98 = v26;
    v27 = [v26 countByEnumeratingWithState:&v105 objects:v126 count:16];
    v28 = 0;
    if (v27)
    {
      v29 = *v106;
      do
      {
        for (m = 0; m != v27; ++m)
        {
          if (*v106 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v105 + 1) + 8 * m);
          v32 = [v99 attributesOfItemAtPath:v31 error:0];
          v33 = [v32 fileSize];

          v34 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            v130 = v33;
            v131 = 2114;
            v132 = v31;
            _os_log_impl(&dword_22D2FA000, v34, OS_LOG_TYPE_DEFAULT, "Importing %llu bytes of track data from: %{public}@", buf, 0x16u);
          }

          [(ML3DAAPImportOperation *)v100 _preprocessDAAPPayloadFromFile:v31 entityType:2];
          v28 |= v33 != 0;
          v26 = v98;
        }

        v27 = [v98 countByEnumeratingWithState:&v105 objects:v126 count:16];
      }

      while (v27);
    }

    if (!v86 || ([v90 playlistData], v35 = objc_claimAutoreleasedReturnValue(), v36 = objc_msgSend(v35, "length") == 0, v35, v36))
    {
      v39 = 0;
    }

    else
    {
      v37 = MEMORY[0x277CCAC58];
      v38 = [v90 playlistData];
      v39 = [v37 propertyListWithData:v38 options:0 format:0 error:0];
    }

    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    obj = v39;
    v40 = 0;
    v41 = [obj countByEnumeratingWithState:&v101 objects:v125 count:16];
    if (v41)
    {
      v42 = *v102;
      do
      {
        for (n = 0; n != v41; ++n)
        {
          if (*v102 != v42)
          {
            objc_enumerationMutation(obj);
          }

          v44 = *(*(&v101 + 1) + 8 * n);
          if ([v98 containsObject:v44])
          {
            v45 = os_log_create("com.apple.amp.medialibrary", "Default");
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v130 = v44;
              _os_log_impl(&dword_22D2FA000, v45, OS_LOG_TYPE_DEFAULT, "Skipping playlist import file '%{public}@' because it was already processed", buf, 0xCu);
            }
          }

          else
          {
            v46 = [v99 attributesOfItemAtPath:v44 error:0];
            v47 = [v46 fileSize];

            v48 = os_log_create("com.apple.amp.medialibrary", "Default");
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              v130 = v47;
              v131 = 2114;
              v132 = v44;
              _os_log_impl(&dword_22D2FA000, v48, OS_LOG_TYPE_DEFAULT, "Importing %llu bytes of playlist data from: %{public}@", buf, 0x16u);
            }

            [(ML3DAAPImportOperation *)v100 _preprocessDAAPPayloadFromFile:v44 entityType:3];
            v40 |= v47 != 0;
          }
        }

        v41 = [obj countByEnumeratingWithState:&v101 objects:v125 count:16];
      }

      while (v41);
    }

    if (v86)
    {
      if ((v28 | v40 | v97 | v95 | v93))
      {
        operator new();
      }

      v17 = 1;
      v14 = obj;
      v15 = v98;
    }

    else
    {
      v17 = 0;
      v14 = obj;
      v15 = v98;
    }

    goto LABEL_82;
  }

  v10 = MEMORY[0x277CCAC58];
  v11 = [v6 albumData];
  v124 = 0;
  v96 = [v10 propertyListWithData:v11 options:0 format:0 error:&v124];
  v12 = v124;

  if (!v12)
  {
    v49 = v96;
    goto LABEL_49;
  }

  v13 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v130 = v12;
    _os_log_impl(&dword_22D2FA000, v13, OS_LOG_TYPE_DEFAULT, "Failed to deserialize album data with error: %{public}@", buf, 0xCu);
  }

  v89 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
LABEL_84:

  return v17;
}

- (void)dealloc
{
  importSession = self->_importSession;
  if (importSession)
  {
    (*(*importSession + 8))(importSession, a2);
  }

  v4.receiver = self;
  v4.super_class = ML3DAAPImportOperation;
  [(ML3DAAPImportOperation *)&v4 dealloc];
}

@end