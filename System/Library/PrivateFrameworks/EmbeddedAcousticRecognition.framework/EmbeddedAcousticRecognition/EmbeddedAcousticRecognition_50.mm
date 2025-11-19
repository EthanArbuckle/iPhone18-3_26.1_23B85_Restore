void sub_1B53DB2EC(_Unwind_Exception *a1)
{
  if (*(v1 - 137) < 0)
  {
    operator delete(*(v1 - 160));
  }

  if (*(v1 - 97) < 0)
  {
    operator delete(*(v1 - 120));
  }

  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InfoPropagate(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  memset(&v89, 0, sizeof(v89));
  v88 = 0;
  if (*(a1 + 80) >= 1)
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(&v76, "\n For batch ");
      kaldi::quasar::to_string<int>(&v88);
      if ((v75 & 0x80u) == 0)
      {
        v3 = v74;
      }

      else
      {
        v3 = v74[0];
      }

      if ((v75 & 0x80u) == 0)
      {
        v4 = v75;
      }

      else
      {
        v4 = v74[1];
      }

      v5 = std::string::append(&v76, v3, v4);
      v6 = *&v5->__r_.__value_.__l.__data_;
      v77.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
      *&v77.__r_.__value_.__l.__data_ = v6;
      v5->__r_.__value_.__l.__size_ = 0;
      v5->__r_.__value_.__r.__words[2] = 0;
      v5->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string[abi:ne200100]<0>(v72, ": ");
      if ((v73 & 0x80u) == 0)
      {
        v7 = v72;
      }

      else
      {
        v7 = v72[0];
      }

      if ((v73 & 0x80u) == 0)
      {
        v8 = v73;
      }

      else
      {
        v8 = v72[1];
      }

      v9 = std::string::append(&v77, v7, v8);
      v10 = *&v9->__r_.__value_.__l.__data_;
      v78.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
      *&v78.__r_.__value_.__l.__data_ = v10;
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string[abi:ne200100]<0>(v70, "\n  Gates values: ");
      if ((v71 & 0x80u) == 0)
      {
        v11 = v70;
      }

      else
      {
        v11 = v70[0];
      }

      if ((v71 & 0x80u) == 0)
      {
        v12 = v71;
      }

      else
      {
        v12 = v70[1];
      }

      v13 = std::string::append(&v78, v11, v12);
      v14 = *&v13->__r_.__value_.__l.__data_;
      v79.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
      *&v79.__r_.__value_.__l.__data_ = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(a1 + 248) + 48 * v88);
      if ((v69 & 0x80u) == 0)
      {
        v15 = v68;
      }

      else
      {
        v15 = v68[0];
      }

      if ((v69 & 0x80u) == 0)
      {
        v16 = v69;
      }

      else
      {
        v16 = v68[1];
      }

      v17 = std::string::append(&v79, v15, v16);
      v18 = *&v17->__r_.__value_.__l.__data_;
      v80.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
      *&v80.__r_.__value_.__l.__data_ = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string[abi:ne200100]<0>(v66, "\n  Cell values: ");
      if ((v67 & 0x80u) == 0)
      {
        v19 = v66;
      }

      else
      {
        v19 = v66[0];
      }

      if ((v67 & 0x80u) == 0)
      {
        v20 = v67;
      }

      else
      {
        v20 = v66[1];
      }

      v21 = std::string::append(&v80, v19, v20);
      v22 = *&v21->__r_.__value_.__l.__data_;
      v81.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
      *&v81.__r_.__value_.__l.__data_ = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(a1 + 272) + 48 * v88);
      if ((v65 & 0x80u) == 0)
      {
        v23 = v64;
      }

      else
      {
        v23 = v64[0];
      }

      if ((v65 & 0x80u) == 0)
      {
        v24 = v65;
      }

      else
      {
        v24 = v64[1];
      }

      v25 = std::string::append(&v81, v23, v24);
      v26 = *&v25->__r_.__value_.__l.__data_;
      v82.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
      *&v82.__r_.__value_.__l.__data_ = v26;
      v25->__r_.__value_.__l.__size_ = 0;
      v25->__r_.__value_.__r.__words[2] = 0;
      v25->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string[abi:ne200100]<0>(v62, "\n  Cell outputs: ");
      if ((v63 & 0x80u) == 0)
      {
        v27 = v62;
      }

      else
      {
        v27 = v62[0];
      }

      if ((v63 & 0x80u) == 0)
      {
        v28 = v63;
      }

      else
      {
        v28 = v62[1];
      }

      v29 = std::string::append(&v82, v27, v28);
      v30 = *&v29->__r_.__value_.__l.__data_;
      v83.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
      *&v83.__r_.__value_.__l.__data_ = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(a1 + 296) + 48 * v88);
      if ((v61 & 0x80u) == 0)
      {
        v31 = v60;
      }

      else
      {
        v31 = v60[0];
      }

      if ((v61 & 0x80u) == 0)
      {
        v32 = v61;
      }

      else
      {
        v32 = v60[1];
      }

      v33 = std::string::append(&v83, v31, v32);
      v34 = *&v33->__r_.__value_.__l.__data_;
      v84.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
      *&v84.__r_.__value_.__l.__data_ = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string[abi:ne200100]<0>(v58, "\n  Cell outputs gated: ");
      if ((v59 & 0x80u) == 0)
      {
        v35 = v58;
      }

      else
      {
        v35 = v58[0];
      }

      if ((v59 & 0x80u) == 0)
      {
        v36 = v59;
      }

      else
      {
        v36 = v58[1];
      }

      v37 = std::string::append(&v84, v35, v36);
      v38 = *&v37->__r_.__value_.__l.__data_;
      v85.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
      *&v85.__r_.__value_.__l.__data_ = v38;
      v37->__r_.__value_.__l.__size_ = 0;
      v37->__r_.__value_.__r.__words[2] = 0;
      v37->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(a1 + 320) + 48 * v88);
      if ((v57 & 0x80u) == 0)
      {
        v39 = __p;
      }

      else
      {
        v39 = __p[0];
      }

      if ((v57 & 0x80u) == 0)
      {
        v40 = v57;
      }

      else
      {
        v40 = __p[1];
      }

      v41 = std::string::append(&v85, v39, v40);
      v42 = *&v41->__r_.__value_.__l.__data_;
      v87 = v41->__r_.__value_.__r.__words[2];
      v86 = v42;
      v41->__r_.__value_.__l.__size_ = 0;
      v41->__r_.__value_.__r.__words[2] = 0;
      v41->__r_.__value_.__r.__words[0] = 0;
      if (v87 >= 0)
      {
        v43 = &v86;
      }

      else
      {
        v43 = v86;
      }

      if (v87 >= 0)
      {
        v44 = HIBYTE(v87);
      }

      else
      {
        v44 = *(&v86 + 1);
      }

      std::string::append(&v89, v43, v44);
      if (SHIBYTE(v87) < 0)
      {
        operator delete(v86);
      }

      if (v57 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v85.__r_.__value_.__l.__data_);
      }

      if (v59 < 0)
      {
        operator delete(v58[0]);
      }

      if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v84.__r_.__value_.__l.__data_);
      }

      if (v61 < 0)
      {
        operator delete(v60[0]);
      }

      if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v83.__r_.__value_.__l.__data_);
      }

      if (v63 < 0)
      {
        operator delete(v62[0]);
      }

      if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v82.__r_.__value_.__l.__data_);
      }

      if (v65 < 0)
      {
        operator delete(v64[0]);
      }

      if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v81.__r_.__value_.__l.__data_);
      }

      if (v67 < 0)
      {
        operator delete(v66[0]);
      }

      if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v80.__r_.__value_.__l.__data_);
      }

      if (v69 < 0)
      {
        operator delete(v68[0]);
      }

      if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v79.__r_.__value_.__l.__data_);
      }

      if (v71 < 0)
      {
        operator delete(v70[0]);
      }

      if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v78.__r_.__value_.__l.__data_);
      }

      if (v73 < 0)
      {
        operator delete(v72[0]);
      }

      if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v77.__r_.__value_.__l.__data_);
      }

      if (v75 < 0)
      {
        operator delete(v74[0]);
      }

      if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v76.__r_.__value_.__l.__data_);
      }

      if (*(a1 + 224) == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(&v85, "\n  Output values: ");
        kaldi::nnet1::MomentStatistics<float>(*(a1 + 344) + 48 * v88);
        if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v45 = &v84;
        }

        else
        {
          v45 = v84.__r_.__value_.__r.__words[0];
        }

        if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v84.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v84.__r_.__value_.__l.__size_;
        }

        v47 = std::string::append(&v85, v45, size);
        v48 = *&v47->__r_.__value_.__l.__data_;
        v87 = v47->__r_.__value_.__r.__words[2];
        v86 = v48;
        v47->__r_.__value_.__l.__size_ = 0;
        v47->__r_.__value_.__r.__words[2] = 0;
        v47->__r_.__value_.__r.__words[0] = 0;
        if (v87 >= 0)
        {
          v49 = &v86;
        }

        else
        {
          v49 = v86;
        }

        if (v87 >= 0)
        {
          v50 = HIBYTE(v87);
        }

        else
        {
          v50 = *(&v86 + 1);
        }

        std::string::append(&v89, v49, v50);
        if (SHIBYTE(v87) < 0)
        {
          operator delete(v86);
        }

        if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v84.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v85.__r_.__value_.__l.__data_);
        }
      }

      ++v88;
    }

    while (v88 < *(a1 + 80));
  }

  v51 = std::string::basic_string[abi:ne200100]<0>(&v86, "\n");
  if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v52 = &v89;
  }

  else
  {
    v52 = v89.__r_.__value_.__r.__words[0];
  }

  if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v53 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v53 = v89.__r_.__value_.__l.__size_;
  }

  v54 = std::string::insert(v51, 0, v52, v53);
  *a2 = *v54;
  v54->__r_.__value_.__l.__size_ = 0;
  v54->__r_.__value_.__r.__words[2] = 0;
  v54->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v87) < 0)
  {
    operator delete(v86);
  }

  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }
}

void sub_1B53DBBD0(_Unwind_Exception *a1)
{
  if (*(v1 - 137) < 0)
  {
    operator delete(*(v1 - 160));
  }

  if (*(v1 - 97) < 0)
  {
    operator delete(*(v1 - 120));
  }

  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InfoBackPropagate(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  memset(&v75, 0, sizeof(v75));
  v74 = 0;
  if (*(a1 + 80) >= 1)
  {
    do
    {
      std::string::basic_string[abi:ne200100]<0>(&v64, "\n For batch ");
      kaldi::quasar::to_string<int>(&v74);
      if ((v63 & 0x80u) == 0)
      {
        v3 = v62;
      }

      else
      {
        v3 = v62[0];
      }

      if ((v63 & 0x80u) == 0)
      {
        v4 = v63;
      }

      else
      {
        v4 = v62[1];
      }

      v5 = std::string::append(&v64, v3, v4);
      v6 = *&v5->__r_.__value_.__l.__data_;
      v65.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
      *&v65.__r_.__value_.__l.__data_ = v6;
      v5->__r_.__value_.__l.__size_ = 0;
      v5->__r_.__value_.__r.__words[2] = 0;
      v5->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string[abi:ne200100]<0>(v60, ": ");
      if ((v61 & 0x80u) == 0)
      {
        v7 = v60;
      }

      else
      {
        v7 = v60[0];
      }

      if ((v61 & 0x80u) == 0)
      {
        v8 = v61;
      }

      else
      {
        v8 = v60[1];
      }

      v9 = std::string::append(&v65, v7, v8);
      v10 = *&v9->__r_.__value_.__l.__data_;
      v66.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
      *&v66.__r_.__value_.__l.__data_ = v10;
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string[abi:ne200100]<0>(v58, "\n  Gates diff: ");
      if ((v59 & 0x80u) == 0)
      {
        v11 = v58;
      }

      else
      {
        v11 = v58[0];
      }

      if ((v59 & 0x80u) == 0)
      {
        v12 = v59;
      }

      else
      {
        v12 = v58[1];
      }

      v13 = std::string::append(&v66, v11, v12);
      v14 = *&v13->__r_.__value_.__l.__data_;
      v67.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
      *&v67.__r_.__value_.__l.__data_ = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(a1 + 440) + 48 * v74);
      if ((v57 & 0x80u) == 0)
      {
        v15 = v56;
      }

      else
      {
        v15 = v56[0];
      }

      if ((v57 & 0x80u) == 0)
      {
        v16 = v57;
      }

      else
      {
        v16 = v56[1];
      }

      v17 = std::string::append(&v67, v15, v16);
      v18 = *&v17->__r_.__value_.__l.__data_;
      v68.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
      *&v68.__r_.__value_.__l.__data_ = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string[abi:ne200100]<0>(v54, "\n  Cell diff: ");
      if ((v55 & 0x80u) == 0)
      {
        v19 = v54;
      }

      else
      {
        v19 = v54[0];
      }

      if ((v55 & 0x80u) == 0)
      {
        v20 = v55;
      }

      else
      {
        v20 = v54[1];
      }

      v21 = std::string::append(&v68, v19, v20);
      v22 = *&v21->__r_.__value_.__l.__data_;
      v69.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
      *&v69.__r_.__value_.__l.__data_ = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(a1 + 416) + 48 * v74);
      if ((v53 & 0x80u) == 0)
      {
        v23 = v52;
      }

      else
      {
        v23 = v52[0];
      }

      if ((v53 & 0x80u) == 0)
      {
        v24 = v53;
      }

      else
      {
        v24 = v52[1];
      }

      v25 = std::string::append(&v69, v23, v24);
      v26 = *&v25->__r_.__value_.__l.__data_;
      v70.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
      *&v70.__r_.__value_.__l.__data_ = v26;
      v25->__r_.__value_.__l.__size_ = 0;
      v25->__r_.__value_.__r.__words[2] = 0;
      v25->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string[abi:ne200100]<0>(v50, "\n  Cell out gated diff: ");
      if ((v51 & 0x80u) == 0)
      {
        v27 = v50;
      }

      else
      {
        v27 = v50[0];
      }

      if ((v51 & 0x80u) == 0)
      {
        v28 = v51;
      }

      else
      {
        v28 = v50[1];
      }

      v29 = std::string::append(&v70, v27, v28);
      v30 = *&v29->__r_.__value_.__l.__data_;
      v71.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
      *&v71.__r_.__value_.__l.__data_ = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(a1 + 392) + 48 * v74);
      if ((v49 & 0x80u) == 0)
      {
        v31 = __p;
      }

      else
      {
        v31 = __p[0];
      }

      if ((v49 & 0x80u) == 0)
      {
        v32 = v49;
      }

      else
      {
        v32 = __p[1];
      }

      v33 = std::string::append(&v71, v31, v32);
      v34 = *&v33->__r_.__value_.__l.__data_;
      v73 = v33->__r_.__value_.__r.__words[2];
      v72 = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      if (v73 >= 0)
      {
        v35 = &v72;
      }

      else
      {
        v35 = v72;
      }

      if (v73 >= 0)
      {
        v36 = HIBYTE(v73);
      }

      else
      {
        v36 = *(&v72 + 1);
      }

      std::string::append(&v75, v35, v36);
      if (SHIBYTE(v73) < 0)
      {
        operator delete(v72);
      }

      if (v49 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v71.__r_.__value_.__l.__data_);
      }

      if (v51 < 0)
      {
        operator delete(v50[0]);
      }

      if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v70.__r_.__value_.__l.__data_);
      }

      if (v53 < 0)
      {
        operator delete(v52[0]);
      }

      if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v69.__r_.__value_.__l.__data_);
      }

      if (v55 < 0)
      {
        operator delete(v54[0]);
      }

      if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v68.__r_.__value_.__l.__data_);
      }

      if (v57 < 0)
      {
        operator delete(v56[0]);
      }

      if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v67.__r_.__value_.__l.__data_);
      }

      if (v59 < 0)
      {
        operator delete(v58[0]);
      }

      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v66.__r_.__value_.__l.__data_);
      }

      if (v61 < 0)
      {
        operator delete(v60[0]);
      }

      if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v65.__r_.__value_.__l.__data_);
      }

      if (v63 < 0)
      {
        operator delete(v62[0]);
      }

      if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v64.__r_.__value_.__l.__data_);
      }

      if (*(a1 + 224) == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(&v71, "\n  Output diff: ");
        kaldi::nnet1::MomentStatistics<float>(*(a1 + 368) + 48 * v74);
        if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v37 = &v70;
        }

        else
        {
          v37 = v70.__r_.__value_.__r.__words[0];
        }

        if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v70.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v70.__r_.__value_.__l.__size_;
        }

        v39 = std::string::append(&v71, v37, size);
        v40 = *&v39->__r_.__value_.__l.__data_;
        v73 = v39->__r_.__value_.__r.__words[2];
        v72 = v40;
        v39->__r_.__value_.__l.__size_ = 0;
        v39->__r_.__value_.__r.__words[2] = 0;
        v39->__r_.__value_.__r.__words[0] = 0;
        if (v73 >= 0)
        {
          v41 = &v72;
        }

        else
        {
          v41 = v72;
        }

        if (v73 >= 0)
        {
          v42 = HIBYTE(v73);
        }

        else
        {
          v42 = *(&v72 + 1);
        }

        std::string::append(&v75, v41, v42);
        if (SHIBYTE(v73) < 0)
        {
          operator delete(v72);
        }

        if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v70.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v71.__r_.__value_.__l.__data_);
        }
      }

      ++v74;
    }

    while (v74 < *(a1 + 80));
  }

  v43 = std::string::basic_string[abi:ne200100]<0>(&v72, "\n");
  if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v44 = &v75;
  }

  else
  {
    v44 = v75.__r_.__value_.__r.__words[0];
  }

  if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v45 = HIBYTE(v75.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v45 = v75.__r_.__value_.__l.__size_;
  }

  v46 = std::string::insert(v43, 0, v44, v45);
  *a2 = *v46;
  v46->__r_.__value_.__l.__size_ = 0;
  v46->__r_.__value_.__r.__words[2] = 0;
  v46->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v73) < 0)
  {
    operator delete(v72);
  }

  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }
}

void sub_1B53DC3C4(_Unwind_Exception *a1)
{
  if (*(v1 - 137) < 0)
  {
    operator delete(*(v1 - 160));
  }

  if (*(v1 - 97) < 0)
  {
    operator delete(*(v1 - 120));
  }

  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = *(a2 + 20);
  v9 = *(a1 + 96);
  v133 = (v8 / v9);
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v164, 3);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v164, "Running forward propagation for batch size = ", 45);
    v11 = MEMORY[0x1B8C84C00](v10, v8);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", which contains ", 17);
    v13 = MEMORY[0x1B8C84C00](v12, v133);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " frames each from ", 18);
    v15 = MEMORY[0x1B8C84C00](v14, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " utterances.", 12);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v164);
  }

  v16 = *(a3 + 32);
  (*(*v7 + 88))(v7);
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::AllocateForwardBuffers(v7, a4, v8, v16);
  v17 = *(v7 + 104);
  if (*(v7 + 112) == v17 || *(v17 + 32 * a4 + 16) < 1)
  {
    v128 = 0;
  }

  else
  {
    v18 = (*(v7 + 128) + 48 * a4);
    v18[4] = v16;
    v128 = 1;
    kaldi::CuMatrix<float>::Resize(v18, v9, *(*(v7 + 8) + 48 * a4 + 16), 1, 0);
  }

  v19 = *(v7 + 248) + 48 * a4;
  v134 = *(v7 + 344) + 48 * a4;
  v20 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(v7);
  LODWORD(v21) = 1.0;
  kaldi::CuMatrixBase<float>::AddMatMat<short>(v19, a2, 111, v20, 112, v21, 0.0);
  v22 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Bias(v7);
  kaldi::CuMatrixBase<float>::AddVecToRows(v19, v22, 1.0, 1.0);
  if (v133 >= 1)
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v129 = v7 + 12;
    v131 = 4 * v9;
    v132 = v9;
    v127 = -v9;
    v136 = v9;
    v130 = v7;
    do
    {
      v26 = *(v19 + 24);
      v27 = *(v19 + 8) + 4 * (v26 * v23);
      v28 = *(v19 + 28) - v26 * v23;
      v29 = *(v19 + 32);
      DWORD2(v165) = *(v7 + 176);
      HIDWORD(v165) = v9;
      *&v166 = __PAIR64__(v28, v26);
      *(&v166 + 1) = v29;
      *&v165 = v27;
      v164.__locale_ = &unk_1F2CFA908;
      v30 = *(v19 + 8) + 4 * (v26 * v23) + 4 * DWORD2(v165);
      v31 = *(v19 + 28) - DWORD2(v165) - v26 * v23;
      *(&v162 + 1) = __PAIR64__(v9, DWORD2(v165));
      *&v163 = __PAIR64__(v31, v26);
      *(&v163 + 1) = v29;
      v161 = &unk_1F2CFA908;
      *&v162 = v30;
      v32 = *(v19 + 24);
      v33 = *(v19 + 8) + 4 * (v32 * v23) + 12 * DWORD2(v165);
      LODWORD(v30) = *(v19 + 28) - 3 * DWORD2(v165) - v32 * v23;
      v34 = *(v19 + 32);
      *(&v159 + 1) = __PAIR64__(v9, DWORD2(v165));
      *&v160 = __PAIR64__(v30, v32);
      *(&v160 + 1) = v34;
      v158 = &unk_1F2CFA908;
      *&v159 = v33;
      v35 = *(v7 + 272) + 48 * a4;
      LODWORD(v33) = *(v35 + 16);
      LODWORD(v34) = *(v35 + 24);
      v36 = *(v35 + 8) + 4 * v34 * v23;
      LODWORD(v29) = *(v35 + 28) - v34 * v23;
      v37 = *(v35 + 32);
      *(&v156 + 1) = __PAIR64__(v9, v33);
      *&v157 = __PAIR64__(v29, v34);
      *(&v157 + 1) = v37;
      v155 = &unk_1F2CFA908;
      *&v156 = v36;
      v154 = 0u;
      v153 = 0u;
      v152 = &unk_1F2CFA908;
      v151 = 0u;
      v150 = 0u;
      v149 = &unk_1F2CFA908;
      v135 = v25;
      if (v25)
      {
        if (v128)
        {
          v38 = a4;
          kaldi::CuMatrixBase<float>::SetZero(*(v7 + 128) + 48 * a4);
          v39 = *(v7 + 128) + 48 * a4;
          v40 = *(v39 + 8);
          v41 = *(v39 + 20);
          v42 = *(v39 + 24);
          v43 = *(v39 + 28);
          v44 = *(v39 + 32);
          DWORD2(v147) = *(v7 + 176);
          *&v150 = v40;
          *(&v150 + 1) = __PAIR64__(v41, DWORD2(v147));
          *&v151 = __PAIR64__(v43, v42);
          *(&v151 + 1) = v44;
          v146 = &unk_1F2CFA908;
          v148 = 0u;
          v147 = 0u;
          quasar::Bitmap::~Bitmap(&v146);
          v45 = *(v7 + 272) + 48 * a4;
          v46 = *(v45 + 16);
          v47 = *(v45 + 24);
          v48 = *(v45 + 8) + 4 * (v47 * (v127 + v23));
          v49 = *(v45 + 28) - v47 * (v127 + v23);
          v50 = *(v45 + 32);
          *(&v147 + 1) = __PAIR64__(v9, v46);
          *&v148 = __PAIR64__(v49, v47);
          *(&v148 + 1) = v50;
          v146 = &unk_1F2CFA908;
          *&v147 = v48;
          v51 = *(v7 + 104) + 32 * a4;
          *(&v144 + 1) = 0;
          v143 = &unk_1F2CFCA48;
          *&v144 = *(v51 + 8) + v24;
          DWORD2(v144) = v9;
          *&v145 = *(v51 + 24);
          kaldi::CuMatrixBase<float>::CopySelectedRows(&v149, &v146, &v143, 1);
          v146 = &unk_1F2CFA908;
          v147 = 0u;
          v148 = 0u;
          quasar::Bitmap::~Bitmap(&v146);
          v52 = *(v7 + 128) + 48 * a4;
          v53 = *(v7 + 176);
          v54 = *(v52 + 20);
          v55 = *(v52 + 24);
          v56 = *(v52 + 8) + 4 * v53;
          LODWORD(v53) = *(v52 + 28) - v53;
          v57 = *(v52 + 32);
          DWORD2(v147) = *(v129 + *(*v7 - 24));
          *&v153 = v56;
          *(&v153 + 1) = __PAIR64__(v54, DWORD2(v147));
          *&v154 = __PAIR64__(v53, v55);
          *(&v154 + 1) = v57;
          v146 = &unk_1F2CFA908;
          v148 = 0u;
          v147 = 0u;
          quasar::Bitmap::~Bitmap(&v146);
          v58 = *(v134 + 24);
          v59 = *(v134 + 8) + 4 * (v58 * (v127 + v23));
          v60 = *(v134 + 28) - v58 * (v127 + v23);
          v61 = *(v134 + 32);
          DWORD2(v147) = *(v134 + 16);
          HIDWORD(v147) = v9;
          *&v148 = __PAIR64__(v60, v58);
          *(&v148 + 1) = v61;
          v146 = &unk_1F2CFA908;
          *&v147 = v59;
          v62 = *(v7 + 104) + 32 * a4;
          *(&v144 + 1) = 0;
          v143 = &unk_1F2CFCA48;
          *&v144 = *(v62 + 8) + v24;
          DWORD2(v144) = v9;
          *&v145 = *(v62 + 24);
          kaldi::CuMatrixBase<float>::CopySelectedRows(&v152, &v146, &v143, 1);
          v146 = &unk_1F2CFA908;
          v147 = 0u;
          v148 = 0u;
          quasar::Bitmap::~Bitmap(&v146);
          LODWORD(v9) = v136;
        }

        else
        {
          v75 = *(v134 + 16);
          v76 = *(v134 + 24);
          v77 = *(v134 + 28) - v76 * (v127 + v23);
          v78 = *(v134 + 32);
          *&v153 = *(v134 + 8) + 4 * (v76 * (v127 + v23));
          *(&v153 + 1) = __PAIR64__(v9, v75);
          *&v154 = __PAIR64__(v77, v76);
          *(&v154 + 1) = v78;
          v146 = &unk_1F2CFA908;
          v147 = 0uLL;
          v148 = 0uLL;
          quasar::Bitmap::~Bitmap(&v146);
          v38 = a4;
          v79 = *(v7 + 272) + 48 * a4;
          v80 = *(v79 + 16);
          v81 = *(v79 + 24);
          v82 = *(v79 + 8) + 4 * (v81 * (v127 + v23));
          v83 = *(v79 + 28) - v81 * (v127 + v23);
          v84 = *(v79 + 32);
          *&v150 = v82;
          *(&v150 + 1) = __PAIR64__(v9, v80);
          *&v151 = __PAIR64__(v83, v81);
          *(&v151 + 1) = v84;
          v146 = &unk_1F2CFA908;
          v148 = 0u;
          v147 = 0u;
          quasar::Bitmap::~Bitmap(&v146);
        }
      }

      else
      {
        v63 = *(v7 + 8) + 48 * a4;
        v64 = *(v63 + 20);
        v65 = *(v63 + 24);
        v66 = *(v63 + 8) + 4 * DWORD2(v165);
        v67 = *(v63 + 28) - DWORD2(v165);
        v68 = *(v63 + 32);
        DWORD2(v147) = *(v129 + *(*v7 - 24));
        *&v153 = v66;
        *(&v153 + 1) = __PAIR64__(v64, DWORD2(v147));
        *&v154 = __PAIR64__(v67, v65);
        *(&v154 + 1) = v68;
        v146 = &unk_1F2CFA908;
        v148 = 0uLL;
        v147 = 0uLL;
        quasar::Bitmap::~Bitmap(&v146);
        v69 = *(v7 + 8) + 48 * a4;
        v70 = *(v69 + 8);
        v71 = *(v69 + 20);
        v72 = *(v69 + 24);
        v73 = *(v69 + 28);
        v74 = *(v69 + 32);
        DWORD2(v147) = *(v7 + 176);
        *&v150 = v70;
        *(&v150 + 1) = __PAIR64__(v71, DWORD2(v147));
        *&v151 = __PAIR64__(v73, v72);
        *(&v151 + 1) = v74;
        v146 = &unk_1F2CFA908;
        v148 = 0u;
        v147 = 0u;
        quasar::Bitmap::~Bitmap(&v146);
        v38 = a4;
      }

      v85 = *(v19 + 24);
      v86 = *(v19 + 8) + 4 * (v85 * v23);
      v87 = *(v19 + 28) - v85 * v23;
      v88 = *(v19 + 32);
      DWORD2(v147) = *(v19 + 16);
      HIDWORD(v147) = v9;
      *&v148 = __PAIR64__(v87, v85);
      *(&v148 + 1) = v88;
      v146 = &unk_1F2CFA908;
      *&v147 = v86;
      v89 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(v7);
      LODWORD(v90) = 1.0;
      kaldi::CuMatrixBase<float>::AddMatMat<short>(&v146, &v152, 111, v89, 112, v90, 1.0);
      v146 = &unk_1F2CFA908;
      v147 = 0u;
      v148 = 0u;
      quasar::Bitmap::~Bitmap(&v146);
      if (*(v7 + 208) == 1)
      {
        v91 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(v7);
        v92 = *(v91 + 16);
        v93 = *(v91 + 32);
        *&v147 = *(v91 + 8);
        v146 = &unk_1F2CFCA48;
        *(&v147 + 1) = v92;
        *&v148 = v93;
        LODWORD(v94) = 1.0;
        kaldi::CuMatrixBase<float>::AddMatDiagVec(&v164, &v149, 111, &v146, v94, 1.0);
        v95 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(v7);
        v96 = *(v95 + 16);
        v97 = *(v95 + 32);
        *&v147 = *(v95 + 8) + 4 * *(v95 + 24);
        v146 = &unk_1F2CFCA48;
        *(&v147 + 1) = v96;
        *&v148 = v97;
        LODWORD(v98) = 1.0;
        kaldi::CuMatrixBase<float>::AddMatDiagVec(&v161, &v149, 111, &v146, v98, 1.0);
      }

      kaldi::CuMatrixBase<float>::Sigmoid(&v164, &v164);
      kaldi::CuMatrixBase<float>::Sigmoid(&v161, &v161);
      kaldi::CuMatrixBase<float>::ApplyTanh(&v158);
      kaldi::CuMatrixBase<float>::AddMatEwpMat(&v155, &v164, 111, &v158, 111, 1.0, 0.0);
      kaldi::CuMatrixBase<float>::AddMatEwpMat(&v155, &v161, 111, &v149, 111, 1.0, 1.0);
      v99 = *(v7 + 476);
      if (v99 > 0.0)
      {
        kaldi::CuMatrixBase<float>::ApplyCeiling(&v155, v99);
        kaldi::CuMatrixBase<float>::ApplyFloor(&v155, -*(v7 + 476));
      }

      v100 = *(v7 + 176);
      v101 = *(v19 + 24);
      v102 = *(v19 + 8) + 4 * (v101 * v23) + 8 * v100;
      v103 = *(v19 + 28) - (v101 * v23 + 2 * v100);
      v104 = *(v19 + 32);
      DWORD2(v147) = *(v7 + 176);
      HIDWORD(v147) = v9;
      *&v148 = __PAIR64__(v103, v101);
      *(&v148 + 1) = v104;
      v146 = &unk_1F2CFA908;
      *&v147 = v102;
      if (*(v7 + 208) == 1)
      {
        v105 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(v7);
        v106 = *(v105 + 16);
        v107 = *(v105 + 32);
        *&v144 = *(v105 + 8) + 8 * *(v105 + 24);
        v143 = &unk_1F2CFCA48;
        *(&v144 + 1) = v106;
        *&v145 = v107;
        LODWORD(v108) = 1.0;
        kaldi::CuMatrixBase<float>::AddMatDiagVec(&v146, &v155, 111, &v143, v108, 1.0);
      }

      kaldi::CuMatrixBase<float>::Sigmoid(&v146, &v146);
      v109 = *(v7 + 296) + 48 * v38;
      v110 = *(v109 + 16);
      v111 = *(v109 + 24);
      v112 = *(v109 + 8) + 4 * (v111 * v23);
      v113 = *(v109 + 28) - v111 * v23;
      v114 = *(v109 + 32);
      *(&v144 + 1) = __PAIR64__(v136, v110);
      *&v145 = __PAIR64__(v113, v111);
      *(&v145 + 1) = v114;
      v143 = &unk_1F2CFA908;
      *&v144 = v112;
      kaldi::CuMatrixBase<float>::Tanh(&v143, &v155);
      v115 = *(v7 + 320) + 48 * v38;
      v116 = *(v115 + 16);
      v117 = *(v115 + 24);
      v118 = *(v115 + 8) + 4 * (v117 * v23);
      v119 = *(v115 + 28) - v117 * v23;
      v120 = *(v115 + 32);
      *(&v141 + 1) = __PAIR64__(v136, v116);
      *&v142 = __PAIR64__(v119, v117);
      *(&v142 + 1) = v120;
      v140 = &unk_1F2CFA908;
      *&v141 = v118;
      kaldi::CuMatrixBase<float>::AddMatEwpMat(&v140, &v146, 111, &v143, 111, 1.0, 0.0);
      v121 = *(v134 + 24);
      v122 = *(v134 + 8) + 4 * (v121 * v23);
      v123 = *(v134 + 28) - v121 * v23;
      v124 = *(v134 + 32);
      if (*(v7 + 224) == 1)
      {
        DWORD2(v138) = *(v134 + 16);
        HIDWORD(v138) = v136;
        *&v139 = __PAIR64__(v123, v121);
        *(&v139 + 1) = v124;
        v137 = &unk_1F2CFA908;
        *&v138 = v122;
        v125 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(v7);
        LODWORD(v126) = 1.0;
        kaldi::CuMatrixBase<float>::AddMatMat<short>(&v137, &v140, 111, v125, 112, v126, 0.0);
      }

      else
      {
        DWORD2(v138) = *(v134 + 16);
        HIDWORD(v138) = v136;
        *&v139 = __PAIR64__(v123, v121);
        *(&v139 + 1) = v124;
        v137 = &unk_1F2CFA908;
        *&v138 = v122;
        kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v137, &v140, 111);
      }

      v137 = &unk_1F2CFA908;
      v138 = 0u;
      v139 = 0u;
      quasar::Bitmap::~Bitmap(&v137);
      v140 = &unk_1F2CFA908;
      v141 = 0u;
      v142 = 0u;
      quasar::Bitmap::~Bitmap(&v140);
      v143 = &unk_1F2CFA908;
      v144 = 0u;
      v145 = 0u;
      quasar::Bitmap::~Bitmap(&v143);
      v146 = &unk_1F2CFA908;
      v147 = 0u;
      v148 = 0u;
      quasar::Bitmap::~Bitmap(&v146);
      v149 = &unk_1F2CFA908;
      v150 = 0u;
      v151 = 0u;
      quasar::Bitmap::~Bitmap(&v149);
      v152 = &unk_1F2CFA908;
      v153 = 0u;
      v154 = 0u;
      quasar::Bitmap::~Bitmap(&v152);
      v155 = &unk_1F2CFA908;
      v156 = 0u;
      v157 = 0u;
      quasar::Bitmap::~Bitmap(&v155);
      v158 = &unk_1F2CFA908;
      v159 = 0u;
      v160 = 0u;
      quasar::Bitmap::~Bitmap(&v158);
      v161 = &unk_1F2CFA908;
      v162 = 0u;
      v163 = 0u;
      quasar::Bitmap::~Bitmap(&v161);
      v164.__locale_ = &unk_1F2CFA908;
      v165 = 0u;
      v166 = 0u;
      quasar::Bitmap::~Bitmap(&v164);
      v25 = v135 + 1;
      v24 += v131;
      v23 += v132;
      LODWORD(v9) = v136;
      v7 = v130;
    }

    while (v133 != v135 + 1);
  }

  kaldi::CuMatrixBase<float>::CopyFromMat<float>(a3, v134, 111);
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::SaveLastState(v7, a4);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::AllocateForwardBuffers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v11, 3);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Allocating forward buffers for batch ", 37);
    v9 = MEMORY[0x1B8C84C00](v8, a2);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "; batch size = ", 15);
    MEMORY[0x1B8C84C00](v10, a3);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v11);
  }

  kaldi::CuMatrix<float>::Resize((*(a1 + 248) + 48 * a2), a3, (4 * *(a1 + 176)), 0, 0);
  kaldi::CuMatrix<float>::Resize((*(a1 + 272) + 48 * a2), a3, *(a1 + 176), 0, 0);
  kaldi::CuMatrix<float>::Resize((*(a1 + 296) + 48 * a2), a3, *(a1 + 176), 0, 0);
  kaldi::CuMatrix<float>::Resize((*(a1 + 320) + 48 * a2), a3, *(a1 + 176), 0, 0);
  kaldi::CuMatrix<float>::Resize((*(a1 + 344) + 48 * a2), a3, *(a1 + *(*a1 - 24) + 12), 0, 0);
  *(*(a1 + 248) + 48 * a2 + 32) = a4;
  *(*(a1 + 272) + 48 * a2 + 32) = a4;
  *(*(a1 + 296) + 48 * a2 + 32) = a4;
  *(*(a1 + 320) + 48 * a2 + 32) = a4;
  *(*(a1 + 344) + 48 * a2 + 32) = a4;
}

void sub_1B53DD894(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::SaveLastState(uint64_t a1, uint64_t a2)
{
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v27, 3);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, "Saving last output and cell state for batch ", 44);
    MEMORY[0x1B8C84C00](v4, a2);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v27);
  }

  v5 = *(a1 + 272) + 48 * a2;
  v6 = *(a1 + 96);
  v7 = *(v5 + 20) - v6;
  v8 = *(a1 + 8) + 48 * a2;
  v9 = *(a1 + 176);
  v10 = *(v8 + 28);
  v11 = *(v8 + 32);
  v28[0] = *(v8 + 8);
  LODWORD(v28[1]) = v9;
  *(&v28[1] + 4) = *(v8 + 20);
  HIDWORD(v28[2]) = v10;
  v28[3] = v11;
  v27.__locale_ = &unk_1F2CFA908;
  LODWORD(v8) = *(v5 + 16);
  v12 = *(v5 + 24);
  v13 = *(v5 + 8) + 4 * (v12 * v7);
  v14 = *(v5 + 28) - v12 * v7;
  v15 = *(v5 + 32);
  *(&v25 + 1) = __PAIR64__(v6, v8);
  *&v26 = __PAIR64__(v14, v12);
  *(&v26 + 1) = v15;
  v24 = &unk_1F2CFA908;
  *&v25 = v13;
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v27, &v24, 111);
  v24 = &unk_1F2CFA908;
  v25 = 0u;
  v26 = 0u;
  quasar::Bitmap::~Bitmap(&v24);
  v27.__locale_ = &unk_1F2CFA908;
  memset(v28, 0, sizeof(v28));
  quasar::Bitmap::~Bitmap(&v27);
  v16 = *(a1 + 8) + 48 * a2;
  v17 = *(a1 + 176);
  v18 = *(a1 + *(*a1 - 24) + 12);
  v19 = *(v16 + 8) + 4 * v17;
  LODWORD(v17) = *(v16 + 28) - v17;
  v20 = *(v16 + 32);
  v28[0] = v19;
  LODWORD(v28[1]) = v18;
  *(&v28[1] + 4) = *(v16 + 20);
  HIDWORD(v28[2]) = v17;
  v28[3] = v20;
  v27.__locale_ = &unk_1F2CFA908;
  v21 = *(a1 + 344) + 48 * a2;
  LODWORD(v17) = *(v21 + 16);
  LODWORD(v19) = *(v21 + 24);
  v22 = *(v21 + 8) + 4 * (v19 * v7);
  LODWORD(v20) = *(v21 + 28) - v19 * v7;
  v23 = *(v21 + 32);
  *(&v25 + 1) = __PAIR64__(*(a1 + 96), v17);
  *&v26 = __PAIR64__(v20, v19);
  *(&v26 + 1) = v23;
  v24 = &unk_1F2CFA908;
  *&v25 = v22;
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v27, &v24, 111);
  v24 = &unk_1F2CFA908;
  v25 = 0u;
  v26 = 0u;
  quasar::Bitmap::~Bitmap(&v24);
  v27.__locale_ = &unk_1F2CFA908;
  memset(v28, 0, sizeof(v28));
  quasar::Bitmap::~Bitmap(&v27);
}

void sub_1B53DDB40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v15 + 8) = 0u;
  *(v15 + 24) = 0u;
  quasar::Bitmap::~Bitmap(&a9);
  *(v14 + 8) = 0u;
  *(v14 + 24) = 0u;
  quasar::Bitmap::~Bitmap(&a14);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PropagateFnc(void *a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 88))(a1);
  v5 = *(a3 + 24);
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::AllocateForwardBuffers(a1, 0, 1, v5);
  v6 = a1[13];
  if (a1[14] != v6 && *(v6 + 16) >= 1)
  {
    v7 = a1[16];
    v7[4] = v5;
    kaldi::CuMatrix<float>::Resize(v7, 1, *(a1[1] + 16), 1, 0);
  }

  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  kaldi::CuVectorBase<float>::AddMatVec<short>();
}

void sub_1B53DDD18()
{
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Bias(v0);
  LODWORD(v2) = 1.0;
  kaldi::CuVectorBase<float>::AddVec(v2, 1.0);
  v3 = *(v0 + 176);
  v4 = *(v1 - 72);
  v5 = *(v1 - 56);
  *(v1 - 152) = v5;
  *(v1 - 144) = &unk_1F2CFCA48;
  *(v1 - 136) = v4;
  *(v1 - 128) = 0;
  *(v1 - 128) = v3;
  *(v1 - 120) = v5;
  *(v1 - 176) = &unk_1F2CFCA48;
  *(v1 - 168) = v4 + 4 * v3;
  *(v1 - 160) = 0;
  *(v1 - 160) = v3;
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(v0);
  kaldi::CuVectorBase<float>::AddMatVec<short>();
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::GetUnitOutputFnc()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v1);
  v0 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "GetUnitOutputFnc", 16);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, " Not implemented!");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v1);
}

{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v1);
  v0 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "GetUnitOutputFnc", 16);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, " Not implemented!");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v1);
}

void virtual thunk tokaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::GetUnitOutputFnc()
{
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::GetUnitOutputFnc();
}

{
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::GetUnitOutputFnc();
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a2 + 20);
  v10 = *(a1 + 96);
  kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::EnsureTrainingBuffers(a1);
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v191, 3);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v191, "Running backward propagation for batch size = ", 46);
    v12 = MEMORY[0x1B8C84C00](v11, v9);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ", which contains ", 17);
    v14 = MEMORY[0x1B8C84C00](v13, (v9 / v10));
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " frames each from ", 18);
    v16 = MEMORY[0x1B8C84C00](v15, v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " utterances.", 12);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v191);
  }

  v133 = a5;
  if (a5)
  {
    v17 = a5;
  }

  else
  {
    v17 = a4;
  }

  v18 = *(v17 + 32);
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::AllocateBackwardBuffers(a1, a6, v9, v18);
  v19 = a6;
  v20 = 3 * a6;
  v21 = *(a1 + 248) + 48 * a6;
  v22 = *(a1 + 440) + 16 * v20;
  v134 = (*(a1 + 368) + 16 * v20);
  v144 = *(a1 + 416);
  v23 = *(a1 + 104);
  v140 = v19;
  v142 = (v9 / v10);
  if (*(a1 + 112) == v23 || *(v23 + 32 * v19 + 16) < 1)
  {
    v139 = 0;
    v24 = a1;
  }

  else
  {
    v24 = a1;
    v25 = (*(a1 + 128) + 48 * v19);
    v25[4] = v18;
    v139 = 1;
    kaldi::CuMatrix<float>::Resize(v25, v10, *(v22 + 16), 1, 0);
  }

  kaldi::CuMatrixBase<float>::CopyFromMat<float>(v134, a4, 111);
  v26 = *(v24 + 176);
  v27 = *(v21 + 20);
  v28 = *(v21 + 24);
  v29 = *(v21 + 28);
  v30 = *(v21 + 32);
  *&v192 = *(v21 + 8);
  *(&v192 + 1) = __PAIR64__(v27, v26);
  *&v193 = __PAIR64__(v29, v28);
  *(&v193 + 1) = v30;
  v191.__locale_ = &unk_1F2CFA908;
  *&v189 = v192 + 4 * v26;
  *(&v189 + 1) = __PAIR64__(v27, v26);
  LODWORD(v190) = v28;
  DWORD1(v190) = v29 - v26;
  *(&v190 + 1) = v30;
  v188 = &unk_1F2CFA908;
  v31 = *(v21 + 20);
  v32 = *(v21 + 24);
  v33 = *(v21 + 28) - 2 * v26;
  v34 = *(v21 + 32);
  *&v186 = *(v21 + 8) + 8 * v26;
  *(&v186 + 1) = __PAIR64__(v31, v26);
  *&v187 = __PAIR64__(v33, v32);
  *(&v187 + 1) = v34;
  v185 = &unk_1F2CFA908;
  v35 = *(v21 + 28) - 3 * v26;
  *&v183 = *(v21 + 8) + 12 * v26;
  *(&v183 + 1) = __PAIR64__(v31, v26);
  *&v184 = __PAIR64__(v35, v32);
  *(&v184 + 1) = v34;
  v182 = &unk_1F2CFA908;
  v36 = *(v22 + 20);
  v37 = *(v22 + 24);
  v38 = *(v22 + 28);
  v39 = *(v22 + 32);
  *&v180 = *(v22 + 8);
  *(&v180 + 1) = __PAIR64__(v36, v26);
  *&v181 = __PAIR64__(v38, v37);
  *(&v181 + 1) = v39;
  v179 = &unk_1F2CFA908;
  *&v177 = v180 + 4 * v26;
  *(&v177 + 1) = __PAIR64__(v36, v26);
  LODWORD(v178) = v37;
  DWORD1(v178) = v38 - v26;
  *(&v178 + 1) = v39;
  v176 = &unk_1F2CFA908;
  v40 = *(v22 + 20);
  v41 = *(v22 + 24);
  v42 = *(v22 + 28) - 2 * v26;
  v43 = *(v22 + 32);
  *&v174 = *(v22 + 8) + 8 * v26;
  *(&v174 + 1) = __PAIR64__(v40, v26);
  *&v175 = __PAIR64__(v42, v41);
  *(&v175 + 1) = v43;
  v173 = &unk_1F2CFA908;
  v44 = *(v22 + 28) - 3 * v26;
  *&v171 = *(v22 + 8) + 12 * v26;
  *(&v171 + 1) = __PAIR64__(v40, v26);
  *&v172 = __PAIR64__(v44, v41);
  *(&v172 + 1) = v43;
  v170 = &unk_1F2CFA908;
  kaldi::CuMatrixBase<float>::DiffSigmoid(&v179, &v191, &v182);
  *&v169[0] = v177 + 4 * v178 * v10;
  DWORD2(v169[0]) = DWORD2(v177);
  HIDWORD(v169[0]) = v9 - v10;
  LODWORD(v169[1]) = v178;
  DWORD1(v169[1]) = DWORD1(v178) - v178 * v10;
  *(&v169[1] + 1) = *(&v178 + 1);
  v168 = &unk_1F2CFA908;
  *&v166 = v189 + 4 * v190 * v10;
  DWORD2(v166) = DWORD2(v189);
  HIDWORD(v166) = v9 - v10;
  LODWORD(v167) = v190;
  DWORD1(v167) = DWORD1(v190) - v190 * v10;
  *(&v167 + 1) = *(&v190 + 1);
  v165 = &unk_1F2CFA908;
  v45 = *(v24 + 272) + 48 * v140;
  v46 = *(v45 + 16);
  v47 = *(v45 + 32);
  *&v163 = *(v45 + 8);
  DWORD2(v163) = v46;
  HIDWORD(v163) = v9 - v10;
  *&v164 = *(v45 + 24);
  *(&v164 + 1) = v47;
  v162 = &unk_1F2CFA908;
  kaldi::CuMatrixBase<float>::DiffSigmoid(&v168, &v165, &v162);
  v162 = &unk_1F2CFA908;
  v163 = 0u;
  v164 = 0u;
  quasar::Bitmap::~Bitmap(&v162);
  v165 = &unk_1F2CFA908;
  v166 = 0u;
  v167 = 0u;
  quasar::Bitmap::~Bitmap(&v165);
  v168 = &unk_1F2CFA908;
  memset(v169, 0, sizeof(v169));
  quasar::Bitmap::~Bitmap(&v168);
  *&v169[0] = v177;
  *(&v169[0] + 1) = __PAIR64__(v10, DWORD2(v177));
  v169[1] = v178;
  v168 = &unk_1F2CFA908;
  kaldi::CuMatrixBase<float>::SetZero(&v168);
  v168 = &unk_1F2CFA908;
  memset(v169, 0, sizeof(v169));
  quasar::Bitmap::~Bitmap(&v168);
  v48 = v140;
  v49 = a1;
  v136 = v22;
  if (v139)
  {
    v50 = *(a1 + 128) + 48 * v140;
    v51 = *(a1 + 176);
    v52 = *(v50 + 28);
    v53 = *(v50 + 32);
    *&v169[0] = *(v50 + 8);
    DWORD2(v169[0]) = v51;
    *(v169 + 12) = *(v50 + 20);
    DWORD1(v169[1]) = v52;
    *(&v169[1] + 1) = v53;
    v168 = &unk_1F2CFA908;
    kaldi::CuMatrixBase<float>::SetZero(&v168);
    v54 = v142 - 1;
    v55 = v10;
    v56 = 4 * v10;
    do
    {
      *(&v166 + 1) = __PAIR64__(v10, DWORD2(v177));
      LODWORD(v167) = v178;
      DWORD1(v167) = DWORD1(v178) - v178 * v55;
      *(&v167 + 1) = *(&v178 + 1);
      *&v166 = v177 + 4 * v178 * v55;
      v165 = &unk_1F2CFA908;
      v57 = *(a1 + 104) + 32 * v140;
      *(&v163 + 1) = 0;
      v162 = &unk_1F2CFCA48;
      *&v163 = *(v57 + 8) + v56;
      DWORD2(v163) = v10;
      *&v164 = *(v57 + 24);
      kaldi::CuMatrixBase<float>::CopySelectedRows(&v165, &v168, &v162, 0);
      v165 = &unk_1F2CFA908;
      v166 = 0u;
      v167 = 0u;
      quasar::Bitmap::~Bitmap(&v165);
      v56 += 4 * v10;
      v55 += v10;
      --v54;
    }

    while (v54);
    v168 = &unk_1F2CFA908;
    memset(v169, 0, sizeof(v169));
    quasar::Bitmap::~Bitmap(&v168);
    v48 = v140;
    v49 = a1;
  }

  kaldi::CuMatrixBase<float>::DiffSigmoid(&v173, &v185, *(v49 + 296) + 48 * v48);
  kaldi::CuMatrixBase<float>::DiffTanh(&v170, &v182, &v191);
  v58 = v144 + 16 * v20;
  kaldi::CuMatrixBase<float>::DiffTanh(v58, *(v49 + 296) + 48 * v48, &v185);
  v59 = 0;
  v138 = v10 * (v142 - 1);
  v143 = 0;
  v145 = (v142 - 1);
  v137 = 4 * (v10 + v10 * v145);
  v135 = v10 * v142;
  v60 = v134;
  do
  {
    v61 = v138 + v59;
    v62 = v60[6];
    v63 = *(v60 + 1) + 4 * v62 * (v138 + v59);
    v64 = v60[7] - v62 * (v138 + v59);
    v65 = *(v60 + 4);
    DWORD2(v169[0]) = v60[4];
    HIDWORD(v169[0]) = v10;
    *&v169[1] = __PAIR64__(v64, v62);
    *(&v169[1] + 1) = v65;
    *&v169[0] = v63;
    v168 = &unk_1F2CFA908;
    v66 = *(v49 + 392) + 48 * v48;
    LODWORD(v63) = *(v66 + 16);
    v67 = *(v66 + 24);
    v68 = v67 * (v138 + v59);
    v69 = *(v66 + 8) + 4 * v68;
    LODWORD(v65) = *(v66 + 28) - v68;
    v70 = *(v66 + 32);
    *(&v166 + 1) = __PAIR64__(v10, v63);
    *&v167 = __PAIR64__(v65, v67);
    *(&v167 + 1) = v70;
    *&v166 = v69;
    v165 = &unk_1F2CFA908;
    if (*(v49 + 224) == 1)
    {
      v71 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(v49);
      LODWORD(v72) = 1.0;
      kaldi::CuMatrixBase<float>::AddMatMat<short>(&v165, &v168, 111, v71, 111, v72, 0.0);
    }

    else
    {
      kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v165, &v168, 111);
    }

    *&v163 = v174 + 4 * v175 * v61;
    *(&v163 + 1) = __PAIR64__(v10, DWORD2(v174));
    LODWORD(v164) = v175;
    DWORD1(v164) = DWORD1(v175) - v175 * v61;
    *(&v164 + 1) = *(&v175 + 1);
    v162 = &unk_1F2CFA908;
    kaldi::CuMatrixBase<float>::MulElements(&v162, &v165);
    v73 = *(v58 + 24);
    v74 = *(v58 + 8) + 4 * (v73 * v61);
    v75 = *(v58 + 28) - v73 * v61;
    v76 = *(v58 + 32);
    DWORD2(v160) = *(v58 + 16);
    HIDWORD(v160) = v10;
    *&v161 = __PAIR64__(v75, v73);
    *(&v161 + 1) = v76;
    v159 = &unk_1F2CFA908;
    *&v160 = v74;
    kaldi::CuMatrixBase<float>::MulElements(&v159, &v165);
    if (*(v49 + 208) == 1)
    {
      v77 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(v49);
      v78 = *(v77 + 16);
      v79 = *(v77 + 32);
      v158[0] = *(v77 + 8) + 8 * *(v77 + 24);
      v157 = &unk_1F2CFCA48;
      v158[1] = v78;
      v158[2] = v79;
      LODWORD(v80) = 1.0;
      kaldi::CuMatrixBase<float>::AddMatDiagVec(&v159, &v162, 111, &v157, v80, 1.0);
    }

    if (v145 < v142 - 1)
    {
      v81 = v135 + v59;
      v82 = *(v58 + 24);
      v83 = *(v58 + 8) + 4 * (v82 * (v135 + v59));
      v84 = *(v58 + 28) - v82 * (v135 + v59);
      v85 = *(v58 + 32);
      LODWORD(v158[1]) = *(v58 + 16);
      HIDWORD(v158[1]) = v10;
      v158[2] = __PAIR64__(v84, v82);
      v158[3] = v85;
      v157 = &unk_1F2CFA908;
      v158[0] = v83;
      v156[0] = v189 + 4 * v190 * (v135 + v59);
      v156[1] = __PAIR64__(v10, DWORD2(v189));
      LODWORD(v156[2]) = v190;
      HIDWORD(v156[2]) = DWORD1(v190) - v190 * (v135 + v59);
      v156[3] = *(&v190 + 1);
      v155 = &unk_1F2CFA908;
      if (v139)
      {
        v86 = *(v49 + 128) + 48 * v140;
        v87 = *(v49 + 176);
        v88 = *(v86 + 28);
        v89 = *(v86 + 32);
        v154[0] = *(v86 + 8);
        LODWORD(v154[1]) = v87;
        *(&v154[1] + 4) = *(v86 + 20);
        HIDWORD(v154[2]) = v88;
        v154[3] = v89;
        v153 = &unk_1F2CFA908;
        kaldi::CuMatrixBase<float>::SetZero(&v153);
        v90 = *(v49 + 104) + 32 * v140;
        v152[1] = 0;
        v151 = &unk_1F2CFCA48;
        v152[0] = *(v90 + 8) + v137 + v143;
        LODWORD(v152[1]) = v10;
        v152[2] = *(v90 + 24);
        kaldi::CuMatrixBase<float>::CopySelectedRows(&v153, &v157, &v151, 1);
        *&v158[1] = *&v154[1];
        v158[0] = v154[0];
        v158[3] = v154[3];
        v91 = *(v49 + 128) + 48 * v140;
        v92 = *(v49 + 176);
        v93 = *(v91 + 28) - v92;
        v94 = *(v91 + 32);
        v152[0] = *(v91 + 8) + 4 * v92;
        LODWORD(v152[1]) = v92;
        *(&v152[1] + 4) = *(v91 + 20);
        HIDWORD(v152[2]) = v93;
        v152[3] = v94;
        v151 = &unk_1F2CFA908;
        kaldi::CuMatrixBase<float>::SetZero(&v151);
        v95 = *(v49 + 104) + 32 * v140;
        v150[2] = 0;
        v150[0] = &unk_1F2CFCA48;
        v150[1] = *(v95 + 8) + v137 + v143;
        LODWORD(v150[2]) = v10;
        v150[3] = *(v95 + 24);
        kaldi::CuMatrixBase<float>::CopySelectedRows(&v151, &v155, v150, 1);
        v156[0] = v152[0];
        *&v156[1] = *&v152[1];
        v156[3] = v152[3];
        v151 = &unk_1F2CFA908;
        memset(v152, 0, sizeof(v152));
        quasar::Bitmap::~Bitmap(&v151);
        v153 = &unk_1F2CFA908;
        memset(v154, 0, sizeof(v154));
        quasar::Bitmap::~Bitmap(&v153);
        v49 = a1;
        v60 = v134;
      }

      if (*(v49 + 208) == 1)
      {
        v154[0] = v177 + 4 * v178 * v81;
        v154[1] = __PAIR64__(v10, DWORD2(v177));
        LODWORD(v154[2]) = v178;
        HIDWORD(v154[2]) = DWORD1(v178) - v178 * v81;
        v154[3] = *(&v178 + 1);
        v152[1] = __PAIR64__(v10, DWORD2(v180));
        LODWORD(v152[2]) = v181;
        HIDWORD(v152[2]) = DWORD1(v181) - v181 * v81;
        v152[3] = *(&v181 + 1);
        v153 = &unk_1F2CFA908;
        v151 = &unk_1F2CFA908;
        v152[0] = v180 + 4 * v181 * v81;
        if (v139)
        {
          v96 = *(a1 + 128) + 48 * v140;
          v97 = *(a1 + 176);
          v98 = *(v96 + 28) - 2 * v97;
          v99 = *(v96 + 32);
          v150[1] = *(v96 + 8) + 8 * v97;
          LODWORD(v150[2]) = v97;
          *(&v150[2] + 4) = *(v96 + 20);
          HIDWORD(v150[3]) = v98;
          v150[4] = v99;
          v150[0] = &unk_1F2CFA908;
          kaldi::CuMatrixBase<float>::SetZero(v150);
          v100 = *(a1 + 104) + 32 * v140;
          v149[2] = 0;
          v149[0] = &unk_1F2CFCA48;
          v149[1] = *(v100 + 8) + v137 + v143;
          LODWORD(v149[2]) = v10;
          v149[3] = *(v100 + 24);
          kaldi::CuMatrixBase<float>::CopySelectedRows(v150, &v153, v149, 1);
          *&v154[1] = *&v150[2];
          v154[0] = v150[1];
          v154[3] = v150[4];
          v101 = *(a1 + 128) + 48 * v140;
          v102 = *(a1 + 176);
          v103 = *(v101 + 28) - 3 * v102;
          v104 = *(v101 + 32);
          v149[1] = *(v101 + 8) + 12 * v102;
          LODWORD(v149[2]) = v102;
          *(&v149[2] + 4) = *(v101 + 20);
          HIDWORD(v149[3]) = v103;
          v149[4] = v104;
          v149[0] = &unk_1F2CFA908;
          kaldi::CuMatrixBase<float>::SetZero(v149);
          v105 = *(a1 + 104) + 32 * v140;
          v147 = 0;
          v146[0] = &unk_1F2CFCA48;
          v146[1] = *(v105 + 8) + v137 + v143;
          LODWORD(v147) = v10;
          v148 = *(v105 + 24);
          kaldi::CuMatrixBase<float>::CopySelectedRows(v149, &v151, v146, 1);
          v152[0] = v149[1];
          *&v152[1] = *&v149[2];
          v152[3] = v149[4];
          v149[0] = &unk_1F2CFA908;
          memset(&v149[1], 0, 32);
          quasar::Bitmap::~Bitmap(v149);
          v150[0] = &unk_1F2CFA908;
          memset(&v150[1], 0, 32);
          quasar::Bitmap::~Bitmap(v150);
          v60 = v134;
        }

        v106 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1);
        v107 = *(v106 + 16);
        v108 = *(v106 + 32);
        v150[1] = *(v106 + 8) + 4 * *(v106 + 24);
        v150[0] = &unk_1F2CFCA48;
        v150[2] = v107;
        v150[3] = v108;
        LODWORD(v109) = 1.0;
        kaldi::CuMatrixBase<float>::AddMatDiagVec(&v159, &v153, 111, v150, v109, 1.0);
        v110 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1);
        v111 = *(v110 + 16);
        v112 = *(v110 + 32);
        v150[1] = *(v110 + 8);
        v150[0] = &unk_1F2CFCA48;
        v150[2] = v111;
        v150[3] = v112;
        LODWORD(v113) = 1.0;
        kaldi::CuMatrixBase<float>::AddMatDiagVec(&v159, &v151, 111, v150, v113, 1.0);
        v151 = &unk_1F2CFA908;
        memset(v152, 0, sizeof(v152));
        quasar::Bitmap::~Bitmap(&v151);
        v153 = &unk_1F2CFA908;
        memset(v154, 0, sizeof(v154));
        quasar::Bitmap::~Bitmap(&v153);
        v49 = a1;
      }

      kaldi::CuMatrixBase<float>::AddMatEwpMat(&v159, &v157, 111, &v155, 111, 1.0, 1.0);
      v155 = &unk_1F2CFA908;
      memset(v156, 0, sizeof(v156));
      quasar::Bitmap::~Bitmap(&v155);
      v157 = &unk_1F2CFA908;
      memset(v158, 0, sizeof(v158));
      quasar::Bitmap::~Bitmap(&v157);
      v48 = v140;
    }

    v158[1] = __PAIR64__(v10, DWORD2(v180));
    LODWORD(v158[2]) = v181;
    HIDWORD(v158[2]) = DWORD1(v181) - v181 * v61;
    v158[3] = *(&v181 + 1);
    v157 = &unk_1F2CFA908;
    v158[0] = v180 + 4 * v181 * v61;
    kaldi::CuMatrixBase<float>::MulElements(&v157, &v159);
    v157 = &unk_1F2CFA908;
    memset(v158, 0, sizeof(v158));
    quasar::Bitmap::~Bitmap(&v157);
    v158[1] = __PAIR64__(v10, DWORD2(v171));
    LODWORD(v158[2]) = v172;
    HIDWORD(v158[2]) = DWORD1(v172) - v172 * v61;
    v158[3] = *(&v172 + 1);
    v157 = &unk_1F2CFA908;
    v158[0] = v171 + 4 * v172 * v61;
    kaldi::CuMatrixBase<float>::MulElements(&v157, &v159);
    v157 = &unk_1F2CFA908;
    memset(v158, 0, sizeof(v158));
    quasar::Bitmap::~Bitmap(&v157);
    if (v145)
    {
      v158[1] = __PAIR64__(v10, DWORD2(v177));
      LODWORD(v158[2]) = v178;
      HIDWORD(v158[2]) = DWORD1(v178) - v178 * v61;
      v158[3] = *(&v178 + 1);
      v157 = &unk_1F2CFA908;
      v158[0] = v177 + 4 * v178 * v61;
      kaldi::CuMatrixBase<float>::MulElements(&v157, &v159);
      v157 = &unk_1F2CFA908;
      memset(v158, 0, sizeof(v158));
      quasar::Bitmap::~Bitmap(&v157);
      v114 = *(v136 + 16);
      v115 = *(v136 + 24);
      v116 = *(v136 + 8) + 4 * (v115 * v61);
      v117 = *(v136 + 28) - v115 * v61;
      v118 = *(v136 + 32);
      v158[1] = __PAIR64__(v10, v114);
      v158[2] = __PAIR64__(v117, v115);
      v158[3] = v118;
      v157 = &unk_1F2CFA908;
      v158[0] = v116;
      if (v139)
      {
        v119 = *(v49 + 128) + 48 * v48;
        v120 = *(v119 + 28);
        v121 = *(v119 + 32);
        v156[0] = *(v119 + 8);
        LODWORD(v156[1]) = v114;
        *(&v156[1] + 4) = *(v119 + 20);
        HIDWORD(v156[2]) = v120;
        v156[3] = v121;
        v155 = &unk_1F2CFA908;
        kaldi::CuMatrixBase<float>::SetZero(&v155);
        v122 = *(v49 + 104) + 32 * v48;
        v154[1] = 0;
        v153 = &unk_1F2CFCA48;
        v154[0] = *(v122 + 8) + 4 * v10 * (v142 - 1) + v143;
        LODWORD(v154[1]) = v10;
        v154[2] = *(v122 + 24);
        kaldi::CuMatrixBase<float>::CopySelectedRows(&v155, &v157, &v153, 1);
        *&v158[1] = *&v156[1];
        v158[0] = v156[0];
        v158[3] = v156[3];
        v155 = &unk_1F2CFA908;
        memset(v156, 0, sizeof(v156));
        quasar::Bitmap::~Bitmap(&v155);
      }

      v123 = v60[6];
      v124 = v123 * (v10 * (v142 - 2) + v59);
      v125 = *(v60 + 1) + 4 * v124;
      v126 = v60[7] - v124;
      v127 = *(v60 + 4);
      LODWORD(v156[1]) = v60[4];
      HIDWORD(v156[1]) = v10;
      v156[2] = __PAIR64__(v126, v123);
      v156[3] = v127;
      v155 = &unk_1F2CFA908;
      v156[0] = v125;
      v128 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(v49);
      LODWORD(v129) = 1.0;
      kaldi::CuMatrixBase<float>::AddMatMat<short>(&v155, &v157, 111, v128, 111, v129, 1.0);
      v155 = &unk_1F2CFA908;
      memset(v156, 0, sizeof(v156));
      quasar::Bitmap::~Bitmap(&v155);
      v157 = &unk_1F2CFA908;
      memset(v158, 0, sizeof(v158));
      quasar::Bitmap::~Bitmap(&v157);
    }

    v159 = &unk_1F2CFA908;
    v160 = 0u;
    v161 = 0u;
    quasar::Bitmap::~Bitmap(&v159);
    v162 = &unk_1F2CFA908;
    v163 = 0u;
    v164 = 0u;
    quasar::Bitmap::~Bitmap(&v162);
    v165 = &unk_1F2CFA908;
    v166 = 0u;
    v167 = 0u;
    quasar::Bitmap::~Bitmap(&v165);
    v168 = &unk_1F2CFA908;
    memset(v169, 0, sizeof(v169));
    quasar::Bitmap::~Bitmap(&v168);
    v130 = v145;
    v143 -= 4 * v10;
    --v145;
    v59 -= v10;
  }

  while (v130 > 0);
  if (v133)
  {
    v131 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(v49);
    LODWORD(v132) = 1.0;
    kaldi::CuMatrixBase<float>::AddMatMat<short>(v133, v136, 111, v131, 111, v132, 0.0);
  }

  v170 = &unk_1F2CFA908;
  v171 = 0u;
  v172 = 0u;
  quasar::Bitmap::~Bitmap(&v170);
  v173 = &unk_1F2CFA908;
  v174 = 0u;
  v175 = 0u;
  quasar::Bitmap::~Bitmap(&v173);
  v176 = &unk_1F2CFA908;
  v177 = 0u;
  v178 = 0u;
  quasar::Bitmap::~Bitmap(&v176);
  v179 = &unk_1F2CFA908;
  v180 = 0u;
  v181 = 0u;
  quasar::Bitmap::~Bitmap(&v179);
  v182 = &unk_1F2CFA908;
  v183 = 0u;
  v184 = 0u;
  quasar::Bitmap::~Bitmap(&v182);
  v185 = &unk_1F2CFA908;
  v186 = 0u;
  v187 = 0u;
  quasar::Bitmap::~Bitmap(&v185);
  v188 = &unk_1F2CFA908;
  v189 = 0u;
  v190 = 0u;
  quasar::Bitmap::~Bitmap(&v188);
  v191.__locale_ = &unk_1F2CFA908;
  v192 = 0u;
  v193 = 0u;
  quasar::Bitmap::~Bitmap(&v191);
}

void sub_1B53DFA04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, unint64_t a11, unint64_t a12, unint64_t a13, unint64_t a14, unint64_t a15, unint64_t a16, unint64_t a17)
{
  STACK[0x270] = v17;
  *&STACK[0x278] = 0u;
  *&STACK[0x288] = 0u;
  quasar::Bitmap::~Bitmap(&STACK[0x270]);
  STACK[0x298] = a10;
  *&STACK[0x2A0] = 0u;
  *&STACK[0x2B0] = 0u;
  quasar::Bitmap::~Bitmap(&STACK[0x298]);
  STACK[0x2C0] = a11;
  *&STACK[0x2C8] = 0u;
  *&STACK[0x2D8] = 0u;
  quasar::Bitmap::~Bitmap(&STACK[0x2C0]);
  STACK[0x2E8] = a12;
  *&STACK[0x2F0] = 0u;
  *&STACK[0x300] = 0u;
  quasar::Bitmap::~Bitmap(&STACK[0x2E8]);
  STACK[0x310] = a13;
  *&STACK[0x318] = 0u;
  *&STACK[0x328] = 0u;
  quasar::Bitmap::~Bitmap(&STACK[0x310]);
  STACK[0x338] = a14;
  *&STACK[0x340] = 0u;
  *&STACK[0x350] = 0u;
  quasar::Bitmap::~Bitmap(&STACK[0x338]);
  STACK[0x360] = a15;
  *&STACK[0x368] = 0u;
  *&STACK[0x378] = 0u;
  quasar::Bitmap::~Bitmap(&STACK[0x360]);
  STACK[0x388] = a16;
  *&STACK[0x390] = 0u;
  *&STACK[0x3A0] = 0u;
  quasar::Bitmap::~Bitmap(&STACK[0x388]);
  STACK[0x3B0] = a17;
  *&STACK[0x3B8] = 0u;
  *&STACK[0x3C8] = 0u;
  quasar::Bitmap::~Bitmap(&STACK[0x3B0]);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::AllocateBackwardBuffers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v11, 3);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Allocating backward buffers for batch ", 38);
    v9 = MEMORY[0x1B8C84C00](v8, a2);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "; batch size = ", 15);
    MEMORY[0x1B8C84C00](v10, a3);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v11);
  }

  kaldi::CuMatrix<float>::Resize((*(a1 + 368) + 48 * a2), a3, *(a1 + *(*a1 - 24) + 12), 0, 0);
  kaldi::CuMatrix<float>::Resize((*(a1 + 392) + 48 * a2), a3, *(a1 + 176), 0, 0);
  kaldi::CuMatrix<float>::Resize((*(a1 + 416) + 48 * a2), a3, *(a1 + 176), 0, 0);
  kaldi::CuMatrix<float>::Resize((*(a1 + 440) + 48 * a2), a3, (4 * *(a1 + 176)), 0, 0);
  *(*(a1 + 368) + 48 * a2 + 32) = a4;
  *(*(a1 + 392) + 48 * a2 + 32) = a4;
  *(*(a1 + 416) + 48 * a2 + 32) = a4;
  *(*(a1 + 440) + 48 * a2 + 32) = a4;
}

void sub_1B53DFF8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::AccumGradients(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 96);
  v10 = *(a2 + 20);
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v65, 3);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, "Accumulating gradients for batch id = ", 38);
    v12 = MEMORY[0x1B8C84C00](v11, a5);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ", which contains ", 17);
    v14 = MEMORY[0x1B8C84C00](v13, (v10 / v9));
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " frames each from ", 18);
    v16 = MEMORY[0x1B8C84C00](v15, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " utterances.", 12);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v65);
  }

  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::AllocateGradients(a1);
  v50 = *(a1 + 272);
  v17 = *(a1 + 440) + 48 * a5;
  v18 = *(a1 + 60);
  *(*(a1 + 480) + 4 * a5) = v10;
  v19 = *(v17 + 8);
  v20 = *(v17 + 20);
  v21 = *(v17 + 24);
  v22 = *(v17 + 28);
  v23 = *(v17 + 32);
  DWORD2(v66) = *(a1 + 176);
  HIDWORD(v66) = v20;
  *&v67 = __PAIR64__(v22, v21);
  *(&v67 + 1) = v23;
  v65.__locale_ = &unk_1F2CFA908;
  *&v66 = v19;
  *(&v63 + 1) = __PAIR64__(v20, DWORD2(v66));
  LODWORD(v64) = v21;
  DWORD1(v64) = v22 - DWORD2(v66);
  *(&v64 + 1) = v23;
  v62 = &unk_1F2CFA908;
  *&v63 = v19 + 4 * SDWORD2(v66);
  v24 = *(v17 + 28) - 2 * DWORD2(v66);
  v25 = *(v17 + 32);
  v61[1] = *(v17 + 8) + 8 * DWORD2(v66);
  LODWORD(v61[2]) = DWORD2(v66);
  *(&v61[2] + 4) = *(v17 + 20);
  HIDWORD(v61[3]) = v24;
  v61[4] = v25;
  v61[0] = &unk_1F2CFA908;
  *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeightsGradient(a1, a5) + 32) = a4;
  *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeightsGradient(a1, a5) + 32) = a4;
  *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::BiasGradient(a1, a5) + 24) = a4;
  if (*(a1 + 208) == 1)
  {
    *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeightsGradient(a1, a5) + 32) = a4;
  }

  if (*(a1 + 224) == 1)
  {
    *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeightsGradient(a1, a5) + 32) = a4;
  }

  v26 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeightsGradient(a1, a5);
  kaldi::CuMatrixBase<float>::AddMatMat(v26, v17, 112, a2, 111);
  v27 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeightsGradient(a1, a5);
  v28 = *(v17 + 24);
  v29 = *(v17 + 8) + 4 * (v28 * v9);
  v30 = *(v17 + 28) - v28 * v9;
  v31 = *(v17 + 32);
  DWORD2(v59) = *(v17 + 16);
  HIDWORD(v59) = v10 - v9;
  *&v60 = __PAIR64__(v30, v28);
  *(&v60 + 1) = v31;
  v58 = &unk_1F2CFA908;
  *&v59 = v29;
  v32 = *(a1 + 344) + 48 * a5;
  LODWORD(v29) = *(v32 + 16);
  v33 = *(v32 + 32);
  *&v56 = *(v32 + 8);
  DWORD2(v56) = v29;
  HIDWORD(v56) = v10 - v9;
  *&v57 = *(v32 + 24);
  *(&v57 + 1) = v33;
  v55 = &unk_1F2CFA908;
  kaldi::CuMatrixBase<float>::AddMatMat(v27, &v58, 112, &v55, 111);
  v55 = &unk_1F2CFA908;
  v56 = 0u;
  v57 = 0u;
  quasar::Bitmap::~Bitmap(&v55);
  v58 = &unk_1F2CFA908;
  v59 = 0u;
  v60 = 0u;
  quasar::Bitmap::~Bitmap(&v58);
  v34 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::BiasGradient(a1, a5);
  kaldi::CuVectorBase<float>::AddRowSumMat(v34, v17);
  if (*(a1 + 208) == 1)
  {
    v35 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeightsGradient(a1, a5);
    v36 = v50 + 48 * a5;
    v37 = *(v35 + 16);
    v38 = *(v35 + 32);
    v52 = *(v35 + 8);
    v51 = &unk_1F2CFCA48;
    v53 = v37;
    v54 = v38;
    DWORD2(v59) = DWORD2(v66);
    HIDWORD(v59) = v10 - v9;
    LODWORD(v60) = v67;
    DWORD1(v60) = DWORD1(v67) - v67 * v9;
    *(&v60 + 1) = *(&v67 + 1);
    v58 = &unk_1F2CFA908;
    *&v59 = v66 + 4 * v67 * v9;
    v39 = *(v36 + 16);
    v40 = *(v36 + 32);
    *&v56 = *(v36 + 8);
    DWORD2(v56) = v39;
    HIDWORD(v56) = v10 - v9;
    *&v57 = *(v36 + 24);
    *(&v57 + 1) = v40;
    v55 = &unk_1F2CFA908;
    kaldi::CuVectorBase<float>::AddDiagMatMat(&v51, &v58, 112, &v55, 111, 1.0, v18);
    v55 = &unk_1F2CFA908;
    v56 = 0u;
    v57 = 0u;
    quasar::Bitmap::~Bitmap(&v55);
    v58 = &unk_1F2CFA908;
    v59 = 0u;
    v60 = 0u;
    quasar::Bitmap::~Bitmap(&v58);
    v41 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeightsGradient(a1, a5);
    v42 = *(v41 + 16);
    v43 = *(v41 + 32);
    v52 = *(v41 + 8) + 4 * *(v41 + 24);
    v51 = &unk_1F2CFCA48;
    v53 = v42;
    v54 = v43;
    DWORD2(v59) = DWORD2(v63);
    HIDWORD(v59) = v10 - v9;
    LODWORD(v60) = v64;
    DWORD1(v60) = DWORD1(v64) - v64 * v9;
    *(&v60 + 1) = *(&v64 + 1);
    v58 = &unk_1F2CFA908;
    *&v59 = v63 + 4 * v64 * v9;
    v44 = *(v36 + 16);
    v45 = *(v36 + 32);
    *&v56 = *(v36 + 8);
    DWORD2(v56) = v44;
    HIDWORD(v56) = v10 - v9;
    *&v57 = *(v36 + 24);
    *(&v57 + 1) = v45;
    v55 = &unk_1F2CFA908;
    kaldi::CuVectorBase<float>::AddDiagMatMat(&v51, &v58, 112, &v55, 111, 1.0, v18);
    v55 = &unk_1F2CFA908;
    v56 = 0u;
    v57 = 0u;
    quasar::Bitmap::~Bitmap(&v55);
    v58 = &unk_1F2CFA908;
    v59 = 0u;
    v60 = 0u;
    quasar::Bitmap::~Bitmap(&v58);
    v46 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeightsGradient(a1, a5);
    v47 = *(v46 + 16);
    v48 = *(v46 + 32);
    *&v59 = *(v46 + 8) + 8 * *(v46 + 24);
    v58 = &unk_1F2CFCA48;
    *(&v59 + 1) = v47;
    *&v60 = v48;
    kaldi::CuVectorBase<float>::AddDiagMatMat(&v58, v61, 112, v36, 111, 1.0, v18);
  }

  if (*(a1 + 224) == 1)
  {
    v49 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeightsGradient(a1, a5);
    kaldi::CuMatrixBase<float>::AddMatMat(v49, *(a1 + 368) + 48 * a5, 112, *(a1 + 320) + 48 * a5, 111);
  }

  v61[0] = &unk_1F2CFA908;
  memset(&v61[1], 0, 32);
  quasar::Bitmap::~Bitmap(v61);
  v62 = &unk_1F2CFA908;
  v63 = 0u;
  v64 = 0u;
  quasar::Bitmap::~Bitmap(&v62);
  v65.__locale_ = &unk_1F2CFA908;
  v66 = 0u;
  v67 = 0u;
  quasar::Bitmap::~Bitmap(&v65);
}

void sub_1B53E06D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, __int128 a30, __int128 a31, uint64_t a32, __int128 a33, __int128 a34, uint64_t a35, __int128 a36, __int128 a37)
{
  a29 = a12;
  a30 = 0u;
  a31 = 0u;
  quasar::Bitmap::~Bitmap(&a29);
  a32 = a13;
  a33 = 0u;
  a34 = 0u;
  quasar::Bitmap::~Bitmap(&a32);
  a35 = a14;
  a36 = 0u;
  a37 = 0u;
  quasar::Bitmap::~Bitmap(&a35);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::AllocateGradients(uint64_t a1)
{
  if (*(a1 + 528))
  {
    return;
  }

  v2 = *(a1 + 80);
  if (v2 > 1)
  {
    v3 = (v2 + 1);
  }

  else
  {
    v3 = 1;
  }

  if (*(a1 + 544) != *(a1 + 536))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, "input_weights_gradient_.size() == 0");
    goto LABEL_34;
  }

  if (*(a1 + 568) != *(a1 + 560))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, "recurrent_weights_gradient_.size() == 0");
    goto LABEL_34;
  }

  if (*(a1 + 616) != *(a1 + 608))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, "bias_gradient_.size() == 0");
    goto LABEL_34;
  }

  if (*(a1 + 208) == 1 && *(a1 + 592) != *(a1 + 584))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, "peephole_weights_gradient_.size() == 0");
    goto LABEL_34;
  }

  if (*(a1 + 224) == 1 && *(a1 + 640) != *(a1 + 632))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, "projection_weights_gradient_.size() == 0");
LABEL_34:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v9);
  }

  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize((a1 + 536), v3);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize((a1 + 560), v3);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::resize((a1 + 608), v3);
  std::vector<kaldi::CuMatrix<float>>::resize((a1 + 656), v3);
  std::vector<kaldi::CuMatrix<float>>::resize((a1 + 680), v3);
  std::vector<kaldi::CuVector<float>>::resize((a1 + 728), v3);
  if (v3 >= 1)
  {
    operator new();
  }

  if (*(a1 + 208))
  {
    std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize((a1 + 584), v3);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 704), v3);
  }

  if (*(a1 + 224) == 1)
  {
    std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize((a1 + 632), v3);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 752), v3);
  }

  *(a1 + 528) = 1;
  if (kaldi::g_kaldi_verbose_level > 1)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v9, 2);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Allocated memory for the gradients: ", 36);
    (*(*a1 + 272))(__p, a1);
    if ((v8 & 0x80u) == 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    if ((v8 & 0x80u) == 0)
    {
      v6 = v8;
    }

    else
    {
      v6 = __p[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v5, v6);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v9);
  }
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::UpdateWeights()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented except for BaseFloat weights");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void *kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::SetInternalBoundary(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a1 + 104);
  v6 = (a1 + 104);
  if (v5 == *(a1 + 112))
  {
    std::vector<kaldi::CuVector<float>>::resize((a1 + 104), *(a1 + 80));
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 128), *(a1 + 80));
    v5 = *(a1 + 104);
  }

  kaldi::CuVector<float>::Resize(v5 + 32 * a3, *(a2 + 16), 1);
  v8 = (*v6 + 32 * a3);

  return kaldi::CuVectorBase<float>::CopyFromVec(v8, a2);
}

void virtual thunk tokaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::SetTrainOptions(void *a1, const kaldi::nnet1::NnetTrainOptions *a2)
{
  v2 = (a1 + *(*a1 - 280));
  kaldi::nnet1::RecurrentBaseComponent::SetTrainOptions(v2, a2);
  *(v2 + 120) = 0;
}

int *kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::GetHistoryState(uint64_t a1, int32x2_t *a2, unsigned int a3)
{
  v6 = *(a1 + 8) + 48 * a3;
  kaldi::CuMatrix<float>::Resize(a2, *(v6 + 20), *(v6 + 16), 1, 0);
  v7 = *(a1 + 8) + 48 * a3;

  return kaldi::CuMatrixBase<float>::CopyFromMat<float>(a2, v7, 111);
}

void *kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::GetHistoryState(uint64_t a1, void *a2, int a3, unsigned int a4)
{
  kaldi::CuVector<float>::Resize(a2, *(*(a1 + 8) + 48 * a4 + 16), 1);
  v8 = *(a1 + 8) + 48 * a4;
  v9 = *(v8 + 8) + 4 * *(v8 + 24) * a3;
  v10 = *(v8 + 16);
  v11 = *(v8 + 32);
  v13[1] = v9;
  v13[0] = &unk_1F2CFCA48;
  v13[2] = v10;
  v13[3] = v11;
  return kaldi::CuVectorBase<float>::CopyFromVec(a2, v13);
}

int *kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::SetHistoryState(void *a1, uint64_t a2, unsigned int a3)
{
  (*(*a1 + 88))(a1);
  v6 = (a1[1] + 48 * a3);

  return kaldi::CuMatrixBase<float>::CopyFromMat<float>(v6, a2, 111);
}

void *kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::SetHistoryState(void *a1, uint64_t a2, int a3, unsigned int a4)
{
  (*(*a1 + 88))(a1);
  v8 = a1[1] + 48 * a4;
  v9 = *(a2 + 16);
  v10 = *(v8 + 8) + 4 * *(v8 + 24) * a3;
  v11 = *(v8 + 32);
  v13[1] = v10;
  v13[0] = &unk_1F2CFCA48;
  v13[2] = v9;
  v13[3] = v11;
  return kaldi::CuVectorBase<float>::CopyFromVec(v13, a2);
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ResetHistoryState(void *a1, void *a2, uint64_t a3, unsigned int a4)
{
  (*(*a1 + 88))(a1);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v21);
  *(a1[1] + 48 * a4 + 32) = a3;
  if (a2[1])
  {
    v8 = 0;
    do
    {
      if ((*(*a2 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v8))
      {
        v9 = a1[1] + 48 * a4;
        v10 = (*(v9 + 8) + 4 * *(v9 + 24) * v8);
        v11 = *(v9 + 16);
        v12 = *(v9 + 32);
        v20[1].__locale_ = v10;
        v20[0].__locale_ = &unk_1F2CFCA48;
        v20[2].__locale_ = v11;
        v20[3].__locale_ = v12;
        kaldi::CuVectorBase<float>::SetZero(v20);
        if (kaldi::g_kaldi_verbose_level >= 3)
        {
          v13 = MEMORY[0x1B8C84C00](&v21, v8);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ", ", 2);
        }
      }

      ++v8;
    }

    while (a2[1] > v8);
  }

  if (kaldi::g_kaldi_verbose_level > 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v20, 3);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Reset previous states for utts ", 31);
    std::stringbuf::str();
    if ((v19 & 0x80u) == 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v16 = v19;
    }

    else
    {
      v16 = __p[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v15, v16);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v20);
  }

  v21 = *MEMORY[0x1E69E54E8];
  *(&v21 + *(v21 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v22 = MEMORY[0x1E69E5548] + 16;
  if (v24 < 0)
  {
    operator delete(v23[7].__locale_);
  }

  v22 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v23);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v25);
}

void sub_1B53E1664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::locale a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  kaldi::KaldiVlogMessage::~KaldiVlogMessage(&a16);
  std::ostringstream::~ostringstream(&a51);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ResetHistoryState(void *a1)
{
  (*(*a1 + 88))(a1);
  for (i = a1[1]; i != a1[2]; i += 48)
  {
    kaldi::CuMatrixBase<float>::SetZero(i);
  }
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::SetGradientNormalization(uint64_t result, int a2, float a3)
{
  *(result + 152) = a3;
  *(result + 156) = a2;
  *(result + 528) = 0;
  return result;
}

void *virtual thunk tokaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::SetGradientNormalization(void *result, int a2, float a3)
{
  v3 = (result + *(*result - 256));
  v3[38] = a3;
  *(v3 + 39) = a2;
  *(v3 + 528) = 0;
  return result;
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::NormalizeGradients(uint64_t a1, unsigned int a2, float a3)
{
  v4 = a3;
  v6 = *(a1 + 156);
  if (v6 == 1)
  {
    if (a3 > 0.0)
    {
      if (*(a1 + 84) == 1)
      {
        v4 = *(*(a1 + 480) + 4 * a2) * a3;
      }

      v14 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeightsGradient(a1, a2);
      kaldi::nnet1::UpdatableComponent::ClipGradient(v14, v4);
      v15 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeightsGradient(a1, a2);
      kaldi::nnet1::UpdatableComponent::ClipGradient(v15, v4);
      v16 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::BiasGradient(a1, a2);
      kaldi::nnet1::UpdatableComponent::ClipGradient(v16, v4);
      if (*(a1 + 208) == 1)
      {
        v17 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeightsGradient(a1, a2);
        kaldi::nnet1::UpdatableComponent::ClipGradient(v17, v4);
      }

      if (*(a1 + 224) == 1)
      {
        v18 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeightsGradient(a1, a2);

        kaldi::nnet1::UpdatableComponent::ClipGradient(v18, v4);
      }
    }
  }

  else if (v6 == 3)
  {
    if (a3 >= 0.0 && a3 <= 1.0)
    {
      v8 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeightsGradient(a1, a2);
      kaldi::nnet1::UpdatableComponent::RmspropGradient(v8, *(a1 + 656) + 48 * a2, v4);
      v9 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeightsGradient(a1, a2);
      kaldi::nnet1::UpdatableComponent::RmspropGradient(v9, *(a1 + 680) + 48 * a2, v4);
      v10 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::BiasGradient(a1, a2);
      kaldi::nnet1::UpdatableComponent::RmspropGradient(v10, *(a1 + 728) + 32 * a2, v4);
      if (*(a1 + 208) == 1)
      {
        v11 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeightsGradient(a1, a2);
        kaldi::nnet1::UpdatableComponent::RmspropGradient(v11, *(a1 + 704) + 48 * a2, v4);
      }

      if (*(a1 + 224) == 1)
      {
        v12 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeightsGradient(a1, a2);
        v13 = *(a1 + 752) + 48 * a2;

        kaldi::nnet1::UpdatableComponent::RmspropGradient(v12, v13, v4);
      }
    }
  }

  else if (a3 > 0.0 && v6 == 2)
  {
    v20 = a2;
    if (*(a1 + 84))
    {
      v4 = *(*(a1 + 480) + 4 * a2) * a3;
    }

    v21 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeightsGradient(a1, a2);
    kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v21, (*(a1 + 656) + 48 * v20), v4);
    v22 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeightsGradient(a1, a2);
    kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v22, (*(a1 + 680) + 48 * v20), v4);
    v23 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::BiasGradient(a1, a2);
    kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v23, (*(a1 + 728) + 32 * v20), v4);
    if (*(a1 + 208) == 1)
    {
      v24 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeightsGradient(a1, a2);
      kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v24, (*(a1 + 704) + 48 * v20), v4);
    }

    if (*(a1 + 224) == 1)
    {
      v25 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeightsGradient(a1, a2);
      v26 = (*(a1 + 752) + 48 * v20);

      kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v25, v26, v4);
    }
  }
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::CountZeroCorr(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::AllocateGradients(a1);
  result = (*(*a1 + 208))(a1);
  *a3 = result;
  if (*(a1 + 544) == *(a1 + 536) || *(a1 + 568) == *(a1 + 560))
  {
    v15 = 0;
    goto LABEL_11;
  }

  if (*(a1 + *(*a1 - 24) + 80) == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(a1 + *(*a1 - 24) + 80);
  }

  v8 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeightsGradient(a1, v7);
  v9 = kaldi::CuMatrixBase<float>::CountZeros(v8);
  v10 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeightsGradient(a1, v7);
  v11 = kaldi::CuMatrixBase<float>::CountZeros(v10) + v9;
  v12 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::BiasGradient(a1, v7);
  result = kaldi::CuVectorBase<float>::CountZeros(v12);
  *a2 = v11 + result;
  if (*(a1 + 208) == 1)
  {
    v13 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeightsGradient(a1, v7);
    result = kaldi::CuMatrixBase<float>::CountZeros(v13);
    *a2 += result;
  }

  if (*(a1 + 224) == 1)
  {
    v14 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeightsGradient(a1, v7);
    result = kaldi::CuMatrixBase<float>::CountZeros(v14);
    v15 = *a2 + result;
LABEL_11:
    *a2 = v15;
  }

  return result;
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::VectorizeWeightsCorrs()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented except for BaseFloat weights");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::EnsureBuffers(uint64_t a1)
{
  if ((*(a1 + 240) & 1) == 0)
  {
    v2 = *(a1 + 80);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 8), v2);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 248), v2);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 272), v2);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 296), v2);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 320), v2);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 344), v2);
    if (v2 >= 1)
    {
      v3 = 0;
      do
      {
        kaldi::CuMatrix<float>::Resize((*(a1 + 8) + v3), *(a1 + 96), (*(a1 + 12 + *(*a1 - 24)) + *(a1 + 176)), 0, 0);
        v3 += 48;
      }

      while (48 * v2 != v3);
    }

    std::vector<int>::resize((a1 + 480), v2);
    *(a1 + 240) = 1;
  }
}

float kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Check(uint64_t a1)
{
  v2 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  if (kaldi::quasar::Vocab::VocabSize(v2) != 4 * *(a1 + 176))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v62);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "Input weights #rows = ", 22);
    v10 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
    v11 = kaldi::quasar::Vocab::VocabSize(v10);
    v12 = MEMORY[0x1B8C84C00](v9, v11);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "; expecting ", 12);
    v14 = MEMORY[0x1B8C84C00](v13, (4 * *(a1 + 176)));
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "; #cells = ", 11);
    MEMORY[0x1B8C84C00](v15, *(a1 + 176));
    goto LABEL_28;
  }

  v3 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  if (kaldi::QuantizedMatrixBase<short>::NumCols(v3) != *(a1 + *(*a1 - 24) + 8))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v62);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "Input weights #columns = ", 25);
    v17 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
    v18 = kaldi::QuantizedMatrixBase<short>::NumCols(v17);
    v19 = MEMORY[0x1B8C84C00](v16, v18);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "; expecting ", 12);
    v21 = MEMORY[0x1B8C84C00](v20, *(a1 + *(*a1 - 24) + 8));
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v21, " (same as input dim)");
    goto LABEL_28;
  }

  v4 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
  if (kaldi::quasar::Vocab::VocabSize(v4) != 4 * *(a1 + 176))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v62);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "Recurrent weights #rows = ", 26);
    v23 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
    v24 = kaldi::quasar::Vocab::VocabSize(v23);
    v25 = MEMORY[0x1B8C84C00](v22, v24);
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "; expecting ", 12);
    v27 = MEMORY[0x1B8C84C00](v26, (4 * *(a1 + 176)));
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "; #cells = ", 11);
    MEMORY[0x1B8C84C00](v28, *(a1 + 176));
    goto LABEL_28;
  }

  v5 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
  if (kaldi::QuantizedMatrixBase<short>::NumCols(v5) != *(a1 + *(*a1 - 24) + 12))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v62);
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "Recurrent weights #columns = ", 29);
    v30 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
    v31 = kaldi::QuantizedMatrixBase<short>::NumCols(v30);
    v32 = MEMORY[0x1B8C84C00](v29, v31);
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "; expecting ", 12);
    v34 = MEMORY[0x1B8C84C00](v33, *(a1 + *(*a1 - 24) + 12));
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v34, " (same as output dim)");
    goto LABEL_28;
  }

  if (*(a1 + 208) == 1)
  {
    if (*(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1) + 20) != 3)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v62);
      v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "Peephole weights #rows = ", 25);
      v42 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1);
      v43 = MEMORY[0x1B8C84C00](v41, *(v42 + 20));
      v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, "; expecting ", 12);
      MEMORY[0x1B8C84C00](v44, 3);
      goto LABEL_28;
    }

    if (*(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1) + 16) != *(a1 + 176))
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v62);
      v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "Peephole weights #columns = ", 28);
      v46 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1);
      v47 = MEMORY[0x1B8C84C00](v45, *(v46 + 16));
      v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "; expecting ", 12);
      v49 = MEMORY[0x1B8C84C00](v48, *(a1 + 176));
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v49, " (same as #cells)");
      goto LABEL_28;
    }
  }

  if (*(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Bias(a1) + 16) != 4 * *(a1 + 176))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v62);
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "Bias dim = ", 11);
    v36 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Bias(a1);
    v37 = MEMORY[0x1B8C84C00](v35, *(v36 + 16));
    v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "; expecting ", 12);
    v39 = MEMORY[0x1B8C84C00](v38, (4 * *(a1 + 176)));
    v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "; #cells = ", 11);
    MEMORY[0x1B8C84C00](v40, *(a1 + 176));
    goto LABEL_28;
  }

  if (*(a1 + 224) == 1)
  {
    v6 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);
    if (kaldi::quasar::Vocab::VocabSize(v6) == *(a1 + *(*a1 - 24) + 12))
    {
      v7 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);
      if (kaldi::QuantizedMatrixBase<short>::NumCols(v7) == *(a1 + 176))
      {
        goto LABEL_12;
      }

      kaldi::KaldiWarnMessage::KaldiWarnMessage(v62);
      v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "Projection weights #columns = ", 30);
      v57 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);
      v58 = kaldi::QuantizedMatrixBase<short>::NumCols(v57);
      v59 = MEMORY[0x1B8C84C00](v56, v58);
      v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, "; expecting ", 12);
      v61 = MEMORY[0x1B8C84C00](v60, *(a1 + 176));
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v61, " (same as #cells)");
    }

    else
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v62);
      v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "Projection weights #rows = ", 27);
      v51 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);
      v52 = kaldi::quasar::Vocab::VocabSize(v51);
      v53 = MEMORY[0x1B8C84C00](v50, v52);
      v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, "; expecting ", 12);
      v55 = MEMORY[0x1B8C84C00](v54, *(a1 + *(*a1 - 24) + 12));
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v55, " (same as output dim)");
    }

LABEL_28:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v62);
  }

LABEL_12:
  if (*(a1 + 464) < 0.0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v62);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "learn_rate_coeff_ must not be negative; found: ", 47);
    std::ostream::operator<<();
    goto LABEL_28;
  }

  if (*(a1 + 468) < 0.0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v62);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "projection_learn_rate_coeff_ must not be negative; found: ", 58);
    std::ostream::operator<<();
    goto LABEL_28;
  }

  if (*(a1 + 472) < 0.0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v62);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "max_norm_ must not be negative; found: ", 39);
    std::ostream::operator<<();
    goto LABEL_28;
  }

  if (*(a1 + 152) < 0.0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v62);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "max_grad_ must not be negative; found: ", 39);
    std::ostream::operator<<();
    goto LABEL_28;
  }

  result = *(a1 + 476);
  if (result < 0.0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v62);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, "max_cell_values_ must not be negative; found: ", 46);
    std::ostream::operator<<();
    goto LABEL_28;
  }

  return result;
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::UpdateWeights(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 64);
  v7 = *(a1 + 68);
  v8 = a1 + *(*a1 - 24);
  v9 = *(v8 + 72);
  v10 = *(v8 + 76);
  *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1) + 32) = a2;
  *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1) + 32) = a2;
  if (*(a1 + 208) == 1)
  {
    *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1) + 32) = a2;
  }

  *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1) + 24) = a2;
  if (*(a1 + 224) == 1)
  {
    *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1) + 32) = a2;
  }

  if (a3 >= 0)
  {
    v11 = a3;
  }

  else
  {
    v11 = *(a1 + *(*a1 - 24) + 80);
  }

  if (*(a1 + *(*a1 - 24) + 80) == 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeightsGradient(a1, v12) + 32) = a2;
  *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeightsGradient(a1, v12) + 32) = a2;
  *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::BiasGradient(a1, v12) + 24) = a2;
  v14 = v12;
  *(*(a1 + 656) + 48 * v12 + 32) = a2;
  *(*(a1 + 680) + 48 * v12 + 32) = a2;
  *(*(a1 + 728) + 32 * v12 + 24) = a2;
  if (*(a1 + 208) == 1)
  {
    *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeightsGradient(a1, v12) + 32) = a2;
    *(*(a1 + 704) + 48 * v12 + 32) = a2;
  }

  if (*(a1 + 224) == 1)
  {
    *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(a1, v12) + 32) = a2;
    *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(a1, v12) + 32) = a2;
  }

  v15 = a1 + 80;
  if (v12 == *(a1 + 80))
  {
    v16 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeightsGradient(a1, v12);
    kaldi::CuMatrixBase<float>::SetZero(v16);
    v17 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeightsGradient(a1, v12);
    kaldi::CuMatrixBase<float>::SetZero(v17);
    v18 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::BiasGradient(a1, v12);
    kaldi::CuVectorBase<float>::SetZero(v18);
    if (*(a1 + 208) == 1)
    {
      v19 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeightsGradient(a1, v12);
      kaldi::CuMatrixBase<float>::SetZero(v19);
    }

    if (*(a1 + 224) == 1)
    {
      v20 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(a1, v12);
      kaldi::CuMatrixBase<float>::SetZero(v20);
    }

    v21 = *a1;
    if (*(v15 + *(*a1 - 24)) >= 1)
    {
      v22 = 0;
      do
      {
        v23 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeightsGradient(a1, v14);
        v24 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeightsGradient(a1, v22);
        kaldi::CuMatrixBase<float>::AddMat(v23, v24, 111, 1.0, 1.0);
        v25 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeightsGradient(a1, v14);
        v26 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeightsGradient(a1, v22);
        kaldi::CuMatrixBase<float>::AddMat(v25, v26, 111, 1.0, 1.0);
        kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::BiasGradient(a1, v14);
        kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::BiasGradient(a1, v22);
        LODWORD(v27) = 1.0;
        kaldi::CuVectorBase<float>::AddVec(v27, 1.0);
        if (*(a1 + 208) == 1)
        {
          v28 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeightsGradient(a1, v14);
          v29 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeightsGradient(a1, v22);
          kaldi::CuMatrixBase<float>::AddMat(v28, v29, 111, 1.0, 1.0);
        }

        if (*(a1 + 224) == 1)
        {
          v30 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(a1, v14);
          v31 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(a1, v22);
          kaldi::CuMatrixBase<float>::AddMat(v30, v31, 111, 1.0, 1.0);
        }

        ++v22;
        v21 = *a1;
      }

      while (v22 < *(v15 + *(*a1 - 24)));
    }

    v32 = *(a1 + 480);
    v32[v14] = 0;
    if (v14 >= 1)
    {
      v33 = 0;
      v34 = v14;
      v35 = v32;
      do
      {
        v36 = *v35++;
        v33 += v36;
        v32[v14] = v33;
        --v34;
      }

      while (v34);
    }
  }

  else
  {
    v21 = *a1;
  }

  v37 = a1 + *(v21 - 24);
  v38 = *(v37 + 56);
  if (*(v37 + 84) == 1)
  {
    *v13.i32 = *(*(a1 + 480) + 4 * v14);
    v38 = v38 / *v13.i32;
  }

  v39 = *(a1 + 504);
  if (v14 >= (*(a1 + 512) - v39) >> 2)
  {
    LODWORD(v67[0]) = 2143289344;
    std::vector<float>::resize((a1 + 504), v14 + 1, v67, v13);
    v39 = *(a1 + 504);
  }

  *(v39 + 4 * v14) = v38;
  if (*(a1 + 152) >= 0.0)
  {
    (*(*a1 + 360))(a1, v14);
  }

  if (v6 != 0.0)
  {
    v40 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1);
    v41 = -(v38 * v6);
    v42 = v41 * *(*(a1 + 480) + 4 * v14);
    v43 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1);
    kaldi::CuMatrixBase<float>::AddMat(v40, v43, 111, v42, 1.0);
    v44 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1);
    v45 = v41 * *(*(a1 + 480) + 4 * v14);
    v46 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1);
    kaldi::CuMatrixBase<float>::AddMat(v44, v46, 111, v45, 1.0);
    kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1);
    kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1);
    *&v47 = v41;
    kaldi::CuVectorBase<float>::AddVec(v47, 1.0);
    if (*(a1 + 208) == 1)
    {
      v48 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
      v49 = v41 * *(*(a1 + 480) + 4 * v14);
      v50 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
      kaldi::CuMatrixBase<float>::AddMat(v48, v50, 111, v49, 1.0);
    }

    if (*(a1 + 224) == 1)
    {
      v51 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1);
      v52 = v41 * *(*(a1 + 480) + 4 * v14);
      v53 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1);
      kaldi::CuMatrixBase<float>::AddMat(v51, v53, 111, v52, 1.0);
    }
  }

  if (v7 != 0.0)
  {
    v54 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1);
    v55 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeightsGradient(a1, v14);
    kaldi::cu::RegularizeL1<float>(v54, v55, (v7 * v38) * *(*(a1 + 480) + 4 * v14), v38);
    v56 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1);
    v57 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeightsGradient(a1, v14);
    kaldi::cu::RegularizeL1<float>(v56, v57, (v7 * v38) * *(*(a1 + 480) + 4 * v14), v38);
    if (*(a1 + 224) == 1)
    {
      v58 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1);
      v59 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(a1, v14);
      kaldi::cu::RegularizeL1<float>(v58, v59, (v7 * v38) * *(*(a1 + 480) + 4 * v14), v38);
    }
  }

  if (v9 > 0.0)
  {
    if (*(a1 + *(*a1 - 24) + 80) >= 2)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v67);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v67, "the multi batch gradient quantization does not work yet");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v67);
    }

    if (*(a1 + 784) == *(a1 + 776))
    {
      kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InitResidualAggregator(a1, (a1 + 776));
    }

    kaldi::nnet1::QuantizerResidualAggregator::Quantize((a1 + 776), v10, v9);
  }

  kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ApplyCorr(a1, v14, v38);
  if (*(a1 + 472) > 0.0)
  {
    v60 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1);
    kaldi::CuMatrixBase<float>::ApplyMaxNorm(v60, 1);
    v61 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1);
    kaldi::CuMatrixBase<float>::ApplyMaxNorm(v61, 1);
    v62 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1);
    kaldi::CuVectorBase<float>::ApplyMaxNorm(v62, *(a1 + 472));
    if (*(a1 + 208) == 1)
    {
      v63 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
      kaldi::CuMatrixBase<float>::ApplyMaxNorm(v63, 1);
    }

    if (*(a1 + 224) == 1)
    {
      v64 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1);
      kaldi::CuMatrixBase<float>::ApplyMaxNorm(v64, 1);
    }
  }

  v65 = *(a1 + 480);
  if (v14 == *(a1 + *(*a1 - 24) + 80))
  {
    v66 = *(a1 + 488);
    if (v65 != v66)
    {
      bzero(v65, v66 - v65);
    }
  }

  else
  {
    *&v65[4 * v14] = 0;
  }
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::VectorizeWeightsCorrs(void *a1)
{
  if (*(a1 + *(*a1 - 24) + 16) != 1)
  {
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v1);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v1, "Performing  vectorization of lstm component", 43);
      kaldi::KaldiLogMessage::~KaldiLogMessage(&v1);
    }

    kaldi::CuSubMatrix<float>::CopyDataAndReplaceWithCuSub();
  }

  kaldi::KaldiWarnMessage::KaldiWarnMessage(&v1);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(&v1, "Weights are already vectorized");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v1);
}

uint64_t std::vector<kaldi::CuVector<float>>::__init_with_size[abi:ne200100]<kaldi::CuVector<float>*,kaldi::CuVector<float>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<kaldi::CuVector<float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B53E3858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<kaldi::CuVector<float>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuVector<float>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<kaldi::CuVector<float>>,kaldi::CuVector<float>*,kaldi::CuVector<float>*,kaldi::CuVector<float>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      kaldi::CuVector<float>::CuVector((a4 + v7), v6);
      v6 += 32;
      v7 += 32;
    }

    while (v6 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_1B53E3914(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<kaldi::CuVector<float>>,kaldi::CuVector<float>*,kaldi::CuVector<float>*,kaldi::CuVector<float>*>(v1 + v2, v1);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<kaldi::CuWorkspace *>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 16))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void *kaldi::CuSubVector<float>::CuSubVector(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  *a1 = &unk_1F2CFCA48;
  v5 = *(a2 + 16);
  if (*(a3 + 16) < v5)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v14);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Insufficient storage area: ", 27);
    v12 = MEMORY[0x1B8C84C00](v11, *(a3 + 16));
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " needed: ", 9);
    MEMORY[0x1B8C84C00](v13, *(a2 + 16));
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v14);
  }

  v7 = *(a3 + 24);
  a1[1] = *(a3 + 8);
  *(a1 + 4) = v5;
  a1[3] = v7;
  kaldi::CuVectorBase<float>::CopyFromVec(a1, a2);
  v8 = *(a2 + 16);
  v9 = *(a3 + 16) - v8;
  *(a3 + 8) += 4 * v8;
  *(a3 + 16) = v9;
  *(a3 + 24) = 0;
  return a1;
}

void std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v14[4] = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    v13 = *(a1 + 16);
    *(a1 + 16) = 0;
    v14[2] = v12;
    v14[3] = v13;
    v14[0] = v12;
    v14[1] = v12;
    std::__split_buffer<std::unique_ptr<kaldi::CuVectorBase<float>>>::~__split_buffer(v14);
  }
}

uint64_t std::__split_buffer<std::unique_ptr<kaldi::CuVectorBase<float>>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__split_buffer<std::unique_ptr<kaldi::CuVectorBase<float>>>::__destruct_at_end[abi:ne200100](void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 16))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t quasar::Decodable::Decodable(uint64_t a1, __int128 *a2)
{
  *a1 = &unk_1F2D10930;
  v3 = (a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v3, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    v3->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v3->__r_.__value_.__l.__data_ = v4;
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  return a1;
}

void quasar::Decodable::init(quasar::Decodable *this, quasar::SystemConfig *a2)
{
  if (!*(this + 26))
  {
    if (*(this + 31) >= 0)
    {
      v4 = *(this + 31);
    }

    else
    {
      v4 = *(this + 2);
    }

    v5 = __p;
    std::string::basic_string[abi:ne200100](__p, v4 + 1);
    if (SBYTE7(v16) < 0)
    {
      v5 = __p[0];
    }

    if (v4)
    {
      if (*(this + 31) >= 0)
      {
        v6 = this + 8;
      }

      else
      {
        v6 = *(this + 1);
      }

      memmove(v5, v6, v4);
    }

    *(v5 + v4) = 46;
    quasar::SystemConfig::setPrefix(a2, __p);
    if (SBYTE7(v16) < 0)
    {
      operator delete(__p[0]);
    }

    (**this)(this, a2);
    quasar::SystemConfig::readPtree(a2, this + 8);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  *__p = 0u;
  kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Parameters for ", 15);
  v10 = *(this + 1);
  v9 = this + 8;
  v8 = v10;
  v11 = v9[23];
  if (v11 >= 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

  if (v11 >= 0)
  {
    v13 = v9[23];
  }

  else
  {
    v13 = *(v9 + 1);
  }

  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v12, v13);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v14, " have already been registered.");
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
}

void sub_1B53E3F88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::Decodable::~Decodable(void **this)
{
  *this = &unk_1F2D10930;
  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  kaldi::Vector<float>::Destroy((this + 7));
  v2 = this[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

uint64_t quasar::Decodable::createDecodable(quasar::Decodable *this, kaldi::OnlineFeatureMatrix *a2)
{
  if (*(this + 26) != 1)
  {
    memset(v10, 0, sizeof(v10));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v10);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Must first call init() for ", 27);
    v5 = *(this + 31);
    if (v5 >= 0)
    {
      v6 = this + 8;
    }

    else
    {
      v6 = *(this + 1);
    }

    if (v5 >= 0)
    {
      v7 = *(this + 31);
    }

    else
    {
      v7 = *(this + 2);
    }

    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v8, " before calling createDecodable().");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v10);
  }

  v2 = *(*this + 16);

  return v2();
}

void quasar::Decodable::createDecodable(std::string *this@<X0>, void *a2@<X8>)
{
  if (quasar::gLogLevel >= 5)
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    memset(v41, 0, sizeof(v41));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v41);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "Building Decodable ", 19);
    v5 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if (v5 >= 0)
    {
      v6 = this;
    }

    else
    {
      v6 = this->__r_.__value_.__r.__words[0];
    }

    if (v5 >= 0)
    {
      size = HIBYTE(this->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = this->__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, size);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(v41);
  }

  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v41, this->__r_.__value_.__l.__data_, this->__r_.__value_.__l.__size_);
  }

  else
  {
    *v41 = *&this->__r_.__value_.__l.__data_;
    *&v41[16] = *(&this->__r_.__value_.__l + 2);
  }

  v8 = std::string::rfind(this, 46, 0xFFFFFFFFFFFFFFFFLL);
  if (v8 != -1)
  {
    std::string::basic_string(&v40, this, v8 + 1, 0xFFFFFFFFFFFFFFFFLL, &v39);
    if ((v41[23] & 0x80000000) != 0)
    {
      operator delete(*v41);
    }

    *v41 = v40;
  }

  *a2 = 0;
  a2[1] = 0;
  if ((v41[23] & 0x80) != 0)
  {
    if (*&v41[8] != 13 || (**v41 == 0x732D78697274616DLL ? (v10 = *(*v41 + 5) == 0x64656C6163732D78) : (v10 = 0), !v10))
    {
      v11 = *&v41[8];
      if (*&v41[8] == 23)
      {
LABEL_39:
        if (**v41 == 0x732D78697274616DLL && *(*v41 + 8) == 0x616D2D64656C6163 && *(*v41 + 15) == 0x6D742D6465707061)
        {
          std::allocate_shared[abi:ne200100]<quasar::OnlineDecodableMatrixScaledMappedTmDecodable,std::allocator<quasar::OnlineDecodableMatrixScaledMappedTmDecodable>,std::string const&,0>();
        }

        goto LABEL_96;
      }

      if (*&v41[8] != 20)
      {
LABEL_67:
        if (v11 == 5)
        {
          if (**v41 != 1835890020 || *(*v41 + 4) != 121)
          {
            goto LABEL_96;
          }

LABEL_95:
          std::allocate_shared[abi:ne200100]<quasar::OnlineDecodableIdenticalMatrixDecodable,std::allocator<quasar::OnlineDecodableIdenticalMatrixDecodable>,std::string const&,0>();
        }

        if (v11 == 10)
        {
          v9 = *v41;
LABEL_84:
          v23 = *v9;
          v24 = *(v9 + 4);
          if (v23 == 0x616C2D3174656E6ELL && v24 == 31098)
          {
            std::allocate_shared[abi:ne200100]<quasar::OnlineDecodableNnet1LazyDecodable,std::allocator<quasar::OnlineDecodableNnet1LazyDecodable>,std::string const&,0>();
          }

LABEL_96:
          exception = __cxa_allocate_exception(0x20uLL);
          std::operator+<char>();
          v28 = std::string::append(&v37, " in ");
          v29 = *&v28->__r_.__value_.__l.__data_;
          v38.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
          *&v38.__r_.__value_.__l.__data_ = v29;
          v28->__r_.__value_.__l.__size_ = 0;
          v28->__r_.__value_.__r.__words[2] = 0;
          v28->__r_.__value_.__r.__words[0] = 0;
          v30 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
          if (v30 >= 0)
          {
            v31 = this;
          }

          else
          {
            v31 = this->__r_.__value_.__r.__words[0];
          }

          if (v30 >= 0)
          {
            v32 = HIBYTE(this->__r_.__value_.__r.__words[2]);
          }

          else
          {
            v32 = this->__r_.__value_.__l.__size_;
          }

          v33 = std::string::append(&v38, v31, v32);
          v34 = *&v33->__r_.__value_.__l.__data_;
          v39.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
          *&v39.__r_.__value_.__l.__data_ = v34;
          v33->__r_.__value_.__l.__size_ = 0;
          v33->__r_.__value_.__r.__words[2] = 0;
          v33->__r_.__value_.__r.__words[0] = 0;
          v35 = std::string::append(&v39, "");
          v36 = *&v35->__r_.__value_.__l.__data_;
          v40.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
          *&v40.__r_.__value_.__l.__data_ = v36;
          v35->__r_.__value_.__l.__size_ = 0;
          v35->__r_.__value_.__r.__words[2] = 0;
          v35->__r_.__value_.__r.__words[0] = 0;
          quasar::PTree::Error::Error(exception, &v40);
        }

        if (v11 != 14)
        {
          goto LABEL_96;
        }

        if (**v41 == 0x696C6E6F2D637463 && *(*v41 + 6) == 0x64776B2D656E696CLL)
        {
          goto LABEL_95;
        }

        if ((v41[23] & 0x80) != 0)
        {
          goto LABEL_96;
        }

        if (v41[23] != 5)
        {
          if (v41[23] != 10)
          {
            goto LABEL_96;
          }

LABEL_77:
          v9 = v41;
          goto LABEL_84;
        }

LABEL_78:
        if (*v41 != 1835890020 || v41[4] != 121)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      }

      v9 = *v41;
LABEL_30:
      v12 = *v9;
      v13 = *(v9 + 1);
      v14 = *(v9 + 4);
      if (v12 == 0x732D78697274616DLL && v13 == 0x616D2D64656C6163 && v14 == 1684369520)
      {
        std::allocate_shared[abi:ne200100]<quasar::OnlineDecodableMatrixScaledMappedDecodable,std::allocator<quasar::OnlineDecodableMatrixScaledMappedDecodable>,std::string const&,0>();
      }

      v11 = *&v41[8];
      if ((v41[23] & 0x80) != 0 && *&v41[8] == 23)
      {
        goto LABEL_39;
      }

      if ((v41[23] & 0x80) == 0)
      {
        if (v41[23] != 5)
        {
          if (v41[23] != 10)
          {
            if (v41[23] != 14)
            {
              goto LABEL_96;
            }

LABEL_62:
            if (*v41 != 0x696C6E6F2D637463 || *&v41[6] != 0x64776B2D656E696CLL)
            {
              goto LABEL_96;
            }

            goto LABEL_95;
          }

          goto LABEL_77;
        }

        goto LABEL_78;
      }

      goto LABEL_67;
    }
  }

  else
  {
    v9 = v41;
    if (v41[23] <= 0xCu)
    {
      if (v41[23] != 5)
      {
        if (v41[23] != 10)
        {
          goto LABEL_96;
        }

        goto LABEL_84;
      }

      goto LABEL_78;
    }

    if (v41[23] != 13)
    {
      if (v41[23] == 14)
      {
        goto LABEL_62;
      }

      if (v41[23] != 20)
      {
        goto LABEL_96;
      }

      goto LABEL_30;
    }

    if (*v41 != 0x732D78697274616DLL || *&v41[5] != 0x64656C6163732D78)
    {
      goto LABEL_96;
    }
  }

  std::allocate_shared[abi:ne200100]<quasar::OnlineDecodableMatrixScaledDecodable,std::allocator<quasar::OnlineDecodableMatrixScaledDecodable>,std::string const&,0>();
}

void sub_1B53E4644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v43 & 1) == 0)
    {
LABEL_12:
      if (a42 < 0)
      {
        operator delete(a37);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v43)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v42);
  goto LABEL_12;
}

uint64_t std::__shared_ptr_emplace<quasar::OnlineDecodableMatrixScaledDecodable>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::OnlineDecodableMatrixScaledDecodable>,0>(uint64_t a1, __int128 *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F2D10978;
  quasar::Decodable::Decodable(a1 + 24, a2);
  *(a1 + 24) = &unk_1F2D109C8;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  return a1;
}

void std::__shared_ptr_emplace<quasar::OnlineDecodableMatrixScaledDecodable>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D10978;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t quasar::OnlineDecodableMatrixScaledDecodable::registerParams(quasar::OnlineDecodableMatrixScaledDecodable *this, quasar::SystemConfig *a2)
{
  std::string::basic_string[abi:ne200100]<0>(v7, "am-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "Acoustic model (transition model) filename (only used for lattice stuff)");
  (*(*a2 + 40))(a2, v7, this + 80, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "am-scale");
  std::string::basic_string[abi:ne200100]<0>(__p, "Scaling factor for acoustic likelihoods");
  (*(*a2 + 24))(a2, v7, this + 48, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v7, "tid2pdf-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "Text file of ints representing PDF IDs for transition IDs 0, 1, 2, ... ");
  (*(*a2 + 40))(a2, v7, this + 112, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  MEMORY[0x1B8C84820](this + 80, "");
  *(this + 12) = 1036831949;
  return MEMORY[0x1B8C84820](this + 112, "");
}

void sub_1B53E4A64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::OnlineDecodableMatrixScaledDecodable::finishInit(quasar::OnlineDecodableMatrixScaledDecodable *this, quasar::ModelLoader *a2)
{
  v9[20] = *MEMORY[0x1E69E9840];
  quasar::ModelLoader::readTransitionModel(a2, this + 10, 1, &v7);
  v3 = v7;
  v7 = 0uLL;
  v4 = *(this + 5);
  *(this + 2) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    if (*(&v7 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v7 + 1));
    }
  }

  if (quasar::gLogLevel >= 5)
  {
    memset(v8, 0, 256);
    v7 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v7, "Read transModel", 15);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v7);
  }

  std::ifstream::basic_ifstream(&v7);
  kaldi::ReadIntegerVector<int>(&v7, 0, (this + 136), 0, 0, 0, 0);
  if (quasar::gLogLevel >= 5)
  {
    memset(v6, 0, sizeof(v6));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Using TID2PDF file", 18);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(v6);
  }

  *&v7 = *MEMORY[0x1E69E54C8];
  *(&v8[-1] + *(v7 - 24)) = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x1B8C84A00](v8);
  std::istream::~istream();
  return MEMORY[0x1B8C85200](v9);
}

void sub_1B53E4CD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  quasar::QuasarDebugMessage::~QuasarDebugMessage(&a9);
  std::ifstream::~ifstream(&a43, MEMORY[0x1E69E54C8]);
  MEMORY[0x1B8C85200](&STACK[0x2B8]);
  _Unwind_Resume(a1);
}

void sub_1B53E4E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  quasar::QuasarDebugMessage::~QuasarDebugMessage(&a9);
  v11 = *(v9 + 8);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(a1);
}

void quasar::OnlineDecodableMatrixScaledDecodable::~OnlineDecodableMatrixScaledDecodable(quasar::OnlineDecodableMatrixScaledDecodable *this)
{
  *this = &unk_1F2D109C8;
  v2 = *(this + 17);
  if (v2)
  {
    *(this + 18) = v2;
    operator delete(v2);
  }

  if (*(this + 135) < 0)
  {
    operator delete(*(this + 14));
  }

  quasar::Decodable::~Decodable(this);
}

{
  *this = &unk_1F2D109C8;
  v2 = *(this + 17);
  if (v2)
  {
    *(this + 18) = v2;
    operator delete(v2);
  }

  if (*(this + 135) < 0)
  {
    operator delete(*(this + 14));
  }

  quasar::Decodable::~Decodable(this);

  JUMPOUT(0x1B8C85350);
}

uint64_t kaldi::OnlineDecodableMatrixScaled::OnlineDecodableMatrixScaled(uint64_t a1, uint64_t *a2, uint64_t a3, float a4)
{
  *a1 = &unk_1F2D2EA90;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 8, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(a1 + 32) = a4;
  *(a1 + 40) = a3;
  *(a1 + 48) = *(a3 + 24);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  *(a1 + 80) = -1;
  return a1;
}

void sub_1B53E503C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<kaldi::DecodableInterface>::shared_ptr[abi:ne200100]<kaldi::OnlineDecodableMatrixScaled,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<kaldi::OnlineDecodableMatrixScaled *,std::shared_ptr<kaldi::DecodableInterface>::__shared_ptr_default_delete<kaldi::DecodableInterface,kaldi::OnlineDecodableMatrixScaled>,std::allocator<kaldi::OnlineDecodableMatrixScaled>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<kaldi::OnlineDecodableMatrixScaled *,std::shared_ptr<kaldi::DecodableInterface>::__shared_ptr_default_delete<kaldi::DecodableInterface,kaldi::OnlineDecodableMatrixScaled>,std::allocator<kaldi::OnlineDecodableMatrixScaled>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 96))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<kaldi::OnlineDecodableMatrixScaled *,std::shared_ptr<kaldi::DecodableInterface>::__shared_ptr_default_delete<kaldi::DecodableInterface,kaldi::OnlineDecodableMatrixScaled>,std::allocator<kaldi::OnlineDecodableMatrixScaled>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_emplace<quasar::OnlineDecodableMatrixScaledMappedDecodable>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::OnlineDecodableMatrixScaledMappedDecodable>,0>(uint64_t a1, __int128 *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F2D10A90;
  quasar::Decodable::Decodable(a1 + 24, a2);
  *(a1 + 24) = &unk_1F2D10AE0;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 188) = 2139095040;
  *(a1 + 192) = 0;
  return a1;
}

void std::__shared_ptr_emplace<quasar::OnlineDecodableMatrixScaledMappedDecodable>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D10A90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t quasar::OnlineDecodableMatrixScaledMappedDecodable::registerParams(quasar::OnlineDecodableMatrixScaledMappedDecodable *this, const void **a2)
{
  std::operator+<char>();
  v4 = std::string::append(&v7, "");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v9 = v4->__r_.__value_.__r.__words[2];
  *__p = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  quasar::SystemConfig::enforceMinVersion(a2, 4, 0, __p);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "am-file");
  std::string::basic_string[abi:ne200100]<0>(&v7, "Acoustic model (transition model) filename");
  quasar::SystemConfig::Register<std::string>(a2, __p, this + 80, &v7, 1, 4, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "am-scale");
  std::string::basic_string[abi:ne200100]<0>(&v7, "Scaling factor for acoustic likelihoods");
  quasar::SystemConfig::Register<float>(a2, __p, this + 48, &v7, 0, 4, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "ilabel-score-file");
  std::string::basic_string[abi:ne200100]<0>(&v7, "The ilabel score file for dynamic T.");
  quasar::SystemConfig::Register<std::string>(a2, __p, this + 112, &v7, 0, 189, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "internal-lm-substraction");
  std::string::basic_string[abi:ne200100]<0>(&v7, "When this value is true, the decoder will substract internal lm score from am model.");
  quasar::SystemConfig::Register<BOOL>(a2, __p, this + 160, &v7, 0, 189, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "cost-cutoff");
  std::string::basic_string[abi:ne200100]<0>(&v7, "The cost cutoff for the am neg loglikelihood. It is applied before am scaling.");
  quasar::SystemConfig::Register<float>(a2, __p, this + 164, &v7, 0, 189, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "skip-pdf-size-check");
  std::string::basic_string[abi:ne200100]<0>(&v7, "Skip pdf size check when the decodable is just a placeholder");
  quasar::SystemConfig::Register<BOOL>(a2, __p, this + 168, &v7, 0, 271, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  MEMORY[0x1B8C84820](this + 80, "");
  result = MEMORY[0x1B8C84820](this + 112, "");
  *(this + 12) = 1036831949;
  return result;
}

void sub_1B53E55F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B53E564C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    JUMPOUT(0x1B53E5640);
  }

  JUMPOUT(0x1B53E5644);
}

void quasar::OnlineDecodableMatrixScaledMappedDecodable::finishInit(const void **this, quasar::ModelLoader *a2)
{
  quasar::ModelLoader::readTransitionModel(a2, this + 10, 1, v6);
  v3 = v6[0];
  v6[0] = 0uLL;
  v4 = this[5];
  *(this + 2) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    if (*(&v6[0] + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v6[0] + 1));
    }
  }

  if (quasar::gLogLevel >= 5)
  {
    memset(v6, 0, sizeof(v6));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Read transModel", 15);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(v6);
  }

  if ((*(this + 135) & 0x8000000000000000) != 0)
  {
    if (!this[15])
    {
      return;
    }

    goto LABEL_10;
  }

  if (*(this + 135))
  {
LABEL_10:
    *&v6[0] = 0;
    kaldi::Input::OpenInternal(v6, (this + 14), 0, 0);
    v5 = kaldi::Input::Stream(v6);
    kaldi::Vector<float>::Read((this + 17), v5, 0, 0);
    kaldi::Input::Close(v6);
    kaldi::Input::~Input(v6);
  }
}

void sub_1B53E5880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  quasar::QuasarDebugMessage::~QuasarDebugMessage(&a9);
  v11 = *(v9 - 40);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(a1);
}

void quasar::OnlineDecodableMatrixScaledMappedDecodable::~OnlineDecodableMatrixScaledMappedDecodable(void **this)
{
  *this = &unk_1F2D10AE0;
  kaldi::Vector<float>::Destroy((this + 17));
  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  quasar::Decodable::~Decodable(this);
}

{
  *this = &unk_1F2D10AE0;
  kaldi::Vector<float>::Destroy((this + 17));
  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  quasar::Decodable::~Decodable(this);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<kaldi::OnlineDecodableMatrixScaledMapped>::__shared_ptr_emplace[abi:ne200100]<kaldi::TransitionModel &,float &,kaldi::OnlineFeatureMatrix *,BOOL &,float &,kaldi::Vector<float> &,BOOL &,std::allocator<kaldi::OnlineDecodableMatrixScaledMapped>,0>(void *a1, uint64_t a2, float *a3, kaldi::OnlineFeatureMatrix **a4, char *a5, float *a6, uint64_t a7, char *a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D10B30;
  std::allocator<kaldi::OnlineDecodableMatrixScaledMapped>::construct[abi:ne200100]<kaldi::OnlineDecodableMatrixScaledMapped,kaldi::TransitionModel &,float &,kaldi::OnlineFeatureMatrix *,BOOL &,float &,kaldi::Vector<float> &,BOOL &>(&v10, (a1 + 3), a2, a3, a4, a5, a6, a7, a8);
  return a1;
}

void std::__shared_ptr_emplace<kaldi::OnlineDecodableMatrixScaledMapped>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D10B30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::allocator<kaldi::OnlineDecodableMatrixScaledMapped>::construct[abi:ne200100]<kaldi::OnlineDecodableMatrixScaledMapped,kaldi::TransitionModel &,float &,kaldi::OnlineFeatureMatrix *,BOOL &,float &,kaldi::Vector<float> &,BOOL &>(uint64_t a1, uint64_t a2, uint64_t a3, float *a4, kaldi::OnlineFeatureMatrix **a5, char *a6, float *a7, uint64_t a8, char *a9)
{
  v12 = *a4;
  v13 = *a5;
  v14 = *a6;
  v15 = *a7;
  memset(v16, 0, sizeof(v16));
  kaldi::Vector<float>::Resize(v16, *(a8 + 8), 1);
  kaldi::VectorBase<float>::CopyFromVec(v16, a8);
  kaldi::OnlineDecodableMatrixScaledMapped::OnlineDecodableMatrixScaledMapped(a2, a3, v13, v14, v16, *a9, v12, v15);
  kaldi::Vector<float>::Destroy(v16);
}

void sub_1B53E5C18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::OnlineDecodableMatrixScaledMapped::OnlineDecodableMatrixScaledMapped(uint64_t a1, uint64_t a2, kaldi::OnlineFeatureMatrix *a3, char a4, uint64_t a5, char a6, float a7, float a8)
{
  *a1 = &unk_1F2D2EB08;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a7;
  *(a1 + 28) = a4;
  *(a1 + 32) = a8;
  *(a1 + 40) = 0;
  v13 = a1 + 40;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  kaldi::Vector<float>::Resize((a1 + 40), *(a5 + 8), 1);
  kaldi::VectorBase<float>::CopyFromVec(v13, a5);
  v14 = *(a3 + 6);
  *(a1 + 72) = 0u;
  *(a1 + 64) = v14;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 124) = -1;
  *(a1 + 128) = kaldi::OnlineFeatureMatrix::HasSilencePosterior(a3);
  *(a1 + 129) = kaldi::OnlineFeatureMatrix::HasEndpointerScore(a3);
  if ((a6 & 1) == 0 && *(a3 + 6) < *(a2 + 240))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v20);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "OnlineDecodableMatrixScaledMapped: mismatch, matrix has ", 56);
    v17 = MEMORY[0x1B8C84C00](v16, *(a3 + 6));
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " rows but transition-model has ", 31);
    v19 = MEMORY[0x1B8C84C00](v18, *(a2 + 240));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " pdf-ids.", 9);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v20);
  }

  return a1;
}

void sub_1B53E5D8C(_Unwind_Exception *a1)
{
  kaldi::Vector<float>::Destroy(v3 + 24);
  kaldi::Vector<float>::Destroy(v3);
  kaldi::Vector<float>::Destroy(v2);
  quasar::Bitmap::~Bitmap(v1);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<quasar::OnlineDecodableMatrixScaledMappedTmDecodable>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::OnlineDecodableMatrixScaledMappedTmDecodable>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D10B80;
  quasar::Decodable::Decodable((a1 + 3), a2);
  a1[3] = &unk_1F2D10BD0;
  return a1;
}

void std::__shared_ptr_emplace<quasar::OnlineDecodableMatrixScaledMappedTmDecodable>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D10B80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t quasar::OnlineDecodableMatrixScaledMappedTmDecodable::registerParams(quasar::OnlineDecodableMatrixScaledMappedTmDecodable *this, const void **a2)
{
  std::operator+<char>();
  v4 = std::string::append(&v7, "");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v9 = v4->__r_.__value_.__r.__words[2];
  *__p = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  quasar::SystemConfig::enforceMinVersion(a2, 6, 0, __p);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "am-file");
  std::string::basic_string[abi:ne200100]<0>(&v7, "Acoustic model (transition model) filename");
  quasar::SystemConfig::Register<std::string>(a2, __p, this + 80, &v7, 1, 6, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "am-scale");
  std::string::basic_string[abi:ne200100]<0>(&v7, "Scaling factor for acoustic likelihoods");
  quasar::SystemConfig::Register<float>(a2, __p, this + 48, &v7, 0, 6, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "tm-weight");
  std::string::basic_string[abi:ne200100]<0>(&v7, "Weight factor for tm likelihoods");
  quasar::SystemConfig::Register<float>(a2, __p, this + 108, &v7, 0, 6, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  result = MEMORY[0x1B8C84820](this + 80, "");
  *(this + 12) = 1036831949;
  *(this + 27) = 1065353216;
  return result;
}

void sub_1B53E6154(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void quasar::OnlineDecodableMatrixScaledMappedTmDecodable::finishInit(const void **this, quasar::ModelLoader *a2)
{
  quasar::ModelLoader::readTransitionModel(a2, this + 10, 1, v5);
  v3 = v5[0];
  v5[0] = 0uLL;
  v4 = this[5];
  *(this + 2) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    if (*(&v5[0] + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v5[0] + 1));
    }
  }

  if (quasar::gLogLevel >= 5)
  {
    memset(v5, 0, sizeof(v5));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Read transModel", 15);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(v5);
  }
}

void sub_1B53E6354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  quasar::QuasarDebugMessage::~QuasarDebugMessage(&a9);
  v11 = *(v9 - 40);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(a1);
}

void quasar::OnlineDecodableMatrixScaledMappedTmDecodable::~OnlineDecodableMatrixScaledMappedTmDecodable(void **this)
{
  quasar::Decodable::~Decodable(this);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<kaldi::OnlineDecodableMatrixScaledMappedTm>::__shared_ptr_emplace[abi:ne200100]<kaldi::TransitionModel &,float &,kaldi::OnlineFeatureMatrix *,float &,std::allocator<kaldi::OnlineDecodableMatrixScaledMappedTm>,0>(void *a1, const kaldi::TransitionModel *a2, float *a3, kaldi::OnlineFeatureMatrix **a4, float *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D10C20;
  kaldi::OnlineDecodableMatrixScaledMappedTm::OnlineDecodableMatrixScaledMappedTm((a1 + 3), a2, *a3, *a4, *a5);
  return a1;
}

void std::__shared_ptr_emplace<kaldi::OnlineDecodableMatrixScaledMappedTm>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D10C20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

kaldi::OnlineDecodableMatrixScaledMappedTm *kaldi::OnlineDecodableMatrixScaledMappedTm::OnlineDecodableMatrixScaledMappedTm(kaldi::OnlineDecodableMatrixScaledMappedTm *this, const kaldi::TransitionModel *a2, float a3, kaldi::OnlineFeatureMatrix *a4, float a5)
{
  memset(v9, 0, sizeof(v9));
  kaldi::OnlineDecodableMatrixScaledMapped::OnlineDecodableMatrixScaledMapped(this, a2, a4, 0, v9, 0, a3, INFINITY);
  kaldi::Vector<float>::Destroy(v9);
  *this = &unk_1F2D2EBC8;
  *(this + 33) = a5;
  *(this + 34) = *(a2 + 60);
  return this;
}

void sub_1B53E65D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<quasar::OnlineDecodableIdenticalMatrixDecodable>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::OnlineDecodableIdenticalMatrixDecodable>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D10C70;
  quasar::Decodable::Decodable((a1 + 3), a2);
  a1[3] = &unk_1F2D10CC0;
  return a1;
}

void std::__shared_ptr_emplace<quasar::OnlineDecodableIdenticalMatrixDecodable>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D10C70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void sub_1B53E685C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  quasar::QuasarDebugMessage::~QuasarDebugMessage(&a9);
  v11 = *(v9 + 8);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(a1);
}

void quasar::OnlineDecodableIdenticalMatrixDecodable::~OnlineDecodableIdenticalMatrixDecodable(void **this)
{
  quasar::Decodable::~Decodable(this);

  JUMPOUT(0x1B8C85350);
}

void sub_1B53E6928(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<kaldi::DecodableInterface>::shared_ptr[abi:ne200100]<kaldi::OnlineDecodableMatrixScaled,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<kaldi::OnlineDecodableIdenticalMatrix *,std::shared_ptr<kaldi::DecodableInterface>::__shared_ptr_default_delete<kaldi::DecodableInterface,kaldi::OnlineDecodableIdenticalMatrix>,std::allocator<kaldi::OnlineDecodableIdenticalMatrix>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<kaldi::OnlineDecodableIdenticalMatrix *,std::shared_ptr<kaldi::DecodableInterface>::__shared_ptr_default_delete<kaldi::DecodableInterface,kaldi::OnlineDecodableIdenticalMatrix>,std::allocator<kaldi::OnlineDecodableIdenticalMatrix>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 96))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<kaldi::OnlineDecodableIdenticalMatrix *,std::shared_ptr<kaldi::DecodableInterface>::__shared_ptr_default_delete<kaldi::DecodableInterface,kaldi::OnlineDecodableIdenticalMatrix>,std::allocator<kaldi::OnlineDecodableIdenticalMatrix>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<quasar::OnlineDecodableNnet1LazyDecodable>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::OnlineDecodableNnet1LazyDecodable>,0>(void *a1, __int128 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D10D88;
  quasar::OnlineDecodableNnet1LazyDecodable::OnlineDecodableNnet1LazyDecodable((a1 + 3), a2);
}

void std::__shared_ptr_emplace<quasar::OnlineDecodableNnet1LazyDecodable>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D10D88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void quasar::OnlineDecodableNnet1LazyDecodable::OnlineDecodableNnet1LazyDecodable(uint64_t a1, __int128 *a2)
{
  v3 = quasar::Decodable::Decodable(a1, a2);
  *v3 = &unk_1F2D10DD8;
  *(v3 + 112) = 0u;
  *(v3 + 200) = 0;
  *(v3 + 208) = 0;
  *(v3 + 216) = 0;
  *(v3 + 232) = 0;
  *(v3 + 240) = 0;
  *(v3 + 248) = 0;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0u;
  *(v3 + 176) = 0;
  *(v3 + 280) = 0u;
  *(v3 + 296) = 0u;
  *(v3 + 312) = 0u;
  std::string::basic_string[abi:ne200100]<0>((v3 + 328), "");
  *(a1 + 352) = 0x2EDBE6FF3F800000;
  std::string::basic_string[abi:ne200100]<0>((a1 + 360), "");
  *(a1 + 384) = 0x2EDBE6FF3F800000;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  kaldi::nnet1::Nnet::Nnet((a1 + 424));
}

void sub_1B53E6C38(_Unwind_Exception *a1)
{
  v7 = *(v1 + 416);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(v1 + 400);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (*(v1 + 383) < 0)
  {
    operator delete(*(v1 + 360));
  }

  if (*(v1 + 351) < 0)
  {
    operator delete(*(v1 + 328));
  }

  if (*(v1 + 327) < 0)
  {
    operator delete(*(v1 + 304));
  }

  if (*(v1 + 303) < 0)
  {
    operator delete(*v5);
  }

  if (*(v1 + 255) < 0)
  {
    operator delete(*v4);
  }

  if (*(v1 + 223) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 183) < 0)
  {
    operator delete(*(v1 + 160));
  }

  if (*(v1 + 159) < 0)
  {
    operator delete(*(v1 + 136));
  }

  if (*(v1 + 135) < 0)
  {
    operator delete(*v2);
  }

  quasar::Decodable::~Decodable(v1);
  _Unwind_Resume(a1);
}

uint64_t quasar::OnlineDecodableNnet1LazyDecodable::registerParams(quasar::OnlineDecodableNnet1LazyDecodable *this, const void **a2)
{
  std::operator+<char>();
  v4 = std::string::append(&v7, "");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v9 = v4->__r_.__value_.__r.__words[2];
  *__p = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  quasar::SystemConfig::enforceMinVersion(a2, 13, 0, __p);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  kaldi::nnet1::PdfPriorOptions::Register(this + 328, a2);
  kaldi::nnet1::PdfPriorOptions::Register(this + 360, a2);
  std::string::basic_string[abi:ne200100]<0>(__p, "am-file");
  std::string::basic_string[abi:ne200100]<0>(&v7, "Acoustic model (transition model) filename");
  quasar::SystemConfig::Register<std::string>(a2, __p, this + 112, &v7, 1, 13, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "am-scale");
  std::string::basic_string[abi:ne200100]<0>(&v7, "Scaling factor for acoustic likelihoods");
  quasar::SystemConfig::Register<float>(a2, __p, this + 48, &v7, 0, 13, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "class-frame-counts-file");
  std::string::basic_string[abi:ne200100]<0>(&v7, "File containing vector with frame-counts of pdfs to compute log-priors. This is the same as class-frame-counts, but allows paths that are relative to the json config file (class-frame-counts requires absolute paths). If class-frame-counts is also specified, this param will override it.");
  quasar::SystemConfig::Register<std::string>(a2, __p, this + 328, &v7, 0, 13, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "enable-memory-map");
  std::string::basic_string[abi:ne200100]<0>(&v7, "Map model into memory (requires aligned models)");
  quasar::SystemConfig::Register<BOOL>(a2, __p, this + 188, &v7, 0, 13, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "model-file");
  std::string::basic_string[abi:ne200100]<0>(&v7, "Name of nnet model file");
  quasar::SystemConfig::Register<std::string>(a2, __p, this + 136, &v7, 1, 13, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "transform-file");
  std::string::basic_string[abi:ne200100]<0>(&v7, "File for feature transform in front of nnet's main network (in nnet format)");
  quasar::SystemConfig::Register<std::string>(a2, __p, this + 160, &v7, 0, 13, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "skip-frames");
  std::string::basic_string[abi:ne200100]<0>(&v7, "Number of frames to be skipped in nnet computation.");
  quasar::SystemConfig::Register<int>(a2, __p, this + 184, &v7, 0, 13, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "use-gpu-id");
  std::string::basic_string[abi:ne200100]<0>(&v7, "Unused, kaldi is compiled w/o CUDA");
  quasar::SystemConfig::Register<int>(a2, __p, this + 192, &v7, 0, 13, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "silence-model-file");
  std::string::basic_string[abi:ne200100]<0>(&v7, "Name of nnet model file for computing silence posteriors");
  quasar::SystemConfig::Register<std::string>(a2, __p, this + 200, &v7, 0, 13, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "compute-sil-model-posteriors-from-realign-model");
  std::string::basic_string[abi:ne200100]<0>(&v7, "True if penultimate activations from realign model are the input to the silence model, otherwise use the penultimate activations from the main acoustic model");
  quasar::SystemConfig::Register<BOOL>(a2, __p, this + 224, &v7, 0, 60, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "workspace-size-kb");
  std::string::basic_string[abi:ne200100]<0>(&v7, "Workspace size in Kilo Bytes");
  quasar::SystemConfig::Register<long long>(a2, __p, this + 864, &v7, 0, 13, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "realign-model-file");
  std::string::basic_string[abi:ne200100]<0>(&v7, "Name of nnet model file for computing posteriors for later realignment of 1st/2nd pass lattices");
  quasar::SystemConfig::Register<std::string>(a2, __p, this + 232, &v7, 0, 58, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "realign-class-frame-counts-file");
  std::string::basic_string[abi:ne200100]<0>(&v7, "File containing vector with frame counts of pdfs to compute log-priors. This is the same as class-frame-counts, but allows paths that are relative to the json config file (class-frame-counts requires absolute paths). If class-frame-counts is also specified, this param will override it.");
  quasar::SystemConfig::Register<std::string>(a2, __p, this + 360, &v7, 0, 58, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "compute-realign-model-posteriors-from-penultimate");
  std::string::basic_string[abi:ne200100]<0>(&v7, "True if penultimate activations from main acoustic model are the input to the realignment model, otherwise use the same features as the main acoustic model as input");
  quasar::SystemConfig::Register<BOOL>(a2, __p, this + 256, &v7, 0, 58, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "skip-blanks-threshold");
  std::string::basic_string[abi:ne200100]<0>(&v7, "Threshold for skipping frames with a CTC trained acoustic model, applied to posterior probability of the blank symbol");
  quasar::SystemConfig::Register<float>(a2, __p, this + 260, &v7, 0, 58, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "blank-pdf-id");
  std::string::basic_string[abi:ne200100]<0>(&v7, "Pdf-id of blank symbol of CTC trained acoustic model, used in combination with skip-blanks-threshold");
  quasar::SystemConfig::Register<int>(a2, __p, this + 264, &v7, 0, 58, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "skip-across-batch");
  std::string::basic_string[abi:ne200100]<0>(&v7, "Make skip-frames deterministic by skipping across batches instead of within batches (default: false).");
  quasar::SystemConfig::Register<BOOL>(a2, __p, this + 872, &v7, 0, 77, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "blank-penalty");
  std::string::basic_string[abi:ne200100]<0>(&v7, "Penalty for blanks with a CTC trained acoustic model when silence posterior is higher than a threshold");
  quasar::SystemConfig::Register<float>(a2, __p, this + 268, &v7, 0, 239, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "blank-penalty-silence-threshold");
  std::string::basic_string[abi:ne200100]<0>(&v7, "Threshold of silence posterior when the blank penalty is appled to blanks");
  quasar::SystemConfig::Register<float>(a2, __p, this + 272, &v7, 0, 239, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "sil-phone-csl-file");
  std::string::basic_string[abi:ne200100]<0>(&v7, "File containing colon-separated list of silence phones.");
  quasar::SystemConfig::Register<std::string>(a2, __p, this + 304, &v7, 0, 239, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  MEMORY[0x1B8C84820](this + 112, "");
  *(this + 12) = 1036831949;
  *(this + 188) = 0;
  MEMORY[0x1B8C84820](this + 136, "");
  MEMORY[0x1B8C84820](this + 160, "");
  *(this + 46) = 0;
  *(this + 48) = -2;
  MEMORY[0x1B8C84820](this + 200, "");
  MEMORY[0x1B8C84820](this + 232, "");
  *(this + 108) = 0;
  *(this + 872) = 0;
  MEMORY[0x1B8C84820](this + 232, "");
  *(this + 256) = 0;
  *(this + 224) = 0;
  *(this + 260) = 0;
  *(this + 268) = 0x3F80000000000000;
  MEMORY[0x1B8C84820](this + 280, "");
  return MEMORY[0x1B8C84820](this + 304, "");
}

void sub_1B53E76DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B53E77A8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    JUMPOUT(0x1B53E779CLL);
  }

  JUMPOUT(0x1B53E77A0);
}

void quasar::OnlineDecodableNnet1LazyDecodable::finishInit(quasar::OnlineDecodableNnet1LazyDecodable *this, quasar::ModelLoader *a2)
{
  v4 = *(this + 188);
  v41 = 0;
  v42 = 0;
  LOBYTE(__p[0]) = 0;
  BYTE8(v23) = 0;
  quasar::ModelLoader::readNeuralNetwork(a2, this + 17, v4, 1, 1, &v41, __p, &v39);
  v5 = v39;
  v39 = 0uLL;
  v6 = *(this + 101);
  *(this + 50) = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    if (*(&v39 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v39 + 1));
    }
  }

  if (BYTE8(v23) == 1 && SBYTE7(v23) < 0)
  {
    operator delete(__p[0]);
  }

  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  if (*(this + 188) == 1)
  {
    if ((*(this + 183) & 0x80) == 0)
    {
      if (!*(this + 183))
      {
        goto LABEL_21;
      }

LABEL_17:
      fst::FstReadOptions::FstReadOptions(&v39, this + 160, 0, 0, 0);
      v40 = 2;
      kaldi::nnet1::Nnet::ReadMapped(this + 424, &v39);
    }

    if (*(this + 21))
    {
      goto LABEL_17;
    }
  }

  else
  {
    if ((*(this + 183) & 0x80) != 0)
    {
      if (!*(this + 21))
      {
        goto LABEL_21;
      }
    }

    else if (!*(this + 183))
    {
      goto LABEL_21;
    }

    kaldi::nnet1::Nnet::Read((this + 424), this + 160);
    if (quasar::gLogLevel >= 5)
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Read nnetTransf", 15);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
    }
  }

LABEL_21:
  v7 = *(this + 108);
  if (v7 >= 1)
  {
    v8 = *(this + 100);
    if (v8)
    {
      if (v9)
      {
        v10 = *(this + 101);
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
          v7 = *(this + 108);
        }

        kaldi::nnet1::Nnet::SetWorkspaceSize((v9 + 8), v7 << 10);
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }
      }
    }
  }

  v11 = *(this + 351);
  if (v11 < 0)
  {
    v11 = *(this + 42);
  }

  if (v11)
  {
    std::allocate_shared[abi:ne200100]<kaldi::nnet1::PdfPrior,std::allocator<kaldi::nnet1::PdfPrior>,kaldi::nnet1::PdfPriorOptions &,0>();
  }

  quasar::ModelLoader::readTransitionModel(a2, this + 14, 0, __p);
  v12 = *__p;
  __p[0] = 0;
  __p[1] = 0;
  v13 = *(this + 5);
  *(this + 2) = v12;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    if (__p[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
    }
  }

  if (quasar::gLogLevel >= 5)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Read transModel", 15);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
  }

  if ((*(this + 223) & 0x8000000000000000) != 0)
  {
    if (!*(this + 26))
    {
      goto LABEL_57;
    }
  }

  else if (!*(this + 223))
  {
    goto LABEL_57;
  }

  v20 = 0;
  v21 = 0;
  LOBYTE(__p[0]) = 0;
  BYTE8(v23) = 0;
  quasar::ModelLoader::readNeuralNetwork(a2, this + 25, 0, 0, 1, &v20, __p, &v39);
  v14 = v39;
  v39 = 0uLL;
  v15 = *(this + 103);
  *(this + 51) = v14;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    if (*(&v39 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v39 + 1));
    }
  }

  if (BYTE8(v23) == 1 && SBYTE7(v23) < 0)
  {
    operator delete(__p[0]);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (quasar::gLogLevel >= 5)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Read model file for computing silence posteriors=", 49);
    v17 = *(this + 223);
    if (v17 >= 0)
    {
      v18 = this + 200;
    }

    else
    {
      v18 = *(this + 25);
    }

    if (v17 >= 0)
    {
      v19 = *(this + 223);
    }

    else
    {
      v19 = *(this + 26);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v18, v19);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
  }

LABEL_57:
  if ((*(this + 255) & 0x8000000000000000) != 0)
  {
    if (!*(this + 30))
    {
      return;
    }

LABEL_61:
    std::allocate_shared[abi:ne200100]<kaldi::nnet1::PdfPrior,std::allocator<kaldi::nnet1::PdfPrior>,kaldi::nnet1::PdfPriorOptions &,0>();
  }

  if (*(this + 255))
  {
    goto LABEL_61;
  }
}

void sub_1B53E7DCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  quasar::QuasarDebugMessage::~QuasarDebugMessage(&__p);
  if (*(v19 - 105) < 0)
  {
    operator delete(*(v19 - 128));
  }

  _Unwind_Resume(a1);
}

void quasar::OnlineDecodableNnet1LazyDecodable::createDecodableImpl(quasar::OnlineDecodableNnet1LazyDecodable *this, kaldi::OnlineFeatureMatrix *a2)
{
  v20 = 0;
  v4 = *(this + 223);
  if (v4 < 0)
  {
    v4 = *(this + 26);
  }

  if (v4)
  {
    v20 = *(this + 102);
  }

  v18 = 0;
  v19 = 0;
  v5 = *(this + 255);
  if (v5 < 0)
  {
    v5 = *(this + 30);
  }

  if (v5)
  {
    v6 = *(this + 104);
    v18 = *(this + 51);
    v19 = v6;
  }

  v17 = 0;
  v7 = *(this + 183);
  if (v7 < 0)
  {
    v7 = *(this + 21);
  }

  if (v7)
  {
    v17 = this + 424;
  }

  if ((*(this + 327) & 0x8000000000000000) != 0)
  {
    if (!*(this + 39))
    {
      goto LABEL_18;
    }
  }

  else if (!*(this + 327))
  {
LABEL_18:
    v16 = *(this + 100);
    v12 = *(this + 49);
    v14 = a2;
    v15 = v12;
    std::allocate_shared[abi:ne200100]<kaldi::OnlineDecodableNnet1Lazy,std::allocator<kaldi::OnlineDecodableNnet1Lazy>,kaldi::TransitionModel &,kaldi::nnet1::Nnet *&,kaldi::InferenceNetItf *,kaldi::nnet1::PdfPrior *,kaldi::OnlineFeatureMatrix *,int &,float &,int &,BOOL &,BOOL &,float &,kaldi::InferenceNetItf *&,kaldi::nnet1::PdfPrior *&,kaldi::InferenceNetItf *&,BOOL &,float &,float &,std::string &,0>();
  }

  LOBYTE(v15) = 0;
  v8 = kaldi::Input::Input(&v16, this + 304, &v15);
  v9 = kaldi::Input::Stream(v8);
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v10 = std::locale::use_facet(v13, MEMORY[0x1E69E5318]);
  v11 = (v10->__vftable[2].~facet_0)(v10, 10);
  std::locale::~locale(v13);
  std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v9, this + 280, v11);
  kaldi::Input::~Input(&v16);
  goto LABEL_18;
}

void quasar::OnlineDecodableNnet1LazyDecodable::~OnlineDecodableNnet1LazyDecodable(quasar::OnlineDecodableNnet1LazyDecodable *this)
{
  quasar::OnlineDecodableNnet1LazyDecodable::~OnlineDecodableNnet1LazyDecodable(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D10DD8;
  v2 = *(this + 107);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 105);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 103);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 101);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  kaldi::nnet1::Nnet::~Nnet((this + 424));
  v6 = *(this + 52);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 50);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (*(this + 383) < 0)
  {
    operator delete(*(this + 45));
  }

  if (*(this + 351) < 0)
  {
    operator delete(*(this + 41));
  }

  if (*(this + 327) < 0)
  {
    operator delete(*(this + 38));
  }

  if (*(this + 303) < 0)
  {
    operator delete(*(this + 35));
  }

  if (*(this + 255) < 0)
  {
    operator delete(*(this + 29));
  }

  if (*(this + 223) < 0)
  {
    operator delete(*(this + 25));
  }

  if (*(this + 183) < 0)
  {
    operator delete(*(this + 20));
  }

  if (*(this + 159) < 0)
  {
    operator delete(*(this + 17));
  }

  if (*(this + 135) < 0)
  {
    operator delete(*(this + 14));
  }

  quasar::Decodable::~Decodable(this);
}

void kaldi::nnet1::PdfPriorOptions::Register(uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "class-frame-counts");
  std::string::basic_string[abi:ne200100]<0>(__p, "Vector with frame-counts of pdfs to compute log-priors. (priors are typically subtracted from log-posteriors or pre-softmax activations)");
  (*(*a2 + 40))(a2, v6, a1, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "prior-scale");
  std::string::basic_string[abi:ne200100]<0>(__p, "Scaling factor to be applied on pdf-log-priors");
  (*(*a2 + 24))(a2, v6, a1 + 24, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "prior-cutoff");
  std::string::basic_string[abi:ne200100]<0>(__p, "Classes with priors lower than cutoff will have 0 likelihood");
  (*(*a2 + 24))(a2, v6, a1 + 28, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B53E8310(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<kaldi::nnet1::PdfPrior>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D10E28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<kaldi::OnlineDecodableNnet1Lazy>::__shared_ptr_emplace[abi:ne200100]<kaldi::TransitionModel &,kaldi::nnet1::Nnet *&,kaldi::InferenceNetItf *,kaldi::nnet1::PdfPrior *,kaldi::OnlineFeatureMatrix *,int &,float &,int &,BOOL &,BOOL &,float &,kaldi::InferenceNetItf *&,kaldi::nnet1::PdfPrior *&,kaldi::InferenceNetItf *&,BOOL &,float &,float &,std::string &,std::allocator<kaldi::OnlineDecodableNnet1Lazy>,0>(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, unsigned int *a7, float *a8, int *a9, char *a10, char *a11, float *a12, uint64_t *a13, uint64_t *a14, uint64_t *a15, char *a16, float *a17, float *a18, uint64_t a19)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D10E78;
  std::allocator<kaldi::OnlineDecodableNnet1Lazy>::construct[abi:ne200100]<kaldi::OnlineDecodableNnet1Lazy,kaldi::TransitionModel &,kaldi::nnet1::Nnet *&,kaldi::InferenceNetItf *,kaldi::nnet1::PdfPrior *,kaldi::OnlineFeatureMatrix *,int &,float &,int &,BOOL &,BOOL &,float &,kaldi::InferenceNetItf *&,kaldi::nnet1::PdfPrior *&,kaldi::InferenceNetItf *&,BOOL &,float &,float &,std::string &>(&v21, (a1 + 3), a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
  return a1;
}

void std::__shared_ptr_emplace<kaldi::OnlineDecodableNnet1Lazy>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D10E78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::allocator<kaldi::OnlineDecodableNnet1Lazy>::construct[abi:ne200100]<kaldi::OnlineDecodableNnet1Lazy,kaldi::TransitionModel &,kaldi::nnet1::Nnet *&,kaldi::InferenceNetItf *,kaldi::nnet1::PdfPrior *,kaldi::OnlineFeatureMatrix *,int &,float &,int &,BOOL &,BOOL &,float &,kaldi::InferenceNetItf *&,kaldi::nnet1::PdfPrior *&,kaldi::InferenceNetItf *&,BOOL &,float &,float &,std::string &>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, unsigned int *a8, float *a9, int *a10, char *a11, char *a12, float *a13, uint64_t *a14, uint64_t *a15, uint64_t *a16, char *a17, float *a18, float *a19, uint64_t a20)
{
  v20 = a2;
  v21 = *a4;
  v22 = *a5;
  v23 = *a6;
  v24 = *a7;
  v25 = *a8;
  v26 = *a9;
  v27 = *a10;
  v28 = *a11;
  v29 = *a12;
  v30 = *a13;
  v31 = *a14;
  v32 = *a15;
  v33 = *a16;
  v34 = *a17;
  v35 = *a18;
  v36 = *a19;
  if (*(a20 + 23) < 0)
  {
    v42 = a3;
    v37 = v22;
    v40 = v23;
    v38 = v24;
    v41 = v25;
    v39 = *a10;
    std::string::__init_copy_ctor_external(&v44, *a20, *(a20 + 8));
    v27 = v39;
    v25 = v41;
    v24 = v38;
    v23 = v40;
    v22 = v37;
    a3 = v42;
    v20 = a2;
  }

  else
  {
    *&v44.__r_.__value_.__l.__data_ = *a20;
    v44.__r_.__value_.__r.__words[2] = *(a20 + 16);
  }

  kaldi::OnlineDecodableNnet1Lazy::OnlineDecodableNnet1Lazy(v20, a3, v21, v22, v23, v24, v25, v27, v26, v30, v35, v36, v28, v29, v31, v32, v33, v34, &v44);
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }
}

void sub_1B53E8778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::OnlineDecodableNnet1Lazy::OnlineDecodableNnet1Lazy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, float a9, float a10, float a11, float a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19)
{
  *a1 = &unk_1F2D2EC58;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = a5;
  *(a1 + 40) = a6;
  *(a1 + 48) = a7 + 1;
  *(a1 + 52) = a10;
  *(a1 + 56) = a9;
  *(a1 + 60) = a8;
  *(a1 + 64) = a13;
  *(a1 + 65) = a14;
  *(a1 + 68) = 0xFFFFFFFFLL;
  *(a1 + 76) = -1;
  *(a1 + 80) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  kaldi::Matrix<float>::Matrix(a1 + 144);
  *(a1 + 248) = 0u;
  *(a1 + 184) = a18;
  *(a1 + 188) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 192) = &unk_1F2D0EE38;
  *(a1 + 232) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 240) = &unk_1F2D0EE38;
  *(a1 + 280) = 0;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 288) = &unk_1F2D0EE38;
  *(a1 + 328) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 336) = &unk_1F2D3AC18;
  *(a1 + 344) = 0;
  kaldi::Matrix<float>::Matrix(a1 + 368);
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = a15;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 440) = &unk_1F2D0EE38;
  *(a1 + 480) = 0;
  *(a1 + 488) = a16;
  *(a1 + 496) = a17;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = a11;
  *(a1 + 564) = a12;
  v23.n128_f64[0] = kaldi::SilencePhoneSet::SilencePhoneSet((a1 + 568));
  if (a7 >= 5 && (kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v41);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "Skipping ", 9);
    v25 = MEMORY[0x1B8C84C00](v24, a7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " frames may not give you good results.", 38);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v41);
  }

  (*(**(a1 + 24) + 152))(*(a1 + 24), v23);
  v26 = *(a1 + 496);
  if (v26)
  {
    (*(*v26 + 152))(v26);
  }

  if (*(a1 + 65) == 1)
  {
    if (*(a1 + 64) == 1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v41);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "Parameters realign_model_input_is_penultimate_ and sil_model_input_is_realign_penultimate_ cannot both be true at the same time.", 128);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v41);
    }

    if (!*(a1 + 496))
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v41);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "Realignment model (nnet_realign) must be set in order to pass its penultimate activations to the silence model.", 111);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v41);
    }
  }

  if (*(a1 + 184) == 1)
  {
    if (*(a1 + 48) == 1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v41);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "skip_across_batch cannot be set if you aren't frame skipping", 60);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v41);
    }

    if (*(a1 + 56) != 0.0 || *(a1 + 496))
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v41);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "skip_across_batch does not work with skip_blanks_threshold or nnet_realign", 74);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v41);
    }
  }

  v27 = *(a1 + 16);
  if (v27 && ((*(v27 + 1) - *v27) >> 3) >= 1)
  {
    v28 = 0;
    do
    {
      Component = kaldi::nnet1::Nnet::GetComponent(v27, v28);
      if ((*(*Component + 24))(Component) == 1026)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v41);
        v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "nnet transformation contains splicing, which is not ", 52);
        v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "supported by OnlineDecodableNnet1Lazy. Use a separate splice ", 61);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "operation to perform splicing.", 30);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v41);
      }

      ++v28;
      v27 = *(a1 + 16);
    }

    while (v28 < ((*(v27 + 1) - *v27) >> 3));
  }

  v30 = *(a1 + 24);
  if (v30)
  {
    if (v31)
    {
      v32 = v31;
      v33 = (v31 + 1);
      if (((v31[2] - v31[1]) >> 3) >= 1)
      {
        v34 = 0;
        do
        {
          v35 = kaldi::nnet1::Nnet::GetComponent(v33, v34);
          if ((*(*v35 + 24))(v35) == 1026)
          {
            kaldi::KaldiWarnMessage::KaldiWarnMessage(v41);
            v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "nnet contains splicing, which is not supported by ", 50);
            v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "OnlineDecodableNnet1Lazy. Use a separate splice operation to ", 61);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "perform splicing.", 17);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(v41);
          }

          ++v34;
        }

        while (v34 < ((v32[2] - v32[1]) >> 3));
      }
    }
  }

  kaldi::SilencePhoneSet::SilencePhoneSet(v41, a19);
  *(a1 + 568) = v41[0].__locale_;
  *(a1 + 576) = v41[1];
  *(a1 + 584) = v42;
  std::vector<BOOL>::operator=(a1 + 592, &v43);
  if ((a1 + 568) != v41)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 616), __p, v45, (v45 - __p) >> 2);
  }

  if (__p)
  {
    v45 = __p;
    operator delete(__p);
  }

  if (v43)
  {
    operator delete(v43);
  }

  return a1;
}

void sub_1B53E8DDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  kaldi::SilencePhoneSet::~SilencePhoneSet(v17);
  std::deque<kaldi::CuMatrix<float>>::~deque[abi:ne200100](v11 + 64);
  kaldi::CuMatrix<float>::~CuMatrix(v16);
  v19 = *(v11 + 51);
  if (v19)
  {
    operator delete(v19);
  }

  kaldi::Matrix<float>::~Matrix(v14 + 120);
  kaldi::CuVector<float>::~CuVector(v15);
  kaldi::CuMatrix<float>::~CuMatrix(a9);
  kaldi::CuMatrix<float>::~CuMatrix(a10);
  kaldi::CuMatrix<float>::~CuMatrix(a11);
  kaldi::Matrix<float>::~Matrix(v11 + 144);
  v20 = *v13;
  if (*v13)
  {
    *(v11 + 16) = v20;
    operator delete(v20);
  }

  if (*v12)
  {
    operator delete(*v12);
  }

  quasar::Bitmap::~Bitmap(v11);
  _Unwind_Resume(a1);
}

void quasar::GlobalPDecTranslatorFactory::~GlobalPDecTranslatorFactory(quasar::GlobalPDecTranslatorFactory *this)
{
  *this = &unk_1F2D10EC8;
  std::__tree<std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>,std::__map_value_compare<std::tuple<std::string,std::string,std::string>,std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>,std::less<std::tuple<std::string,std::string,std::string>>,true>,std::allocator<std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>>>::destroy(this + 1680, *(this + 211));
  std::__list_imp<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>>::clear(this + 1656);
  v2 = *(this + 206);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::weak_ptr<kaldi::quasar::PhraseBook>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::weak_ptr<kaldi::quasar::PhraseBook>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::weak_ptr<kaldi::quasar::PhraseBook>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::weak_ptr<kaldi::quasar::PhraseBook>>>>::~__hash_table(this + 1600);
  std::__tree<std::__value_type<std::vector<std::string>,std::weak_ptr<kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>>>,std::__map_value_compare<std::vector<std::string>,std::__value_type<std::vector<std::string>,std::weak_ptr<kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>>>,std::less<std::vector<std::string>>,true>,std::allocator<std::__value_type<std::vector<std::string>,std::weak_ptr<kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>>>>>::destroy(this + 1576, *(this + 198));
  quasar::SystemConfig::~SystemConfig((this + 8));

  quasar::Bitmap::~Bitmap(this);
}

{
  quasar::GlobalPDecTranslatorFactory::~GlobalPDecTranslatorFactory(this);

  JUMPOUT(0x1B8C85350);
}

uint64_t quasar::GlobalPDecTranslatorFactory::GlobalPDecTranslatorFactory(uint64_t a1, const quasar::SystemConfig *a2, int a3, char a4, int a5, uint64_t *a6)
{
  *a1 = &unk_1F2D10EC8;
  quasar::SystemConfig::SystemConfig((a1 + 8), a2, 1, 1);
  *(a1 + 1568) = a3;
  *(a1 + 1572) = a4;
  *(a1 + 1584) = 0u;
  *(a1 + 1576) = a1 + 1584;
  *(a1 + 1616) = 0u;
  *(a1 + 1600) = 0u;
  *(a1 + 1632) = 1065353216;
  *(a1 + 1640) = 0u;
  *(a1 + 1656) = a1 + 1656;
  *(a1 + 1664) = a1 + 1656;
  *(a1 + 1672) = 0;
  *(a1 + 1688) = 0u;
  *(a1 + 1680) = a1 + 1688;
  v11 = *a6;
  if (a5)
  {
    if (v11)
    {
      if (quasar::gLogLevel >= 1)
      {
        memset(v15, 0, sizeof(v15));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v15);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Cannot specify both factoryLocalModelSharing and context", 56);
        quasar::QuasarErrorMessage::~QuasarErrorMessage(v15);
      }
    }

    operator new();
  }

  if (v11)
  {
    v12 = a6[1];
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
      v13 = *(a1 + 1648);
      *(a1 + 1640) = v11;
      *(a1 + 1648) = v12;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }
    }

    else
    {
      *(a1 + 1640) = v11;
      *(a1 + 1648) = 0;
    }
  }

  return a1;
}

void sub_1B53E92A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  quasar::QuasarErrorMessage::~QuasarErrorMessage(&a9);
  std::__tree<std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>,std::__map_value_compare<std::tuple<std::string,std::string,std::string>,std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>,std::less<std::tuple<std::string,std::string,std::string>>,true>,std::allocator<std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>>>::destroy(v9 + 1680, *(v9 + 1688));
  std::__list_imp<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>>::clear(v11);
  v14 = *(v9 + 1648);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::weak_ptr<kaldi::quasar::PhraseBook>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::weak_ptr<kaldi::quasar::PhraseBook>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::weak_ptr<kaldi::quasar::PhraseBook>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::weak_ptr<kaldi::quasar::PhraseBook>>>>::~__hash_table(v9 + 1600);
  std::__tree<std::__value_type<std::vector<std::string>,std::weak_ptr<kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>>>,std::__map_value_compare<std::vector<std::string>,std::__value_type<std::vector<std::string>,std::weak_ptr<kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>>>,std::less<std::vector<std::string>>,true>,std::allocator<std::__value_type<std::vector<std::string>,std::weak_ptr<kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>>>>>::destroy(v9 + 1576, *v12);
  quasar::SystemConfig::~SystemConfig(v10);
  quasar::Bitmap::~Bitmap(v9);
  _Unwind_Resume(a1);
}

void quasar::GlobalPDecTranslatorFactory::createTranslator(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, void *a5@<X8>)
{
  if ((*(*a1 + 32))(a1))
  {
    _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_S8_EEC2B8ne200100IJLm0ELm1ELm2EEJS8_S8_S8_EJEJEJRKS8_SC_SC_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSE_IJDpT2_EEEDpOT3_(&v21, a2, a3, a4);
    v10 = std::__tree<std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>,std::__map_value_compare<std::tuple<std::string,std::string,std::string>,std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>,std::less<std::tuple<std::string,std::string,std::string>>,true>,std::allocator<std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>>>::find<std::tuple<std::string,std::string,std::string>>(a1 + 1680, &v21);
    if (a1 + 1688 == v10)
    {
      v17 = *(a1 + 1672);
      if (v17 && v17 == *(a1 + 1568))
      {
        std::__tree<std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>,std::__map_value_compare<std::tuple<std::string,std::string,std::string>,std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>,std::less<std::tuple<std::string,std::string,std::string>>,true>,std::allocator<std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>>>::__erase_unique<std::tuple<std::string,std::string,std::string>>((a1 + 1680), *(a1 + 1656) + 16);
        v18 = *(a1 + 1656);
        v20 = *v18;
        v19 = *(v18 + 1);
        *(v20 + 8) = v19;
        *v19 = v20;
        --*(a1 + 1672);
        std::__list_imp<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>>::__delete_node[abi:ne200100](a1 + 1656, v18);
      }

      v26[0].__r_.__value_.__r.__words[0] = a1 + 1576;
      std::allocate_shared[abi:ne200100]<quasar::PDecTranslator,std::allocator<quasar::PDecTranslator>,quasar::SystemConfig &,std::string const&,std::string const&,std::string const&,std::map<std::vector<std::string>,std::weak_ptr<kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>>> *,std::unordered_map<std::string,std::weak_ptr<kaldi::quasar::PhraseBook>> *,decltype(nullptr),BOOL &,std::shared_ptr<quasar::ContextProvider> &,0>();
    }

    v11 = *(v10 + 104);
    v12 = *(a1 + 1664);
    if (v12 != v11)
    {
      v13 = v11[1];
      if (v13 != v12)
      {
        v14 = *v11;
        *(v14 + 8) = v13;
        *v13 = v14;
        v15 = *v12;
        *(v15 + 8) = v11;
        *v11 = v15;
        *v12 = v11;
        v11[1] = v12;
      }

      v26[0].__r_.__value_.__r.__words[0] = &v21;
      *(std::__tree<std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>,std::__map_value_compare<std::tuple<std::string,std::string,std::string>,std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>,std::less<std::tuple<std::string,std::string,std::string>>,true>,std::allocator<std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>>>::__emplace_unique_key_args<std::tuple<std::string,std::string,std::string>,std::piecewise_construct_t const&,std::tuple<std::tuple<std::string,std::string,std::string> const&>,std::tuple<>>(a1 + 1680, &v21) + 104) = v11;
    }

    v16 = v11[12];
    *a5 = v11[11];
    a5[1] = v16;
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    }

    if (v25 < 0)
    {
      operator delete(v24);
    }

    if (v23 < 0)
    {
      operator delete(v22);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if (quasar::gLogLevel >= 1)
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      *__p = 0u;
      v28 = 0u;
      memset(v26, 0, sizeof(v26));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v26);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "Given task and language pair combination is not supported", 57);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(v26);
    }

    *a5 = 0;
    a5[1] = 0;
  }
}

void sub_1B53E9620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if (a7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a7);
  }

  std::pair<std::string const,quasar::TranslationPairSetting>::~pair(va);
  _Unwind_Resume(a1);
}

unint64_t quasar::GlobalPDecTranslatorFactory::engineType@<X0>(_BYTE *a1@<X8>)
{
  v3 = quasar::PDecTranslator::ENGINE_TYPE;
  result = strlen(quasar::PDecTranslator::ENGINE_TYPE);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a1[23] = result;
  if (result)
  {
    result = memmove(a1, v3, result);
  }

  a1[v5] = 0;
  return result;
}

uint64_t quasar::GlobalPDecTranslatorFactory::isLanguagePairSupported(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a4 + 8);
  }

  if (v7)
  {
    v8 = (a1 + 8);

    return quasar::PDecTranslator::IsLanguagePairSupported(v8, a4, a2, a3);
  }

  else
  {
    TranslationModelInfo = quasar::SystemConfig::getTranslationModelInfo((a1 + 8));
    v11 = *(TranslationModelInfo + 24);
    v12 = (TranslationModelInfo + 32);
    v13 = 1;
    if (v11 != (TranslationModelInfo + 32))
    {
      do
      {
        IsLanguagePairSupported = quasar::PDecTranslator::IsLanguagePairSupported((a1 + 8), (v11 + 4), a2, a3);
        v15 = v11[1];
        if (v15)
        {
          do
          {
            v16 = v15;
            v15 = *v15;
          }

          while (v15);
        }

        else
        {
          do
          {
            v16 = v11[2];
            v17 = *v16 == v11;
            v11 = v16;
          }

          while (!v17);
        }

        v13 = v13 & IsLanguagePairSupported;
        v11 = v16;
      }

      while (v16 != v12);
    }

    return v13;
  }
}

uint64_t quasar::GlobalPDecTranslatorFactory::isCompileRequired(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = *MEMORY[0x1E69E9840];
  v7 = *(a4 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a4 + 8);
  }

  if (v7)
  {
    if (quasar::gLogLevel >= 6)
    {
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v35 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v35);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v35, "Checking compilation status for specific task / source / target", 63);
      quasar::QuasarTraceMessage::~QuasarTraceMessage(&v35);
    }

    quasar::SystemConfig::SystemConfig(&v35, (a1 + 8), 1, 1);
    v24 = 0;
    v25 = 0;
    v26 = 0;
    std::vector<quasar::SystemConfig>::__init_with_size[abi:ne200100]<quasar::SystemConfig const*,quasar::SystemConfig const*>(&v24, &v35, &v52, 1uLL);
    _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_S8_EEC2B8ne200100IJLm0ELm1ELm2EEJS8_S8_S8_EJEJEJRKS8_SC_SC_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSE_IJDpT2_EEEDpOT3_(&v30, a4, a2, a3);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    std::vector<std::tuple<std::string,std::string,std::string>>::__init_with_size[abi:ne200100]<std::tuple<std::string,std::string,std::string> const*,std::tuple<std::string,std::string,std::string> const*>(&v21, &v30, &v35, 1uLL);
    quasar::TranslatorCompiler::TranslatorCompiler(&v27, &v24, &v21);
    v29 = &v21;
    std::vector<std::tuple<std::string,std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v29);
    if (v34 < 0)
    {
      operator delete(__p);
    }

    if (v32 < 0)
    {
      operator delete(v31);
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    v30.__r_.__value_.__r.__words[0] = &v24;
    std::vector<quasar::SystemConfig>::__destroy_vector::operator()[abi:ne200100](&v30);
    quasar::SystemConfig::~SystemConfig(&v35);
    isCompileRequired = quasar::TranslatorCompiler::isCompileRequired(&v27);
    v10 = v28;
    if (!v28)
    {
      return isCompileRequired;
    }

LABEL_39:
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    return isCompileRequired;
  }

  v11 = *(a2 + 23);
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a2 + 8);
  }

  if (!v11)
  {
    goto LABEL_36;
  }

  v12 = *(a3 + 23);
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a3 + 8);
  }

  if (v12)
  {
    if (quasar::gLogLevel >= 6)
    {
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v35 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v35);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v35, "Checking compilation status for specific source / target", 56);
      quasar::QuasarTraceMessage::~QuasarTraceMessage(&v35);
    }

    memset(&v30, 0, sizeof(v30));
    TranslationModelInfo = quasar::SystemConfig::getTranslationModelInfo((a1 + 8));
    v14 = *(TranslationModelInfo + 24);
    v15 = (TranslationModelInfo + 32);
    if (v14 != (TranslationModelInfo + 32))
    {
      size = v30.__r_.__value_.__l.__size_;
      do
      {
        if (size >= v30.__r_.__value_.__r.__words[2])
        {
          size = std::vector<std::tuple<std::string,std::string,std::string>>::__emplace_back_slow_path<std::string const&,std::string const&,std::string const&>(&v30, v14 + 2, a2, a3);
        }

        else
        {
          _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_S8_EEC2B8ne200100IJLm0ELm1ELm2EEJS8_S8_S8_EJEJEJRKS8_SC_SC_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSE_IJDpT2_EEEDpOT3_(size, v14 + 2, a2, a3);
          size += 3;
        }

        v30.__r_.__value_.__l.__size_ = size;
        v17 = *(v14 + 1);
        if (v17)
        {
          do
          {
            v18 = v17;
            v17 = *v17;
          }

          while (v17);
        }

        else
        {
          do
          {
            v18 = *(v14 + 2);
            v19 = *v18 == v14;
            v14 = v18;
          }

          while (!v19);
        }

        v14 = v18;
      }

      while (v18 != v15);
    }

    quasar::SystemConfig::SystemConfig(&v35, (a1 + 8), 1, 1);
    v24 = 0;
    v25 = 0;
    v26 = 0;
    std::vector<quasar::SystemConfig>::__init_with_size[abi:ne200100]<quasar::SystemConfig const*,quasar::SystemConfig const*>(&v24, &v35, &v52, 1uLL);
    quasar::TranslatorCompiler::TranslatorCompiler(&v21, &v24, &v30);
    v27 = &v24;
    std::vector<quasar::SystemConfig>::__destroy_vector::operator()[abi:ne200100](&v27);
    quasar::SystemConfig::~SystemConfig(&v35);
    isCompileRequired = quasar::TranslatorCompiler::isCompileRequired(&v21);
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    *&v35 = &v30;
    std::vector<std::tuple<std::string,std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v35);
  }

  else
  {
LABEL_36:
    if (quasar::gLogLevel >= 6)
    {
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v35 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v35);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v35, "Checking compilation status for all models", 42);
      quasar::QuasarTraceMessage::~QuasarTraceMessage(&v35);
    }

    quasar::SystemConfig::SystemConfig(&v35, (a1 + 8), 1, 1);
    memset(&v30, 0, sizeof(v30));
    std::vector<quasar::SystemConfig>::__init_with_size[abi:ne200100]<quasar::SystemConfig const*,quasar::SystemConfig const*>(&v30, &v35, &v52, 1uLL);
    quasar::TranslatorCompiler::TranslatorCompiler(&v24);
    v21 = &v30;
    std::vector<quasar::SystemConfig>::__destroy_vector::operator()[abi:ne200100](&v21);
    quasar::SystemConfig::~SystemConfig(&v35);
    isCompileRequired = quasar::TranslatorCompiler::isCompileRequired(&v24);
    v10 = v25;
    if (v25)
    {
      goto LABEL_39;
    }
  }

  return isCompileRequired;
}

void quasar::GlobalPDecTranslatorFactory::preload(_DWORD *a1, uint64_t a2, uint64_t a3, const void ***a4)
{
  TranslationModelInfo = quasar::SystemConfig::getTranslationModelInfo((a1 + 2));
  if (a4[2])
  {
    v9 = a4;
  }

  else
  {
    v9 = (TranslationModelInfo + 24);
  }

  v10 = *v9;
  v37 = v9 + 1;
  v38 = TranslationModelInfo;
  if (*v9 == (v9 + 1))
  {
    return;
  }

  v11 = 0;
  do
  {
    v12 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((v38 + 72), v10 + 4);
    if (!v12)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    v14 = v12[5];
    v13 = v12[6];
    while (v14 != v13)
    {
      v15 = *(a3 + 16);
      if (v15 && (std::pair<std::string,std::string>::pair[abi:ne200100]<true,0>(&v58, v14, (v14 + 24)), !std::__tree<std::pair<std::string,std::string>>::__count_unique<std::pair<std::string,std::string>>(a3, &v58.__r_.__value_.__l.__data_)))
      {
        LOBYTE(v17) = 0;
      }

      else
      {
        v16 = *(a2 + 16);
        v17 = v16 == 0;
        if (v16 && std::__tree<std::string>::__count_unique<std::string>(a2, v14))
        {
          v17 = std::__tree<std::string>::__count_unique<std::string>(a2, v14 + 3) != 0;
        }

        if (!v15)
        {
          if (!v17)
          {
            goto LABEL_47;
          }

LABEL_23:
          v18 = a1[392];
          if ((v18 & 0x80000000) == 0 && v11 >= v18)
          {
            v56 = 0u;
            v57 = 0u;
            v54 = 0u;
            v55 = 0u;
            v52 = 0u;
            v53 = 0u;
            v50 = 0u;
            v51 = 0u;
            v48 = 0u;
            v49 = 0u;
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v42 = 0u;
            v43 = 0u;
            v41 = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v41);
            std::operator<<[abi:ne200100]<std::char_traits<char>>(&v41, "Trying to preload more Translators than available cache size!");
            quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v41);
          }

          if (quasar::gLogLevel >= 6)
          {
            v56 = 0u;
            v57 = 0u;
            v54 = 0u;
            v55 = 0u;
            v52 = 0u;
            v53 = 0u;
            v50 = 0u;
            v51 = 0u;
            v48 = 0u;
            v49 = 0u;
            v46 = 0u;
            v47 = 0u;
            v44 = 0u;
            v45 = 0u;
            v42 = 0u;
            v43 = 0u;
            v41 = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v41);
            v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v41, "Preloading translator for task '", 32);
            v20 = *(v10 + 55);
            if (v20 >= 0)
            {
              v21 = (v10 + 4);
            }

            else
            {
              v21 = v10[4];
            }

            if (v20 >= 0)
            {
              v22 = *(v10 + 55);
            }

            else
            {
              v22 = v10[5];
            }

            v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v21, v22);
            v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "', language pair '", 18);
            v25 = v14[23];
            if (v25 >= 0)
            {
              v26 = v14;
            }

            else
            {
              v26 = *v14;
            }

            if (v25 >= 0)
            {
              v27 = v14[23];
            }

            else
            {
              v27 = *(v14 + 1);
            }

            v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v26, v27);
            v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "-", 1);
            v30 = v14[47];
            if (v30 >= 0)
            {
              v31 = (v14 + 24);
            }

            else
            {
              v31 = *(v14 + 3);
            }

            if (v30 >= 0)
            {
              v32 = v14[47];
            }

            else
            {
              v32 = *(v14 + 4);
            }

            v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, v31, v32);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "'", 1);
            quasar::QuasarTraceMessage::~QuasarTraceMessage(&v41);
          }

          ++v11;
          (*(*a1 + 16))(&v39, a1, v14, v14 + 24, v10 + 4);
          if (v40)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v40);
          }

          goto LABEL_47;
        }
      }

      if (v60 < 0)
      {
        operator delete(v59);
      }

      if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v58.__r_.__value_.__l.__data_);
      }

      if (v17)
      {
        goto LABEL_23;
      }

LABEL_47:
      v14 += 48;
    }

    v34 = v10[1];
    if (v34)
    {
      do
      {
        v35 = v34;
        v34 = *v34;
      }

      while (v34);
    }

    else
    {
      do
      {
        v35 = v10[2];
        v36 = *v35 == v10;
        v10 = v35;
      }

      while (!v36);
    }

    v10 = v35;
  }

  while (v35 != v37);
}

void std::__list_imp<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>>::clear(char *a1)
{
  if (*(a1 + 2))
  {
    v2 = *(a1 + 1);
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(a1 + 2) = 0;
    while (v2 != a1)
    {
      v5 = *(v2 + 1);
      std::__list_imp<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>>::__delete_node[abi:ne200100](a1, v2);
      v2 = v5;
    }
  }
}

void std::__list_imp<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>>::__delete_node[abi:ne200100](int a1, char *__p)
{
  v3 = *(__p + 12);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (__p[87] < 0)
  {
    operator delete(*(__p + 8));
  }

  if (__p[63] < 0)
  {
    operator delete(*(__p + 5));
  }

  if (__p[39] < 0)
  {
    operator delete(*(__p + 2));
  }

  operator delete(__p);
}

std::string *std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,std::string,std::string,std::string>::__tuple_impl(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    this[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
    *&this[2].__r_.__value_.__l.__data_ = v6;
  }

  return this;
}

void sub_1B53EA30C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

std::string *_ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_S8_EEC2B8ne200100IJLm0ELm1ELm2EEJS8_S8_S8_EJEJEJRKS8_SC_SC_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSE_IJDpT2_EEEDpOT3_(std::string *this, __int128 *a2, __int128 *a3, __int128 *a4)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v7;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v8;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *a4, *(a4 + 1));
  }

  else
  {
    v9 = *a4;
    this[2].__r_.__value_.__r.__words[2] = *(a4 + 2);
    *&this[2].__r_.__value_.__l.__data_ = v9;
  }

  return this;
}

void sub_1B53EA450(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::__value_type<std::vector<std::string>,std::weak_ptr<kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>>>,std::__map_value_compare<std::vector<std::string>,std::__value_type<std::vector<std::string>,std::weak_ptr<kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>>>,std::less<std::vector<std::string>>,true>,std::allocator<std::__value_type<std::vector<std::string>,std::weak_ptr<kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::vector<std::string>,std::weak_ptr<kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>>>,std::__map_value_compare<std::vector<std::string>,std::__value_type<std::vector<std::string>,std::weak_ptr<kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>>>,std::less<std::vector<std::string>>,true>,std::allocator<std::__value_type<std::vector<std::string>,std::weak_ptr<kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::vector<std::string>,std::weak_ptr<kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>>>,std::__map_value_compare<std::vector<std::string>,std::__value_type<std::vector<std::string>,std::weak_ptr<kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>>>,std::less<std::vector<std::string>>,true>,std::allocator<std::__value_type<std::vector<std::string>,std::weak_ptr<kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::vector<std::string> const,std::weak_ptr<kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::vector<std::string> const,std::weak_ptr<kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::weak_ptr<kaldi::quasar::PhraseBook>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::weak_ptr<kaldi::quasar::PhraseBook>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::weak_ptr<kaldi::quasar::PhraseBook>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::weak_ptr<kaldi::quasar::PhraseBook>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::weak_ptr<kaldi::quasar::PhraseBook>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::weak_ptr<kaldi::quasar::PhraseBook>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::weak_ptr<kaldi::quasar::PhraseBook>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::weak_ptr<kaldi::quasar::PhraseBook>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::weak_ptr<kaldi::quasar::PhraseBook>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::weak_ptr<kaldi::quasar::PhraseBook>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::weak_ptr<kaldi::quasar::PhraseBook>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::weak_ptr<kaldi::quasar::PhraseBook>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__tree<std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>,std::__map_value_compare<std::tuple<std::string,std::string,std::string>,std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>,std::less<std::tuple<std::string,std::string,std::string>>,true>,std::allocator<std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>,std::__map_value_compare<std::tuple<std::string,std::string,std::string>,std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>,std::less<std::tuple<std::string,std::string,std::string>>,true>,std::allocator<std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>,std::__map_value_compare<std::tuple<std::string,std::string,std::string>,std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>,std::less<std::tuple<std::string,std::string,std::string>>,true>,std::allocator<std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>>>::destroy(a1, a2[1]);
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>,void *>>>::destroy[abi:ne200100]<std::pair<std::tuple<std::string,std::string,std::string> const,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>,void,0>(a1, (a2 + 4));

    operator delete(a2);
  }
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>,void *>>>::destroy[abi:ne200100]<std::pair<std::tuple<std::string,std::string,std::string> const,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>,void,0>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 71) < 0)
  {
    operator delete(*(a2 + 48));
  }

  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void std::__shared_ptr_emplace<kaldi::quasar::TMTools::ModelSharing>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D10F28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__tree<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::TMTools::AbstractModelCache>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<kaldi::quasar::TMTools::AbstractModelCache>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::TMTools::AbstractModelCache>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::TMTools::AbstractModelCache>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<kaldi::quasar::TMTools::AbstractModelCache>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::TMTools::AbstractModelCache>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::TMTools::AbstractModelCache>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::unique_ptr<kaldi::quasar::TMTools::AbstractModelCache>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::unique_ptr<kaldi::quasar::TMTools::AbstractModelCache>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unique_ptr<kaldi::quasar::TMTools::AbstractModelCache>>,0>((a2 + 4));

    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>,std::__map_value_compare<std::tuple<std::string,std::string,std::string>,std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>,std::less<std::tuple<std::string,std::string,std::string>>,true>,std::allocator<std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>>>::find<std::tuple<std::string,std::string,std::string>>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<std::string,std::string,std::string>,std::tuple<std::string,std::string,std::string>>(&v9, v3 + 32, a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<std::string,std::string,std::string>,std::tuple<std::string,std::string,std::string>>(&v10, a2, v5 + 32))
  {
    return v2;
  }

  return v5;
}

BOOL std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<std::string,std::string,std::string>,std::tuple<std::string,std::string,std::string>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 23);
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  if (v6 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v5 >= 0)
  {
    v9 = *(a3 + 23);
  }

  else
  {
    v9 = *(a3 + 8);
  }

  if (v5 >= 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = *a3;
  }

  if (v9 >= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v9;
  }

  v12 = memcmp(v8, v10, v11);
  v13 = v7 < v9;
  if (v12)
  {
    v13 = v12 < 0;
  }

  if (v13)
  {
    return 1;
  }

  v15 = memcmp(v10, v8, v11);
  v16 = v9 < v7;
  if (v15)
  {
    v16 = v15 < 0;
  }

  return !v16 && std::__tuple_less<2ul>::operator()[abi:ne200100]<std::tuple<std::string,std::string,std::string>,std::tuple<std::string,std::string,std::string>>(&v17, a2, a3);
}

BOOL std::__tuple_less<2ul>::operator()[abi:ne200100]<std::tuple<std::string,std::string,std::string>,std::tuple<std::string,std::string,std::string>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 47);
  v6 = *(a2 + 47);
  if (v6 >= 0)
  {
    v7 = *(a2 + 47);
  }

  else
  {
    v7 = *(a2 + 32);
  }

  if (v6 >= 0)
  {
    v8 = (a2 + 24);
  }

  else
  {
    v8 = *(a2 + 24);
  }

  if (v5 >= 0)
  {
    v9 = *(a3 + 47);
  }

  else
  {
    v9 = *(a3 + 32);
  }

  if (v5 >= 0)
  {
    v10 = (a3 + 24);
  }

  else
  {
    v10 = *(a3 + 24);
  }

  if (v9 >= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v9;
  }

  v12 = memcmp(v8, v10, v11);
  v13 = v7 < v9;
  if (v12)
  {
    v13 = v12 < 0;
  }

  if (v13)
  {
    return 1;
  }

  v15 = memcmp(v10, v8, v11);
  v16 = v9 < v7;
  if (v15)
  {
    v16 = v15 < 0;
  }

  return !v16 && std::__tuple_less<1ul>::operator()[abi:ne200100]<std::tuple<std::string,std::string,std::string>,std::tuple<std::string,std::string,std::string>>(&v17, a2, a3);
}

BOOL std::__tuple_less<1ul>::operator()[abi:ne200100]<std::tuple<std::string,std::string,std::string>,std::tuple<std::string,std::string,std::string>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 48);
  v3 = a3 + 48;
  v4 = v5;
  v6 = *(v3 + 23);
  v9 = *(a2 + 48);
  v7 = a2 + 48;
  v8 = v9;
  v10 = *(v7 + 23);
  if (v10 >= 0)
  {
    v11 = *(v7 + 23);
  }

  else
  {
    v11 = *(v7 + 8);
  }

  if (v10 >= 0)
  {
    v12 = v7;
  }

  else
  {
    v12 = v8;
  }

  if (v6 >= 0)
  {
    v13 = *(v3 + 23);
  }

  else
  {
    v13 = *(v3 + 8);
  }

  if (v6 >= 0)
  {
    v14 = v3;
  }

  else
  {
    v14 = v4;
  }

  if (v13 >= v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = v13;
  }

  v16 = memcmp(v12, v14, v15);
  if (v16)
  {
    return v16 < 0;
  }

  else
  {
    return v11 < v13;
  }
}

uint64_t std::__tree<std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>,std::__map_value_compare<std::tuple<std::string,std::string,std::string>,std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>,std::less<std::tuple<std::string,std::string,std::string>>,true>,std::allocator<std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>>>::__emplace_unique_key_args<std::tuple<std::string,std::string,std::string>,std::piecewise_construct_t const&,std::tuple<std::tuple<std::string,std::string,std::string> const&>,std::tuple<>>(uint64_t a1, uint64_t a2)
{
  result = *std::__tree<std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>,std::__map_value_compare<std::tuple<std::string,std::string,std::string>,std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>,std::less<std::tuple<std::string,std::string,std::string>>,true>,std::allocator<std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>>>::__find_equal<std::tuple<std::string,std::string,std::string>>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>,std::__map_value_compare<std::tuple<std::string,std::string,std::string>,std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>,std::less<std::tuple<std::string,std::string,std::string>>,true>,std::allocator<std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::tuple<std::string,std::string,std::string> const&>,std::tuple<>>();
  }

  return result;
}

void *std::__tree<std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>,std::__map_value_compare<std::tuple<std::string,std::string,std::string>,std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>,std::less<std::tuple<std::string,std::string,std::string>>,true>,std::allocator<std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>>>::__find_equal<std::tuple<std::string,std::string,std::string>>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<std::string,std::string,std::string>,std::tuple<std::string,std::string,std::string>>(&v9, a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!std::__tuple_less<3ul>::operator()[abi:ne200100]<std::tuple<std::string,std::string,std::string>,std::tuple<std::string,std::string,std::string>>(&v10, (v7 + 4), a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void sub_1B53EABF0(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>,void *>>>::destroy[abi:ne200100]<std::pair<std::tuple<std::string,std::string,std::string> const,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>,void,0>(*a1, __p + 32);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

uint64_t std::__tree<std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>,std::__map_value_compare<std::tuple<std::string,std::string,std::string>,std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>,std::less<std::tuple<std::string,std::string,std::string>>,true>,std::allocator<std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>>>::__erase_unique<std::tuple<std::string,std::string,std::string>>(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>,std::__map_value_compare<std::tuple<std::string,std::string,std::string>,std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>,std::less<std::tuple<std::string,std::string,std::string>>,true>,std::allocator<std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>>>::find<std::tuple<std::string,std::string,std::string>>(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  std::__tree<std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>,std::__map_value_compare<std::tuple<std::string,std::string,std::string>,std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>,std::less<std::tuple<std::string,std::string,std::string>>,true>,std::allocator<std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>>>::erase(a1, v3);
  return 1;
}

uint64_t *std::__tree<std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>,std::__map_value_compare<std::tuple<std::string,std::string,std::string>,std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>,std::less<std::tuple<std::string,std::string,std::string>>,true>,std::allocator<std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v4 = std::__tree<std::string>::__remove_node_pointer(a1, a2);
  std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>,void *>>>::destroy[abi:ne200100]<std::pair<std::tuple<std::string,std::string,std::string> const,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>,void,0>(a1, (a2 + 4));
  operator delete(a2);
  return v4;
}

void std::__shared_ptr_emplace<quasar::PDecTranslator>::__shared_ptr_emplace[abi:ne200100]<quasar::SystemConfig &,std::string const&,std::string const&,std::string const&,std::map<std::vector<std::string>,std::weak_ptr<kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>>> *,std::unordered_map<std::string,std::weak_ptr<kaldi::quasar::PhraseBook>> *,decltype(nullptr),BOOL &,std::shared_ptr<quasar::ContextProvider> &,std::allocator<quasar::PDecTranslator>,0>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D08F90;
  std::allocator<quasar::PDecTranslator>::construct[abi:ne200100]<quasar::PDecTranslator,quasar::SystemConfig &,std::string const&,std::string const&,std::string const&,std::map<std::vector<std::string>,std::weak_ptr<kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>>> *,std::unordered_map<std::string,std::weak_ptr<kaldi::quasar::PhraseBook>> *,decltype(nullptr),BOOL &,std::shared_ptr<quasar::ContextProvider> &>(&v10, (a1 + 3), a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

void std::allocator<quasar::PDecTranslator>::construct[abi:ne200100]<quasar::PDecTranslator,quasar::SystemConfig &,std::string const&,std::string const&,std::string const&,std::map<std::vector<std::string>,std::weak_ptr<kaldi::quasar::TranslationEngine<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>>>> *,std::unordered_map<std::string,std::weak_ptr<kaldi::quasar::PhraseBook>> *,decltype(nullptr),BOOL &,std::shared_ptr<quasar::ContextProvider> &>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = *(a11 + 8);
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  quasar::PDecTranslator::PDecTranslator(a2);
}

void sub_1B53EAEDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<quasar::SystemConfig>::__init_with_size[abi:ne200100]<quasar::SystemConfig const*,quasar::SystemConfig const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::SystemConfig>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B53EAF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::SystemConfig>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<quasar::SystemConfig>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2A02A02A02A02BLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::SystemConfig>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::SystemConfig>,quasar::SystemConfig const*,quasar::SystemConfig const*,quasar::SystemConfig*>(int a1, quasar::SystemConfig *a2, quasar::SystemConfig *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      quasar::SystemConfig::SystemConfig((a4 + v7), v6, 1, 1);
      v6 = (v6 + 1560);
      v7 += 1560;
    }

    while (v6 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_1B53EB034(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::SystemConfig>,quasar::SystemConfig*>(v1 + v2, v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::tuple<std::string,std::string,std::string>>::__init_with_size[abi:ne200100]<std::tuple<std::string,std::string,std::string> const*,std::tuple<std::string,std::string,std::string> const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::ItnOverride>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B53EB0B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::tuple<std::string,std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::tuple<std::string,std::string,std::string>>,std::tuple<std::string,std::string,std::string> const*,std::tuple<std::string,std::string,std::string> const*,std::tuple<std::string,std::string,std::string>*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v10 = this;
  v11 = this;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,std::string,std::string,std::string>::__tuple_impl(v4, v6);
      v6 = (v6 + 72);
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::tuple<std::string,std::string,std::string>>,std::tuple<std::string,std::string,std::string>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::tuple<std::string,std::string,std::string>>,std::tuple<std::string,std::string,std::string>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::tuple<std::string,std::string,std::string>>,std::tuple<std::string,std::string,std::string>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::tuple<std::string,std::string,std::string>>,std::tuple<std::string,std::string,std::string>*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 72;
      std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>,void *>>>::destroy[abi:ne200100]<std::pair<std::tuple<std::string,std::string,std::string> const,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>,void,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

void std::vector<std::tuple<std::string,std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::tuple<std::string,std::string,std::string>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::tuple<std::string,std::string,std::string>>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>,void *>>>::destroy[abi:ne200100]<std::pair<std::tuple<std::string,std::string,std::string> const,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>,void,0>(a1, i))
  {
    i -= 72;
  }

  *(a1 + 8) = a2;
}

uint64_t std::vector<std::tuple<std::string,std::string,std::string>>::__emplace_back_slow_path<std::string const&,std::string const&,std::string const&>(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  v4 = 0x8E38E38E38E38E39 * ((*(a1 + 8) - *a1) >> 3);
  v5 = v4 + 1;
  if (v4 + 1 > 0x38E38E38E38E38ELL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3) > v5)
  {
    v5 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v8 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v8 = v5;
  }

  v18 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::ItnOverride>>(a1, v8);
  }

  v14 = 0;
  v15 = 72 * v4;
  v16 = 72 * v4;
  v17 = 0;
  _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2EEEEJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES8_S8_EEC2B8ne200100IJLm0ELm1ELm2EEJS8_S8_S8_EJEJEJRKS8_SC_SC_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSE_IJDpT2_EEEDpOT3_((72 * v4), a2, a3, a4);
  v9 = *(a1 + 8) - *a1;
  v10 = (72 * v4 - v9);
  memcpy(v10, *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = 72 * v4 + 72;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::tuple<std::string,std::string,std::string>>::~__split_buffer(&v14);
  return 72 * v4 + 72;
}

void sub_1B53EB3EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::tuple<std::string,std::string,std::string>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<std::tuple<std::string,std::string,std::string>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::tuple<std::string,std::string,std::string>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::tuple<std::string,std::string,std::string>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 72;
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::tuple<std::string,std::string,std::string>,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>,void *>>>::destroy[abi:ne200100]<std::pair<std::tuple<std::string,std::string,std::string> const,std::__list_iterator<std::pair<std::tuple<std::string,std::string,std::string>,std::shared_ptr<quasar::PDecTranslator>>,void *>>,void,0>(v5, v4 - 72);
  }
}

uint64_t std::__tree<std::pair<std::string,std::string>>::__count_unique<std::pair<std::string,std::string>>(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a2 + 23);
    if (v3 >= 0)
    {
      v4 = *(a2 + 23);
    }

    else
    {
      v4 = a2[1];
    }

    if (v3 >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    v6 = *(a2 + 47);
    v7 = a2[4];
    v10 = a2[3];
    v8 = a2 + 3;
    v9 = v10;
    if ((v6 & 0x80u) == 0)
    {
      v11 = v6;
    }

    else
    {
      v11 = v7;
    }

    if ((v6 & 0x80u) == 0)
    {
      v12 = v8;
    }

    else
    {
      v12 = v9;
    }

    v13 = 1;
    do
    {
      v14 = *(v2 + 55);
      if (v14 >= 0)
      {
        v15 = *(v2 + 55);
      }

      else
      {
        v15 = v2[5];
      }

      if (v14 >= 0)
      {
        v16 = (v2 + 4);
      }

      else
      {
        v16 = v2[4];
      }

      if (v15 >= v4)
      {
        v17 = v4;
      }

      else
      {
        v17 = v15;
      }

      v18 = memcmp(v5, v16, v17);
      v19 = v4 < v15;
      if (v18)
      {
        v19 = v18 < 0;
      }

      if (!v19)
      {
        v20 = memcmp(v16, v5, v17);
        v21 = v15 < v4;
        if (v20)
        {
          v21 = v20 < 0;
        }

        if (v21)
        {
          goto LABEL_42;
        }

        v22 = *(v2 + 79);
        if (v22 >= 0)
        {
          v23 = *(v2 + 79);
        }

        else
        {
          v23 = v2[8];
        }

        if (v22 >= 0)
        {
          v24 = (v2 + 7);
        }

        else
        {
          v24 = v2[7];
        }

        if (v23 >= v11)
        {
          v25 = v11;
        }

        else
        {
          v25 = v23;
        }

        v26 = memcmp(v12, v24, v25);
        v27 = v11 < v23;
        if (v26)
        {
          v27 = v26 < 0;
        }

        if (!v27)
        {
LABEL_42:
          v28 = v15 < v4;
          v29 = memcmp(v16, v5, v17);
          v30 = v29 < 0;
          if (!v29)
          {
            v30 = v28;
          }

          if (!v30)
          {
            v31 = *(v2 + 79);
            v32 = v31 >= 0 ? *(v2 + 79) : v2[8];
            v33 = v31 >= 0 ? (v2 + 7) : v2[7];
            v34 = v11 >= v32 ? v32 : v11;
            v35 = memcmp(v33, v12, v34);
            v36 = v32 < v11;
            if (v35)
            {
              v36 = v35 < 0;
            }

            if (!v36)
            {
              return v13;
            }
          }

          ++v2;
        }
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t fst::DeterminizeLatticePruned<fst::LatticeWeightTpl<float>,int>(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 112))(a1);
  (*(*a2 + 280))(a2, v4);
  v5 = (*(*a1 + 120))(a1);
  (*(*a2 + 288))(a2, v5);
  if ((*(*a1 + 160))(a1))
  {
    fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::VectorFst();
  }

  (*(*a2 + 224))(a2);
  return 1;
}

void sub_1B53EB93C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::~LatticeDeterminizerPruned(&a46);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~ImplToFst(&a44);
  _Unwind_Resume(a1);
}

BOOL fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Determinize(uint64_t a1, double *a2)
{
  fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::InitializeDeterminization(a1);
  v4 = *(a1 + 200);
  v5 = *(a1 + 208);
  if (v4 != v5)
  {
    while (1)
    {
      v6 = (*(a1 + 8) - *a1) >> 3;
      v7 = *(a1 + 92);
      if (v7 >= 1 && v6 > v7)
      {
        break;
      }

      v9 = *v4;
      v10 = *(a1 + 96);
      if (v10 >= 1 && *(a1 + 24) > v10)
      {
        break;
      }

      if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * v6, 1) <= 0x1999999999999999uLL)
      {
        if (!fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::CheckMemoryUsage(a1))
        {
          break;
        }

        v4 = *(a1 + 200);
        v5 = *(a1 + 208);
      }

      v11 = v5 - v4;
      if (v11 >= 2)
      {
        v12 = *v4;
        v13 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::TaskCompare &,std::__wrap_iter<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Task **>>(v4, v29, v11);
        v14 = v5 - 1;
        if (v5 - 1 == v13)
        {
          *v13 = v12;
        }

        else
        {
          *v13 = *v14;
          *v14 = v12;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::TaskCompare &,std::__wrap_iter<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Task **>>(v4, (v13 + 1), v29, v13 + 1 - v4);
        }
      }

      *(a1 + 208) -= 8;
      fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::ProcessTransition(a1, *v9, *(v9 + 4), (v9 + 8));
      v15 = *(v9 + 8);
      if (v15)
      {
        *(v9 + 16) = v15;
        operator delete(v15);
      }

      MEMORY[0x1B8C85350](v9, 0x1020C40CC82F220);
      v4 = *(a1 + 200);
      v5 = *(a1 + 208);
      if (v4 == v5)
      {
        goto LABEL_21;
      }
    }

    if (kaldi::g_kaldi_verbose_level >= 1)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(v29, 1);
      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "Lattice determinization terminated but not ", 43);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " because of lattice-beam.  (#states, #arcs) is(", 49);
      v18 = MEMORY[0x1B8C84C30](v17, (*(a1 + 8) - *a1) >> 3);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ", ", 2);
      v20 = MEMORY[0x1B8C84C00](v19, *(a1 + 24));
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "), versus limits(", 20);
      v22 = MEMORY[0x1B8C84C00](v21, *(a1 + 92));
      v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ", ", 2);
      v24 = MEMORY[0x1B8C84C00](v23, *(a1 + 96));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, ") (else, may be memory limit).", 31);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(v29);
    }
  }

LABEL_21:
  *(a1 + 112) = 1;
  v25 = *(a1 + 200);
  v26 = *(a1 + 208);
  if (a2)
  {
    if (v25 == v26)
    {
      *a2 = *(a1 + 64);
      v26 = v25;
    }

    else
    {
      v27 = *(*v25 + 32);
      *a2 = v27 - *(*(a1 + 40) + 8 * (*(**(a1 + 32) + 24))(*(a1 + 32)));
      v25 = *(a1 + 200);
      v26 = *(a1 + 208);
    }
  }

  return v25 == v26;
}

void sub_1B53EBC28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

void fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Output(uint64_t *a1, uint64_t a2, int a3)
{
  v5 = a1[1] - *a1;
  v6 = v5 >> 3;
  if (a3)
  {
    fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::FreeMostMemory(a1);
  }

  (*(*a2 + 224))(a2);
  (*(*a2 + 176))(a2, 0xFFFFFFFFLL);
  if (v6)
  {
    if (v6 < 1)
    {
      (*(*a2 + 176))(a2, 0);
    }

    else
    {
      v7 = 0;
      do
      {
        (*(*a2 + 200))(a2);
        ++v7;
      }

      while (v6 != v7);
      (*(*a2 + 176))(a2, 0);
      v8 = 0;
      v9 = (v5 >> 3) & 0x7FFFFFFF;
      do
      {
        v10 = *(*a1 + 8 * v8);
        v13 = *(v10 + 24);
        v11 = *(v10 + 32);
        v12 = v10 + 24;
        while (v13 != v11)
        {
          v27 = 0;
          v28 = 0;
          v29 = 0;
          memset(&v24, 0, sizeof(v24));
          fst::LatticeStringRepository<int>::ConvertToVector(a1 + 280, *(v13 + 8), &v24);
          v20 = *(v13 + 20);
          v22 = 0;
          v23 = 0;
          v21 = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v21, v24.__begin_, v24.__end_, v24.__end_ - v24.__begin_);
          if (*(v13 + 16) == -1)
          {
            v16 = v20;
            v18 = 0;
            v19 = 0;
            __p = 0;
            std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v21, v22, (v22 - v21) >> 2);
            (*(*a2 + 184))(a2, v8, &v16);
            if (__p)
            {
              v18 = __p;
              operator delete(__p);
            }
          }

          else
          {
            v30 = *(v13 + 16);
            v25[0] = *v13;
            v25[1] = v25[0];
            v26 = v20;
            std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v27, v21, v22, (v22 - v21) >> 2);
            (*(*a2 + 208))(a2, v8, v25);
          }

          if (v21)
          {
            v22 = v21;
            operator delete(v21);
          }

          if (v24.__begin_)
          {
            v24.__end_ = v24.__begin_;
            operator delete(v24.__begin_);
          }

          if (v27)
          {
            v28 = v27;
            operator delete(v27);
          }

          v13 += 32;
        }

        if (a3)
        {
          v14 = *v12;
          *(v12 + 8) = 0;
          *(v12 + 16) = 0;
          *v12 = 0;
          if (v14)
          {
            operator delete(v14);
          }
        }

        ++v8;
      }

      while (v8 != v9);
    }

    if (a3)
    {
      fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::FreeOutputStates(a1);
      fst::LatticeStringRepository<int>::Destroy(a1 + 35);
    }
  }
}

{
  v6 = a1[1] - *a1;
  v7 = v6 >> 3;
  (*(*a2 + 224))(a2);
  if (!(v6 >> 3))
  {
    v32 = *(*a2 + 176);

    v32(a2, 0xFFFFFFFFLL);
    return;
  }

  if (a3)
  {
    fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::FreeMostMemory(a1);
  }

  if (v7 >= 1)
  {
    v8 = 0;
    do
    {
      (*(*a2 + 200))(a2);
      ++v8;
    }

    while (v7 != v8);
    (*(*a2 + 176))(a2, 0);
    v9 = 0;
    v33 = (v6 >> 3) & 0x7FFFFFFF;
    while (1)
    {
      v10 = *(*a1 + 8 * v9);
      v12 = *(v10 + 24);
      v13 = *(v10 + 32);
      v11 = v10 + 24;
      while (v12 != v13)
      {
        memset(&__p, 0, sizeof(__p));
        fst::LatticeStringRepository<int>::ConvertToVector(a1 + 280, *(v12 + 1), &__p);
        begin = __p.__begin_;
        end = __p.__end_;
        if (v12[4] == -1)
        {
          if (__p.__end_ == __p.__begin_)
          {
            v26 = v9;
          }

          else
          {
            v24 = 0;
            v25 = v9;
            do
            {
              v26 = (*(*a2 + 200))(a2);
              v37 = v26;
              v27 = 0;
              if (!v24)
              {
                v27 = *(v12 + 5);
              }

              v36 = v27;
              v34 = 0;
              v35 = __p.__begin_[v24];
              (*(*a2 + 208))(a2, v25, &v34);
              ++v24;
              v25 = v26;
            }

            while (v24 < __p.__end_ - __p.__begin_);
            if (__p.__end_ != __p.__begin_)
            {
              v34 = 0;
              v28 = 0;
LABEL_38:
              v35 = v28;
              (*(*a2 + 184))(a2, v26, &v34);
              goto LABEL_39;
            }
          }

          v28 = v12[6];
          v34 = v12[5];
          goto LABEL_38;
        }

        if ((__p.__end_ - __p.__begin_) <= 4)
        {
          v37 = v12[4];
          v18 = v9;
LABEL_28:
          v23 = *(v12 + 5);
          v22 = 1;
          goto LABEL_29;
        }

        v16 = 0;
        v17 = v9;
        do
        {
          v18 = (*(*a2 + 200))(a2);
          v37 = v18;
          v19 = 0;
          if (!v16)
          {
            v19 = *(v12 + 5);
          }

          v36 = v19;
          v20 = *v12;
          if (v16)
          {
            v20 = 0;
          }

          v34 = v20;
          v35 = __p.__begin_[v16];
          (*(*a2 + 208))(a2, v17, &v34);
          begin = __p.__begin_;
          end = __p.__end_;
          v21 = v16 + 2;
          ++v16;
          v17 = v18;
        }

        while (v21 < __p.__end_ - __p.__begin_);
        v37 = v12[4];
        if ((__p.__end_ - __p.__begin_) <= 1)
        {
          goto LABEL_28;
        }

        v22 = 0;
        v23 = 0;
LABEL_29:
        v36 = v23;
        if (v22)
        {
          v29 = *v12;
        }

        else
        {
          v29 = 0;
        }

        v34 = v29;
        if (end == begin)
        {
          v30 = 0;
        }

        else
        {
          v30 = *(end - 1);
        }

        v35 = v30;
        (*(*a2 + 208))(a2, v18, &v34);
LABEL_39:
        if (__p.__begin_)
        {
          __p.__end_ = __p.__begin_;
          operator delete(__p.__begin_);
        }

        v12 += 8;
      }

      if (a3)
      {
        v31 = *v11;
        *(v11 + 8) = 0;
        *(v11 + 16) = 0;
        *v11 = 0;
        if (v31)
        {
          operator delete(v31);
        }
      }

      if (++v9 == v33)
      {
        if (a3)
        {
          goto LABEL_47;
        }

        return;
      }
    }
  }

  (*(*a2 + 176))(a2, 0);
  if (a3)
  {
LABEL_47:
    fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::FreeOutputStates(a1);
    fst::LatticeStringRepository<int>::Destroy(a1 + 35);
  }
}

void sub_1B53EBF50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a23)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::DeterminizeLatticePruned<fst::LatticeWeightTpl<float>>(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 112))(a1);
  (*(*a2 + 280))(a2, v4);
  v5 = (*(*a1 + 120))(a1);
  (*(*a2 + 288))(a2, v5);
  if ((*(*a1 + 160))(a1))
  {
    fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>::VectorFst();
  }

  (*(*a2 + 224))(a2);
  return 1;
}

void sub_1B53EC30C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::~LatticeDeterminizerPruned(&a48);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~ImplToFst(&a46);
  _Unwind_Resume(a1);
}

void sub_1B53EC7CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::DeterminizeLatticePhonePruned<fst::LatticeWeightTpl<float>,int>(kaldi::TransitionModel *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if ((a5 & 0x100) == 0 && (a5 & 1) == 0)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v15);
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "Both --phone-determinize and --word-determinize are set to ", 59);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "false, copying lattice without determinization.", 47);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v15);
    }

    fst::ConvertLattice<fst::LatticeWeightTpl<float>,int>();
  }

  *(&v17 + 1) = -1;
  v18 = 0x3F000000FFFFFFFFLL;
  *&v17 = a4;
  if (a5)
  {
    if (kaldi::g_kaldi_verbose_level >= 1)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(&v15, 1);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "Doing first pass of determinization on phone + word ", 52);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "lattices.", 9);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v15);
    }

    fst::DeterminizeLatticePhonePrunedFirstPass<fst::LatticeWeightTpl<float>,int>(a1, a2);
  }

  v11 = 1;
  if ((a5 & 0x100) != 0)
  {
    if (kaldi::g_kaldi_verbose_level >= 1)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(&v15, 1);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "Doing second pass of determinization on word lattices.", 54);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v15);
    }

    v15 = v17;
    v16 = v18;
    v11 = fst::DeterminizeLatticePruned<fst::LatticeWeightTpl<float>,int>(a2, a3) & 1;
  }

  if ((a5 & 0x10000) != 0)
  {
    if (kaldi::g_kaldi_verbose_level >= 1)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(&v15, 1);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "Pushing and minimizing on word lattices.", 40);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v15);
    }

    v12 = fst::PushCompactLatticeStrings<fst::LatticeWeightTpl<float>,int>(a3);
    v13 = fst::PushCompactLatticeWeights<fst::LatticeWeightTpl<float>,int>(a3);
    return fst::MinimizeCompactLattice<fst::LatticeWeightTpl<float>,int>(a3, 0.00097656) & v13 & v12 & v11;
  }

  return v11;
}

void fst::DeterminizeLatticePhonePrunedWrapper(kaldi::TransitionModel *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  fst::Invert<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>(a2);
  if (!(*(*a2 + 64))(a2, 0x4000000000, 1))
  {
    fst::TopSort<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>();
  }

  fst::ArcSort<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::ILabelCompare<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>(a2);
  fst::DeterminizeLatticePhonePruned<fst::LatticeWeightTpl<float>,int>(a1, a2, a3, a4, a5);
  fst::Connect<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>(a3);
}

void fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::LatticeDeterminizerPruned(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = (*(*a2 + 88))(a2, 0);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a4;
  v7 = *(a3 + 16);
  *(a1 + 80) = *a3;
  *(a1 + 108) = *(a1 + 80);
  *(a1 + 96) = v7;
  *(a1 + 112) = 0;
  std::unordered_map<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*,int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::SubsetKey,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::SubsetEqual,std::allocator<std::pair<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const* const,int>>>::unordered_map(a1 + 120, 3uLL, a1 + 104, (a1 + 108));
  std::unordered_map<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::SubsetKey,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::SubsetEqual,std::allocator<std::pair<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const* const,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>>::unordered_map(a1 + 160, 3uLL, a1 + 104, (a1 + 108));
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  fst::LatticeStringRepository<int>::LatticeStringRepository(a1 + 280);
}

void sub_1B53ECD10(_Unwind_Exception *a1)
{
  v7 = v1[32];
  if (v7)
  {
    v1[33] = v7;
    operator delete(v7);
  }

  fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::LatticeDeterminizerPruned(v4, v3, (v1 + 20), v1);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v2 + 12);
  v8 = *v5;
  if (*v5)
  {
    v1[6] = v8;
    operator delete(v8);
  }

  v9 = *v1;
  if (*v1)
  {
    v1[1] = v9;
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*,int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::SubsetKey,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::SubsetEqual,std::allocator<std::pair<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const* const,int>>>::unordered_map(uint64_t a1, size_t a2, uint64_t a3, int *a4)
{
  v5 = *a4;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  *(a1 + 36) = v5;
  std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__rehash<true>(a1, a2);
  return a1;
}

uint64_t std::unordered_map<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const*,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::SubsetKey,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::SubsetEqual,std::allocator<std::pair<std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>> const* const,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>>::unordered_map(uint64_t a1, size_t a2, uint64_t a3, int *a4)
{
  v5 = *a4;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  *(a1 + 36) = v5;
  std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__rehash<true>(a1, a2);
  return a1;
}

void fst::LatticeStringRepository<int>::LatticeStringRepository(uint64_t a1)
{
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  operator new();
}

void *fst::LatticeStringRepository<int>::~LatticeStringRepository(void *a1)
{
  fst::LatticeStringRepository<int>::Destroy(a1);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table((a1 + 1));
  return a1;
}

uint64_t fst::LatticeStringRepository<int>::Destroy(void *a1)
{
  for (i = a1[3]; i; i = *i)
  {
    v3 = i[2];
    if (v3)
    {
      MEMORY[0x1B8C85350](v3, 0x1060C40ADAFC7CALL);
    }
  }

  memset(v5, 0, sizeof(v5));
  v6 = 1065353216;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::swap(v5, (a1 + 1));
  if (*a1)
  {
    MEMORY[0x1B8C85350](*a1, 0x1060C40ADAFC7CALL);
    *a1 = 0;
  }

  return std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v5);
}

uint64_t *fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::~LatticeDeterminizerPruned(uint64_t *a1)
{
  fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::FreeMostMemory(a1);
  fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::FreeOutputStates(a1);
  fst::LatticeStringRepository<int>::~LatticeStringRepository(a1 + 35);
  v2 = a1[32];
  if (v2)
  {
    a1[33] = v2;
    operator delete(v2);
  }

  v3 = a1[29];
  if (v3)
  {
    a1[30] = v3;
    operator delete(v3);
  }

  v4 = a1[25];
  if (v4)
  {
    a1[26] = v4;
    operator delete(v4);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table((a1 + 20));
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table((a1 + 15));
  v5 = a1[5];
  if (v5)
  {
    a1[6] = v5;
    operator delete(v5);
  }

  v6 = *a1;
  if (*a1)
  {
    a1[1] = v6;
    operator delete(v6);
  }

  return a1;
}

void fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::FreeMostMemory(uint64_t *a1)
{
  v2 = a1[4];
  if (v2)
  {
    (*(*v2 + 8))(v2);
    a1[4] = 0;
  }

  v24 = 0u;
  v25 = 0u;
  v26 = 0x3A8000003F800000;
  std::__hash_table<std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,int>,std::__unordered_map_hasher<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,int>,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetKey,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetEqual,true>,std::__unordered_map_equal<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,int>,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetEqual,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetKey,false>,std::allocator<std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,int>>>::swap(&v24, (a1 + 15));
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&v24);
  v3 = *a1;
  if (a1[1] != *a1)
  {
    v4 = 0;
    do
    {
      v5 = *(v3 + 8 * v4);
      v6 = *v5;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      *v5 = 0;
      if (v6)
      {
        operator delete(v6);
      }

      ++v4;
      v3 = *a1;
    }

    while (v4 < (a1[1] - *a1) >> 3);
  }

  for (i = a1[22]; i; i = *i)
  {
    v8 = i[2];
    if (v8)
    {
      v9 = *v8;
      if (*v8)
      {
        *(v8 + 8) = v9;
        operator delete(v9);
      }

      MEMORY[0x1B8C85350](v8, 0x20C40960023A9);
    }
  }

  v24 = 0u;
  v25 = 0u;
  v26 = 0x3A8000003F800000;
  std::__hash_table<std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,int>,std::__unordered_map_hasher<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,int>,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetKey,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetEqual,true>,std::__unordered_map_equal<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,int>,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetEqual,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetKey,false>,std::allocator<std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,int>>>::swap(&v24, (a1 + 20));
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&v24);
  v10 = *a1;
  if (a1[1] != *a1)
  {
    v11 = 0;
    do
    {
      v12 = *(v10 + 8 * v11);
      v13 = *v12;
      *(v12 + 8) = 0;
      *(v12 + 16) = 0;
      *v12 = 0;
      if (v13)
      {
        operator delete(v13);
      }

      ++v11;
      v10 = *a1;
    }

    while (v11 < (a1[1] - *a1) >> 3);
  }

  v14 = a1[32];
  a1[33] = 0;
  a1[34] = 0;
  a1[32] = 0;
  if (v14)
  {
    operator delete(v14);
  }

  v15 = a1[25];
  for (j = a1[26]; v15 != j; a1[26] = j)
  {
    v17 = *v15;
    if (*v15)
    {
      v18 = *(v17 + 8);
      if (v18)
      {
        *(v17 + 16) = v18;
        operator delete(v18);
      }

      MEMORY[0x1B8C85350](v17, 0x1020C40CC82F220);
      v15 = a1[25];
      j = a1[26];
    }

    v19 = (j - v15) >> 3;
    if (v19 >= 2)
    {
      v20 = *v15;
      v21 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::TaskCompare &,std::__wrap_iter<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Task **>>(v15, &v24, v19);
      v22 = (j - 8);
      if ((j - 8) == v21)
      {
        *v21 = v20;
      }

      else
      {
        *v21 = *v22;
        *v22 = v20;
        std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::TaskCompare &,std::__wrap_iter<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Task **>>(v15, (v21 + 1), &v24, v21 + 1 - v15);
      }
    }

    v15 = a1[25];
    j = a1[26] - 8;
  }

  v23 = a1[29];
  a1[30] = 0;
  a1[31] = 0;
  a1[29] = 0;
  if (v23)
  {
    operator delete(v23);
  }
}

void fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::FreeOutputStates(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (v3 != v2)
  {
    v5 = 0;
    do
    {
      v6 = v2[v5];
      if (v6)
      {
        v7 = *(v6 + 24);
        if (v7)
        {
          *(v6 + 32) = v7;
          operator delete(v7);
        }

        v8 = *v6;
        if (*v6)
        {
          *(v6 + 8) = v8;
          operator delete(v8);
        }

        MEMORY[0x1B8C85350](v6, 0x1020C405B906368);
        v2 = *a1;
        v3 = *(a1 + 8);
      }

      ++v5;
    }

    while (v5 < (v3 - v2) >> 3);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (v2)
  {

    operator delete(v2);
  }
}

void *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::TaskCompare &,std::__wrap_iter<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Task **>>(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = &a1[v3 + 1];
    v5 = (2 * v3) | 1;
    v6 = 2 * v3 + 2;
    if (v6 < a3)
    {
      v7 = *(*v4 + 32);
      v8 = *(v4[1] + 32);
      v4 += v7 > v8;
      if (v7 > v8)
      {
        v5 = v6;
      }
    }

    *a1 = *v4;
    a1 = v4;
    v3 = v5;
  }

  while (v5 <= (a3 - 2) / 2);
  return v4;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::TaskCompare &,std::__wrap_iter<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Task **>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 8 * v4);
    v6 = *v5;
    v9 = *(a2 - 8);
    v7 = (a2 - 8);
    v8 = v9;
    v10 = *(v9 + 32);
    if (*(*v5 + 32) > v10)
    {
      do
      {
        v11 = v5;
        *v7 = v6;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 8 * v4);
        v6 = *v5;
        v7 = v11;
      }

      while (*(*v5 + 32) > v10);
      *v11 = v8;
    }
  }

  return result;
}

uint64_t fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::InitializeDeterminization(uint64_t a1)
{
  (*(**(a1 + 32) + 64))(*(a1 + 32), 0x4000000000, 1);
  fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::ComputeBackwardWeight(a1);
  if ((*(**(a1 + 32) + 64))(*(a1 + 32), 1, 0))
  {
    v2 = (*(**(a1 + 32) + 160))(*(a1 + 32)) / 2 + 3;
    std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__rehash<true>(a1 + 120, v2);
    std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__rehash<true>(a1 + 160, v2);
  }

  result = (*(**(a1 + 32) + 24))(*(a1 + 32));
  if (result != -1)
  {
    v4 = result;
    std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>::vector[abi:ne200100](&__p, 1uLL);
    v5 = __p;
    *__p = v4;
    v5[1] = 0;
    v5[2] = 0;
    fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::EpsilonClosure(a1, &__p);
    fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::ConvertToMinimal(a1, &__p);
    operator new();
  }

  return result;
}

void sub_1B53ED5E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::CheckMemoryUsage(uint64_t a1)
{
  v1 = *(a1 + 84);
  if (v1 < 1)
  {
    return 1;
  }

  v3 = (32 * *(a1 + 312));
  v4 = (32 * *(a1 + 24));
  v5 = (24 * *(a1 + 28));
  if (v5 + v4 + v3 <= v1)
  {
    return 1;
  }

  fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::RebuildRepository(a1);
  v6 = *(a1 + 312);
  if (kaldi::g_kaldi_verbose_level >= 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v29, 2);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "Rebuilt repository in determinize-lattice: repository shrank from ", 66);
    v8 = MEMORY[0x1B8C84C00](v7, v3);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " to ", 4);
    v10 = MEMORY[0x1B8C84C00](v9, (32 * v6));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " bytes (approximately)", 22);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v29);
  }

  if (v5 + v4 + 32 * v6 <= (*(a1 + 84) * 0.8))
  {
    return 1;
  }

  v11 = *(a1 + 200);
  if (v11 == *(a1 + 208))
  {
    v13 = *(a1 + 64);
  }

  else
  {
    v12 = *v11;
    v13 = *(v12 + 32) - *(*(a1 + 40) + 8 * (*(**(a1 + 32) + 24))(*(a1 + 32)));
  }

  if (kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v29);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "Did not reach requested beam in determinize-lattice: ", 53);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "size exceeds maximum ", 21);
    v17 = MEMORY[0x1B8C84C00](v16, *(a1 + 84));
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " bytes; (repo,arcs,elems) = (", 29);
    v19 = MEMORY[0x1B8C84C00](v18, v3);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ",", 1);
    v21 = MEMORY[0x1B8C84C00](v20, v4);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ",", 1);
    v23 = MEMORY[0x1B8C84C00](v22, v5);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "), after rebuilding, repo size was ", 35);
    v25 = MEMORY[0x1B8C84C00](v24, (32 * v6));
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, ", effective beam was ", 21);
    v27 = MEMORY[0x1B8C84BE0](v26, v13);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, " vs. requested beam ", 20);
    MEMORY[0x1B8C84BE0](v28, *(a1 + 64));
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(v29);
  }

  return 0;
}

void sub_1B53ED880(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::ProcessTransition(uint64_t a1, int a2, __int32 a3, uint64_t *a4)
{
  v4 = a4;
  v8 = *(*(*a1 + 8 * a2) + 48);
  v15 = 0;
  fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::NormalizeSubset(a1, a4, &v14, &v15);
  v13 = 0;
  LODWORD(v4) = fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::InitialToStateId(a1, v4, v10, &v13, v8 + v14.f32[0] + v14.f32[1]);
  v15 = fst::LatticeStringRepository<int>::Concatenate(a1 + 280, *&v15, v13);
  v14 = vadd_f32(v14, v10[0]);
  v10[0].i32[0] = a3;
  v11 = v4;
  v10[1] = v15;
  v12 = v14;
  result = std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::TempArc,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::TempArc>>::push_back[abi:ne200100]((*(*a1 + 8 * a2) + 24), v10);
  ++*(a1 + 24);
  return result;
}

void fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::ComputeBackwardWeight(uint64_t a1)
{
  v2 = (*(**(a1 + 32) + 160))(*(a1 + 32));
  std::vector<double>::resize((a1 + 40), v2);
  v3 = (*(**(a1 + 32) + 160))(*(a1 + 32));
  if (v3 < 1)
  {
    goto LABEL_20;
  }

  v4 = v3;
  do
  {
    v5 = v4--;
    v6 = *(a1 + 40);
    (*(**(a1 + 32) + 32))(v13);
    *(v6 + 8 * v4) = *v13 + *(v13 + 1);
    v7 = *(a1 + 32);
    v15 = 0;
    (*(*v7 + 136))(v7, v4, v13);
    while (1)
    {
      if (!v13[0])
      {
        if (v15 >= v13[2])
        {
          goto LABEL_17;
        }

        goto LABEL_9;
      }

      if ((*(*v13[0] + 24))(v13[0]))
      {
        break;
      }

      if (v13[0])
      {
        v8 = (*(*v13[0] + 32))();
        v9 = v13[0];
        goto LABEL_10;
      }

LABEL_9:
      v9 = 0;
      v8 = v13[1] + 20 * v15;
LABEL_10:
      v10 = *(v8 + 8) + *(v8 + 12) + *(*(a1 + 40) + 8 * *(v8 + 16));
      if (v10 >= *(v6 + 8 * v4))
      {
        v10 = *(v6 + 8 * v4);
      }

      *(v6 + 8 * v4) = v10;
      if (v9)
      {
        (*(*v9 + 40))(v9);
      }

      else
      {
        ++v15;
      }
    }

    if (v13[0])
    {
      (*(*v13[0] + 8))();
      continue;
    }

LABEL_17:
    if (v14)
    {
      --*v14;
    }
  }

  while (v5 > 1);
LABEL_20:
  if ((*(**(a1 + 32) + 24))(*(a1 + 32)) != -1)
  {
    v11 = *(*(a1 + 40) + 8 * (*(**(a1 + 32) + 24))(*(a1 + 32)));
    if (v11 == INFINITY && kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v13);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Total weight of input lattice is zero.", 38);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v13);
    }

    *(a1 + 72) = v11 + *(a1 + 64);
  }
}

uint64_t fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::EpsilonClosure(uint64_t a1, uint64_t *a2)
{
  v61 = *MEMORY[0x1E69E9840];
  v52 = 0u;
  v53 = 0u;
  v54 = 1065353216;
  v4 = *a2;
  if (a2[1] != *a2)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = v4 + v5;
      *v47 = *v7;
      *&v47[8] = *v7;
      v48 = *(v7 + 16);
      std::__hash_table<std::__hash_value_type<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>,std::__unordered_map_hasher<int,std::__hash_value_type<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>>::__emplace_unique_key_args<int,std::pair<int const,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> const&>(&v52, v47);
      ++v6;
      v4 = *a2;
      v5 += 24;
    }

    while (v6 < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }

  v8 = (*(**(a1 + 32) + 64))(*(a1 + 32), 0x10000000, 0);
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v9 = *a2;
  if (*a2 == a2[1])
  {
    goto LABEL_59;
  }

  v10 = v8;
  do
  {
    std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>::push_back[abi:ne200100](&v58, v9);
    std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> &,std::__wrap_iter<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element*>>(v58, v59, v47, 0xAAAAAAAAAAAAAAABLL * ((v59 - v58) >> 3));
    v9 += 24;
  }

  while (v9 != a2[1]);
  v11 = v58;
  v12 = v59;
  v13 = v59 - v58;
  if (v59 == v58)
  {
    goto LABEL_59;
  }

  v44 = 0;
  v14 = 0;
  do
  {
    v50 = *v11;
    v15 = v11[4];
    v16 = v11[5];
    v51 = __PAIR64__(v16, v15);
    if (v13 >= 25)
    {
      *v47 = *v11;
      v17 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> &,std::__wrap_iter<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element*>>(v11, &v45, 0xAAAAAAAAAAAAAAABLL * (v13 >> 3));
      v18 = v12 - 3;
      if (v12 - 3 == v17)
      {
        *v17 = *v47;
        *(v17 + 16) = v15;
        *(v17 + 20) = v16;
      }

      else
      {
        *v17 = *v18;
        *(v17 + 16) = *(v12 - 1);
        *v18 = *v47;
        *(v12 - 2) = v15;
        *(v12 - 1) = v16;
        std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> &,std::__wrap_iter<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element*>>(v11, v17 + 24, &v45, 0xAAAAAAAAAAAAAAABLL * ((v17 + 24 - v11) >> 3));
      }

      v12 = v59;
    }

    v59 = v12 - 3;
    if (v14)
    {
      *v47 = &v50;
      v19 = std::__hash_table<std::__hash_value_type<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>,std::__unordered_map_hasher<int,std::__hash_value_type<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v52, &v50);
      if (*(v19 + 6) != v50 || v19[4] != *(&v50 + 1) || (v20 = *(v19 + 11), *v47 = *(v19 + 10), LODWORD(v45) = v20, v57 = *(&v51 + 1), LODWORD(v56[0]) = v51, *v47 != *&v51) || *&v45 != v57)
      {
        v14 = 1;
        goto LABEL_58;
      }
    }

    v21 = *(a1 + 88);
    if (v21 >= 1)
    {
      if (v44 > v21)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v47);
        v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "Lattice determinization aborted since looped more than ", 55);
        v43 = MEMORY[0x1B8C84C00](v42, *(a1 + 88));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, " times during epsilon closure.\n", 31);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v47);
      }

      ++v44;
    }

    v22 = *(a1 + 32);
    v49 = 0;
    (*(*v22 + 136))(v22, v50, v47);
    while (1)
    {
      if (!*v47)
      {
        if (v49 >= *&v47[16])
        {
          goto LABEL_56;
        }

LABEL_29:
        v25 = (*&v47[8] + 20 * v49);
        goto LABEL_30;
      }

      v23 = (*(**v47 + 24))(*v47);
      v24 = *v47;
      if (v23)
      {
        goto LABEL_54;
      }

      if (!*v47)
      {
        goto LABEL_29;
      }

      v25 = (*(**v47 + 32))();
LABEL_30:
      v26 = *v25;
      if ((v10 & 0x10000000) != 0)
      {
        if (v26)
        {
          break;
        }
      }

      if (!v26)
      {
        v27.i32[0] = v25[2];
        v28 = v25[3];
        LODWORD(v45) = v27.i32[0];
        LODWORD(v56[0]) = v28;
        v57 = INFINITY;
        v55 = INFINITY;
        if (v27.f32[0] != INFINITY || v56[0] != v55)
        {
          LODWORD(v45) = v25[4];
          v27.i32[1] = v28;
          v46 = vadd_f32(v51, v27);
          v29 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(&v52, &v45);
          v30 = v29;
          if (v29)
          {
            v31 = *(v29 + 10);
            v32 = v31 + *(v29 + 11);
            if ((v46.f32[0] + v46.f32[1]) < v32)
            {
              goto LABEL_39;
            }

            if ((v46.f32[0] + v46.f32[1]) <= v32)
            {
              if (v46.f32[0] < v31)
              {
                goto LABEL_39;
              }

              if (v46.f32[0] <= v31)
              {
                v38 = v25[1];
                v39 = *(&v50 + 1);
                if (v38)
                {
                  v39 = fst::LatticeStringRepository<int>::Successor(a1 + 280, *(&v50 + 1), v38);
                }

                *(&v45 + 1) = v39;
                if (fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Compare(a1, &v46, v39, v30 + 10, v30[4]) == 1)
                {
LABEL_39:
                  v33 = v25[1];
                  v34 = *(&v50 + 1);
                  if (v33)
                  {
                    v34 = fst::LatticeStringRepository<int>::Successor(a1 + 280, *(&v50 + 1), v33);
                  }

                  *(&v45 + 1) = v34;
                  v30[4] = v34;
                  v30[5] = v46;
                  std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>::push_back[abi:ne200100](&v58, &v45);
                  std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> &,std::__wrap_iter<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element*>>(v58, v59, v56, 0xAAAAAAAAAAAAAAABLL * ((v59 - v58) >> 3));
                  v14 = 1;
                }
              }
            }
          }

          else
          {
            v35 = v25[1];
            v36 = *(&v50 + 1);
            if (v35)
            {
              v36 = fst::LatticeStringRepository<int>::Successor(a1 + 280, *(&v50 + 1), v35);
            }

            *(&v45 + 1) = v36;
            *v56 = &v45;
            v37 = std::__hash_table<std::__hash_value_type<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>,std::__unordered_map_hasher<int,std::__hash_value_type<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v52, &v45);
            *(v37 + 3) = v45;
            v37[5] = v46;
            std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>::push_back[abi:ne200100](&v58, &v45);
            std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> &,std::__wrap_iter<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element*>>(v58, v59, v56, 0xAAAAAAAAAAAAAAABLL * ((v59 - v58) >> 3));
          }
        }
      }

      if (*v47)
      {
        (*(**v47 + 40))(*v47);
      }

      else
      {
        ++v49;
      }
    }

    v24 = *v47;
LABEL_54:
    if (v24)
    {
      (*(*v24 + 8))(v24);
      goto LABEL_58;
    }

LABEL_56:
    if (v48)
    {
      --*v48;
    }

LABEL_58:
    v11 = v58;
    v12 = v59;
    v13 = v59 - v58;
  }

  while (v59 != v58);
LABEL_59:
  a2[1] = *a2;
  std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>::reserve(a2, *(&v53 + 1));
  for (i = v53; i; i = *i)
  {
    std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>::push_back[abi:ne200100](a2, (i + 3));
  }

  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }

  return std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&v52);
}

void sub_1B53EE390(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B53EE42CLL);
}

void sub_1B53EE3C0(_Unwind_Exception *a1)
{
  v3 = *(v1 - 152);
  if (v3)
  {
    *(v1 - 144) = v3;
    operator delete(v3);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v1 - 224);
  _Unwind_Resume(a1);
}

void sub_1B53EE3CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, _DWORD *a16)
{
  if (a13)
  {
    (*(*a13 + 8))(a13);
  }

  else if (a16)
  {
    --*a16;
  }

  v18 = *(v16 - 152);
  if (v18)
  {
    *(v16 - 144) = v18;
    operator delete(v18);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v16 - 224);
  _Unwind_Resume(a1);
}

void fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::ConvertToMinimal(uint64_t a1, unsigned int **a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *a2;
  do
  {
    if (fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::IsIsymbolOrFinal(a1, *v4))
    {
      *v6 = *v4;
      *(v6 + 2) = *(v4 + 2);
      v6 += 6;
    }

    v4 += 6;
  }

  while (v4 != v5);
  v7 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a2) >> 3);

  std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>::resize(a2, v7);
}

void *fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::ProcessFinal(void *result, int a2)
{
  v2 = *(*result + 8 * a2);
  v14 = vneg_f32(0x7F0000007FLL);
  v3 = *v2;
  v4 = *(v2 + 8);
  if (*v2 == v4)
  {
    return result;
  }

  v5 = result;
  v6 = 0;
  v7 = 0;
  do
  {
    result = (*(*v5[4] + 32))(&v13);
    v8 = vadd_f32(v3[2], v13);
    v10[0] = v8;
    v9 = v3[1];
    v17 = v8.f32[1];
    v13.i32[0] = v8.i32[0];
    v16 = 2139095040;
    v15 = INFINITY;
    if (v8.f32[0] != INFINITY || v17 != v15)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_8;
      }

      result = fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Compare(v5, v10, v9, &v14, v6);
      if (result == 1)
      {
        v8 = v10[0];
LABEL_8:
        v14 = v8;
        v7 = 1;
        v6 = v9;
        goto LABEL_10;
      }

      v7 = 1;
    }

LABEL_10:
    v3 += 3;
  }

  while (v3 != v4);
  if ((v7 & 1) != 0 && *(v2 + 48) + v14.f32[0] + v14.f32[1] <= *(v5 + 9))
  {
    LODWORD(v10[0]) = 0;
    v11 = -1;
    v10[1] = v6;
    v12 = v14;
    result = std::vector<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::TempArc,std::allocator<fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::TempArc>>::push_back[abi:ne200100]((v2 + 24), v10);
    ++*(v5 + 6);
  }

  return result;
}

void fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::ProcessTransitions(void *a1, int a2)
{
  v3 = a1 + 29;
  v4 = *(*a1 + 8 * a2);
  v5 = *v4;
  v6 = v4[1];
  if (*v4 == v6)
  {
    goto LABEL_23;
  }

  do
  {
    v7 = a1[4];
    v8 = v5->u32[0];
    v22 = 0;
    (*(*v7 + 136))(v7, v8, v20);
    while (1)
    {
      if (!v20[0])
      {
        if (v22 >= v20[2])
        {
          goto LABEL_20;
        }

LABEL_8:
        v10 = (v20[1] + 20 * v22);
        goto LABEL_9;
      }

      if ((*(*v20[0] + 24))(v20[0]))
      {
        break;
      }

      if (!v20[0])
      {
        goto LABEL_8;
      }

      v10 = (*(*v20[0] + 32))();
LABEL_9:
      if (v10->i32[0])
      {
        v11 = v10[1].f32[1];
        LODWORD(v23) = v10[1].i32[0];
        v29 = v11;
        v28 = 2139095040;
        v27 = INFINITY;
        if (*&v23 != INFINITY || (v9.n128_f32[0] = v29, v29 != v27))
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v12 = v10[2].i32[0];
          LODWORD(v23) = v10->i32[0];
          LODWORD(v24) = v12;
          v26 = vadd_f32(v5[2], v10[1]);
          v13 = v10->i32[1];
          v14 = v5[1];
          if (v13)
          {
            v14 = fst::LatticeStringRepository<int>::Successor((a1 + 35), v14, v13);
          }

          v25 = v14;
          std::vector<std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element>>::push_back[abi:ne200100](v3, &v23);
        }
      }

      if (v20[0])
      {
        (*(*v20[0] + 40))(v20[0], v9);
      }

      else
      {
        ++v22;
      }
    }

    if (v20[0])
    {
      (*(*v20[0] + 8))();
      goto LABEL_22;
    }

LABEL_20:
    if (v21)
    {
      --*v21;
    }

LABEL_22:
    v5 += 3;
  }

  while (v5 != v6);
LABEL_23:
  v15 = a1[29];
  v16 = a1[30];
  v17 = 126 - 2 * __clz((v16 - v15) >> 5);
  if (v16 == v15)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17;
  }

  std::__introsort<std::_ClassicAlgPolicy,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::PairComparator &,std::pair<int,fst::LatticeDeterminizerPruned<fst::LatticeWeightTpl<float>,int>::Element> *,false>(v15, v16, v20, v18, 1);
  v19 = a1[29];
  if (v19 != a1[30])
  {
    operator new();
  }

  a1[30] = v19;
}