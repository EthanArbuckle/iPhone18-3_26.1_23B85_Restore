void sub_1000706A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void AWDMetricsLogger_MACMetrics(void *a1)
{
  v1 = a1;
  memset(&v158, 0, sizeof(v158));
  std::string::append(&v158, "AWDFlagstoneMACMetrics:: ");
  if ([v1 hasHeader])
  {
    v2 = [v1 header];
    v3 = [v2 hasDaemonVersion];

    if (v3)
    {
      std::string::append(&v158, "DaemonVersion=");
      v4 = [v1 header];
      v5 = [v4 daemonVersion];
      v6 = v5;
      std::string::append(&v158, [v5 UTF8String]);

      std::string::append(&v158, "::");
    }

    v7 = [v1 header];
    v8 = [v7 hasVendorVersion];

    if (v8)
    {
      std::string::append(&v158, "VendorVersion=");
      v9 = [v1 header];
      v10 = [v9 vendorVersion];
      v11 = v10;
      std::string::append(&v158, [v10 UTF8String]);

      std::string::append(&v158, "::");
    }
  }

  if ([v1 hasSCntrsMacRx])
  {
    std::string::append(&v158, "rx_total");
    std::string::append(&v158, "=");
    v12 = [v1 sCntrsMacRx];
    std::to_string(&v159, [v12 rxTotal]);
    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v159;
    }

    else
    {
      v13 = v159.__r_.__value_.__r.__words[0];
    }

    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v159.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v159.__r_.__value_.__l.__size_;
    }

    std::string::append(&v158, v13, size);
    if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v159.__r_.__value_.__l.__data_);
    }

    std::string::append(&v158, "::");
    std::string::append(&v158, "rx_data");
    std::string::append(&v158, "=");
    v15 = [v1 sCntrsMacRx];
    std::to_string(&v159, [v15 rxData]);
    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v159;
    }

    else
    {
      v16 = v159.__r_.__value_.__r.__words[0];
    }

    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = HIBYTE(v159.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v17 = v159.__r_.__value_.__l.__size_;
    }

    std::string::append(&v158, v16, v17);
    if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v159.__r_.__value_.__l.__data_);
    }

    std::string::append(&v158, "::");
    std::string::append(&v158, "rx_unicast");
    std::string::append(&v158, "=");
    v18 = [v1 sCntrsMacRx];
    std::to_string(&v159, [v18 rxUnicast]);
    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v159;
    }

    else
    {
      v19 = v159.__r_.__value_.__r.__words[0];
    }

    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = HIBYTE(v159.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v20 = v159.__r_.__value_.__l.__size_;
    }

    std::string::append(&v158, v19, v20);
    if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v159.__r_.__value_.__l.__data_);
    }

    std::string::append(&v158, "::");
    std::string::append(&v158, "rx_broadcast");
    std::string::append(&v158, "=");
    v21 = [v1 sCntrsMacRx];
    std::to_string(&v159, [v21 rxBroadcast]);
    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v159;
    }

    else
    {
      v22 = v159.__r_.__value_.__r.__words[0];
    }

    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = HIBYTE(v159.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v23 = v159.__r_.__value_.__l.__size_;
    }

    std::string::append(&v158, v22, v23);
    if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v159.__r_.__value_.__l.__data_);
    }

    std::string::append(&v158, "::");
    std::string::append(&v158, "rx_err_fcs");
    std::string::append(&v158, "=");
    v24 = [v1 sCntrsMacRx];
    std::to_string(&v159, [v24 rxErrFcs]);
    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = &v159;
    }

    else
    {
      v25 = v159.__r_.__value_.__r.__words[0];
    }

    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = HIBYTE(v159.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v26 = v159.__r_.__value_.__l.__size_;
    }

    std::string::append(&v158, v25, v26);
    if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v159.__r_.__value_.__l.__data_);
    }

    std::string::append(&v158, "::");
    std::string::append(&v158, "rx_err_unknown_neighbor");
    std::string::append(&v158, "=");
    v27 = [v1 sCntrsMacRx];
    std::to_string(&v159, [v27 rxErrUnknownNeighbor]);
    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = &v159;
    }

    else
    {
      v28 = v159.__r_.__value_.__r.__words[0];
    }

    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = HIBYTE(v159.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v29 = v159.__r_.__value_.__l.__size_;
    }

    std::string::append(&v158, v28, v29);
    if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v159.__r_.__value_.__l.__data_);
    }

    std::string::append(&v158, "::");
    std::string::append(&v158, "rx_err_invalid_src_addr");
    std::string::append(&v158, "=");
    v30 = [v1 sCntrsMacRx];
    std::to_string(&v159, [v30 rxErrInvalidSrcAddr]);
    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = &v159;
    }

    else
    {
      v31 = v159.__r_.__value_.__r.__words[0];
    }

    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v32 = HIBYTE(v159.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v32 = v159.__r_.__value_.__l.__size_;
    }

    std::string::append(&v158, v31, v32);
    if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v159.__r_.__value_.__l.__data_);
    }

    std::string::append(&v158, "::");
    std::string::append(&v158, "rx_err_security");
    std::string::append(&v158, "=");
    v33 = [v1 sCntrsMacRx];
    std::to_string(&v159, [v33 rxErrSecurity]);
    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v34 = &v159;
    }

    else
    {
      v34 = v159.__r_.__value_.__r.__words[0];
    }

    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = HIBYTE(v159.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v35 = v159.__r_.__value_.__l.__size_;
    }

    std::string::append(&v158, v34, v35);
    if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v159.__r_.__value_.__l.__data_);
    }

    std::string::append(&v158, "::");
    std::string::append(&v158, "rx_err_noframe");
    std::string::append(&v158, "=");
    v36 = [v1 sCntrsMacRx];
    std::to_string(&v159, [v36 rxErrNoframe]);
    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v37 = &v159;
    }

    else
    {
      v37 = v159.__r_.__value_.__r.__words[0];
    }

    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v38 = HIBYTE(v159.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v38 = v159.__r_.__value_.__l.__size_;
    }

    std::string::append(&v158, v37, v38);
    if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v159.__r_.__value_.__l.__data_);
    }

    std::string::append(&v158, "::");
    std::string::append(&v158, "rx_err_duplicated");
    std::string::append(&v158, "=");
    v39 = [v1 sCntrsMacRx];
    std::to_string(&v159, [v39 rxErrDuplicated]);
    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v40 = &v159;
    }

    else
    {
      v40 = v159.__r_.__value_.__r.__words[0];
    }

    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v41 = HIBYTE(v159.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v41 = v159.__r_.__value_.__l.__size_;
    }

    std::string::append(&v158, v40, v41);
    if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v159.__r_.__value_.__l.__data_);
    }

    std::string::append(&v158, "::");
    std::string::append(&v158, "rx_err_other");
    std::string::append(&v158, "=");
    v42 = [v1 sCntrsMacRx];
    std::to_string(&v159, [v42 rxErrOther]);
    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v43 = &v159;
    }

    else
    {
      v43 = v159.__r_.__value_.__r.__words[0];
    }

    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v44 = HIBYTE(v159.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v44 = v159.__r_.__value_.__l.__size_;
    }

    std::string::append(&v158, v43, v44);
    if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v159.__r_.__value_.__l.__data_);
    }

    std::string::append(&v158, "::");
    std::string::append(&v158, "RxPacketCountHistograms=");
    for (i = 0; ; ++i)
    {
      v46 = [v1 sCntrsMacRx];
      v47 = [v46 rxPacketCountHistogramsCount] > i;

      if (!v47)
      {
        break;
      }

      std::string::append(&v158, "[");
      v48 = [v1 sCntrsMacRx];
      std::to_string(&v159, *([v48 rxPacketCountHistograms] + i));
      if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v49 = &v159;
      }

      else
      {
        v49 = v159.__r_.__value_.__r.__words[0];
      }

      if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v50 = HIBYTE(v159.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v50 = v159.__r_.__value_.__l.__size_;
      }

      std::string::append(&v158, v49, v50);
      if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v159.__r_.__value_.__l.__data_);
      }

      std::string::append(&v158, "]");
    }

    std::string::append(&v158, "::");
    std::string::append(&v158, "rx_err_percentage");
    std::string::append(&v158, "=");
    v51 = [v1 sCntrsMacRx];
    std::to_string(&v159, [v51 rxErrPercentage]);
    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v52 = &v159;
    }

    else
    {
      v52 = v159.__r_.__value_.__r.__words[0];
    }

    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v53 = HIBYTE(v159.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v53 = v159.__r_.__value_.__l.__size_;
    }

    std::string::append(&v158, v52, v53);
    if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v159.__r_.__value_.__l.__data_);
    }

    std::string::append(&v158, "::");
  }

  if ([v1 hasSCntrsMacTx])
  {
    std::string::append(&v158, "tx_total");
    std::string::append(&v158, "=");
    v54 = [v1 sCntrsMacTx];
    std::to_string(&v159, [v54 txTotal]);
    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v55 = &v159;
    }

    else
    {
      v55 = v159.__r_.__value_.__r.__words[0];
    }

    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v56 = HIBYTE(v159.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v56 = v159.__r_.__value_.__l.__size_;
    }

    std::string::append(&v158, v55, v56);
    if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v159.__r_.__value_.__l.__data_);
    }

    std::string::append(&v158, "::");
    std::string::append(&v158, "tx_data");
    std::string::append(&v158, "=");
    v57 = [v1 sCntrsMacTx];
    std::to_string(&v159, [v57 txData]);
    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v58 = &v159;
    }

    else
    {
      v58 = v159.__r_.__value_.__r.__words[0];
    }

    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v59 = HIBYTE(v159.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v59 = v159.__r_.__value_.__l.__size_;
    }

    std::string::append(&v158, v58, v59);
    if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v159.__r_.__value_.__l.__data_);
    }

    std::string::append(&v158, "::");
    std::string::append(&v158, "tx_unicast");
    std::string::append(&v158, "=");
    v60 = [v1 sCntrsMacTx];
    std::to_string(&v159, [v60 txUnicast]);
    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v61 = &v159;
    }

    else
    {
      v61 = v159.__r_.__value_.__r.__words[0];
    }

    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v62 = HIBYTE(v159.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v62 = v159.__r_.__value_.__l.__size_;
    }

    std::string::append(&v158, v61, v62);
    if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v159.__r_.__value_.__l.__data_);
    }

    std::string::append(&v158, "::");
    std::string::append(&v158, "tx_broadcast");
    std::string::append(&v158, "=");
    v63 = [v1 sCntrsMacTx];
    std::to_string(&v159, [v63 txBroadcast]);
    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v64 = &v159;
    }

    else
    {
      v64 = v159.__r_.__value_.__r.__words[0];
    }

    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v65 = HIBYTE(v159.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v65 = v159.__r_.__value_.__l.__size_;
    }

    std::string::append(&v158, v64, v65);
    if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v159.__r_.__value_.__l.__data_);
    }

    std::string::append(&v158, "::");
    std::string::append(&v158, "tx_err_cca");
    std::string::append(&v158, "=");
    v66 = [v1 sCntrsMacTx];
    std::to_string(&v159, [v66 txErrCca]);
    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v67 = &v159;
    }

    else
    {
      v67 = v159.__r_.__value_.__r.__words[0];
    }

    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v68 = HIBYTE(v159.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v68 = v159.__r_.__value_.__l.__size_;
    }

    std::string::append(&v158, v67, v68);
    if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v159.__r_.__value_.__l.__data_);
    }

    std::string::append(&v158, "::");
    std::string::append(&v158, "tx_err_abort");
    std::string::append(&v158, "=");
    v69 = [v1 sCntrsMacTx];
    std::to_string(&v159, [v69 txErrAbort]);
    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v70 = &v159;
    }

    else
    {
      v70 = v159.__r_.__value_.__r.__words[0];
    }

    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v71 = HIBYTE(v159.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v71 = v159.__r_.__value_.__l.__size_;
    }

    std::string::append(&v158, v70, v71);
    if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v159.__r_.__value_.__l.__data_);
    }

    std::string::append(&v158, "::");
    std::string::append(&v158, "tx_err_busy_channel");
    std::string::append(&v158, "=");
    v72 = [v1 sCntrsMacTx];
    std::to_string(&v159, [v72 txErrBusyChannel]);
    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v73 = &v159;
    }

    else
    {
      v73 = v159.__r_.__value_.__r.__words[0];
    }

    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v74 = HIBYTE(v159.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v74 = v159.__r_.__value_.__l.__size_;
    }

    std::string::append(&v158, v73, v74);
    if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v159.__r_.__value_.__l.__data_);
    }

    std::string::append(&v158, "::");
    std::string::append(&v158, "tx_err_cca_percentage");
    std::string::append(&v158, "=");
    v75 = [v1 sCntrsMacTx];
    std::to_string(&v159, [v75 txErrCcaPercentage]);
    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v76 = &v159;
    }

    else
    {
      v76 = v159.__r_.__value_.__r.__words[0];
    }

    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v77 = HIBYTE(v159.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v77 = v159.__r_.__value_.__l.__size_;
    }

    std::string::append(&v158, v76, v77);
    if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v159.__r_.__value_.__l.__data_);
    }

    std::string::append(&v158, "::");
    std::string::append(&v158, "tx_err_abort_percentage");
    std::string::append(&v158, "=");
    v78 = [v1 sCntrsMacTx];
    std::to_string(&v159, [v78 txErrAbortPercentage]);
    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v79 = &v159;
    }

    else
    {
      v79 = v159.__r_.__value_.__r.__words[0];
    }

    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v80 = HIBYTE(v159.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v80 = v159.__r_.__value_.__l.__size_;
    }

    std::string::append(&v158, v79, v80);
    if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v159.__r_.__value_.__l.__data_);
    }

    std::string::append(&v158, "::");
    std::string::append(&v158, "tx_err_busy_channel_percentage");
    std::string::append(&v158, "=");
    v81 = [v1 sCntrsMacTx];
    std::to_string(&v159, [v81 txErrBusyChannelPercentage]);
    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v82 = &v159;
    }

    else
    {
      v82 = v159.__r_.__value_.__r.__words[0];
    }

    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v83 = HIBYTE(v159.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v83 = v159.__r_.__value_.__l.__size_;
    }

    std::string::append(&v158, v82, v83);
    if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v159.__r_.__value_.__l.__data_);
    }

    std::string::append(&v158, "::");
    std::string::append(&v158, "tx_err_percentage");
    std::string::append(&v158, "=");
    v84 = [v1 sCntrsMacTx];
    std::to_string(&v159, [v84 txErrPercentage]);
    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v85 = &v159;
    }

    else
    {
      v85 = v159.__r_.__value_.__r.__words[0];
    }

    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v86 = HIBYTE(v159.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v86 = v159.__r_.__value_.__l.__size_;
    }

    std::string::append(&v158, v85, v86);
    if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v159.__r_.__value_.__l.__data_);
    }

    std::string::append(&v158, "::");
    std::string::append(&v158, "tx_direct_max_retry_expiry");
    std::string::append(&v158, "=");
    v87 = [v1 sCntrsMacTx];
    std::to_string(&v159, [v87 txDirectMaxRetryExpiry]);
    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v88 = &v159;
    }

    else
    {
      v88 = v159.__r_.__value_.__r.__words[0];
    }

    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v89 = HIBYTE(v159.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v89 = v159.__r_.__value_.__l.__size_;
    }

    std::string::append(&v158, v88, v89);
    if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v159.__r_.__value_.__l.__data_);
    }

    std::string::append(&v158, "::");
    std::string::append(&v158, "tx_indirect_max_retry_expiry");
    std::string::append(&v158, "=");
    v90 = [v1 sCntrsMacTx];
    std::to_string(&v159, [v90 txIndirectMaxRetryExpiry]);
    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v91 = &v159;
    }

    else
    {
      v91 = v159.__r_.__value_.__r.__words[0];
    }

    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v92 = HIBYTE(v159.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v92 = v159.__r_.__value_.__l.__size_;
    }

    std::string::append(&v158, v91, v92);
    if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v159.__r_.__value_.__l.__data_);
    }

    std::string::append(&v158, "::");
    std::string::append(&v158, "TxPacketCountHistograms=");
    for (j = 0; ; ++j)
    {
      v94 = [v1 sCntrsMacTx];
      v95 = [v94 txPacketCountHistogramsCount] > j;

      if (!v95)
      {
        break;
      }

      std::string::append(&v158, "[");
      v96 = [v1 sCntrsMacTx];
      std::to_string(&v159, *([v96 txPacketCountHistograms] + j));
      if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v97 = &v159;
      }

      else
      {
        v97 = v159.__r_.__value_.__r.__words[0];
      }

      if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v98 = HIBYTE(v159.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v98 = v159.__r_.__value_.__l.__size_;
      }

      std::string::append(&v158, v97, v98);
      if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v159.__r_.__value_.__l.__data_);
      }

      std::string::append(&v158, "]");
    }

    std::string::append(&v158, "::");
    std::string::append(&v158, "TxDirectRetryAttemptsHistograms=");
    for (k = 0; ; ++k)
    {
      v100 = [v1 sCntrsMacTx];
      v101 = [v100 txDirectRetryAttemptsHistogramsCount] > k;

      if (!v101)
      {
        break;
      }

      std::string::append(&v158, "[");
      v102 = [v1 sCntrsMacTx];
      std::to_string(&v159, *([v102 txDirectRetryAttemptsHistograms] + k));
      if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v103 = &v159;
      }

      else
      {
        v103 = v159.__r_.__value_.__r.__words[0];
      }

      if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v104 = HIBYTE(v159.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v104 = v159.__r_.__value_.__l.__size_;
      }

      std::string::append(&v158, v103, v104);
      if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v159.__r_.__value_.__l.__data_);
      }

      std::string::append(&v158, "]");
    }

    std::string::append(&v158, "::");
    std::string::append(&v158, "TxIndirectRetryAttemptsHistograms=");
    for (m = 0; ; ++m)
    {
      v106 = [v1 sCntrsMacTx];
      v107 = [v106 txIndirectRetryAttemptsHistogramsCount] > m;

      if (!v107)
      {
        break;
      }

      std::string::append(&v158, "[");
      v108 = [v1 sCntrsMacTx];
      std::to_string(&v159, *([v108 txIndirectRetryAttemptsHistograms] + m));
      if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v109 = &v159;
      }

      else
      {
        v109 = v159.__r_.__value_.__r.__words[0];
      }

      if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v110 = HIBYTE(v159.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v110 = v159.__r_.__value_.__l.__size_;
      }

      std::string::append(&v158, v109, v110);
      if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v159.__r_.__value_.__l.__data_);
      }

      std::string::append(&v158, "]");
    }

    std::string::append(&v158, "::");
    std::string::append(&v158, "TxCcaEnergyDetectHistograms=");
    for (n = 0; ; ++n)
    {
      v112 = [v1 sCntrsMacTx];
      v113 = [v112 txCcaEnergyDetectedHistogramsCount] > n;

      if (!v113)
      {
        break;
      }

      std::string::append(&v158, "[");
      v114 = [v1 sCntrsMacTx];
      std::to_string(&v159, *([v114 txCcaEnergyDetectedHistograms] + n));
      if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v115 = &v159;
      }

      else
      {
        v115 = v159.__r_.__value_.__r.__words[0];
      }

      if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v116 = HIBYTE(v159.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v116 = v159.__r_.__value_.__l.__size_;
      }

      std::string::append(&v158, v115, v116);
      if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v159.__r_.__value_.__l.__data_);
      }

      std::string::append(&v158, "]");
    }

    std::string::append(&v158, "::");
    std::string::append(&v158, "TxNoAckErrorHistograms=");
    for (ii = 0; ; ++ii)
    {
      v118 = [v1 sCntrsMacTx];
      v119 = [v118 txDirectNoackHistogramsCount] > ii;

      if (!v119)
      {
        break;
      }

      std::string::append(&v158, "[");
      v120 = [v1 sCntrsMacTx];
      std::to_string(&v159, *([v120 txDirectNoackHistograms] + ii));
      if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v121 = &v159;
      }

      else
      {
        v121 = v159.__r_.__value_.__r.__words[0];
      }

      if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v122 = HIBYTE(v159.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v122 = v159.__r_.__value_.__l.__size_;
      }

      std::string::append(&v158, v121, v122);
      if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v159.__r_.__value_.__l.__data_);
      }

      std::string::append(&v158, "]");
    }

    std::string::append(&v158, "::");
    std::string::append(&v158, "TxChannelAccessFailureErrorHistograms=");
    for (jj = 0; ; ++jj)
    {
      v124 = [v1 sCntrsMacTx];
      v125 = [v124 txDirectChannelaccessfailureHistogramsCount] > jj;

      if (!v125)
      {
        break;
      }

      std::string::append(&v158, "[");
      v126 = [v1 sCntrsMacTx];
      std::to_string(&v159, *([v126 txDirectChannelaccessfailureHistograms] + jj));
      if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v127 = &v159;
      }

      else
      {
        v127 = v159.__r_.__value_.__r.__words[0];
      }

      if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v128 = HIBYTE(v159.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v128 = v159.__r_.__value_.__l.__size_;
      }

      std::string::append(&v158, v127, v128);
      if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v159.__r_.__value_.__l.__data_);
      }

      std::string::append(&v158, "]");
    }

    std::string::append(&v158, "::");
    std::string::append(&v158, "TxCsmaBackoffHistograms=");
    for (kk = 0; ; ++kk)
    {
      v130 = [v1 sCntrsMacTx];
      v131 = [v130 txCsmaBackoffHistogramsCount] > kk;

      if (!v131)
      {
        break;
      }

      std::string::append(&v158, "[");
      v132 = [v1 sCntrsMacTx];
      std::to_string(&v159, *([v132 txCsmaBackoffHistograms] + kk));
      if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v133 = &v159;
      }

      else
      {
        v133 = v159.__r_.__value_.__r.__words[0];
      }

      if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v134 = HIBYTE(v159.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v134 = v159.__r_.__value_.__l.__size_;
      }

      std::string::append(&v158, v133, v134);
      if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v159.__r_.__value_.__l.__data_);
      }

      std::string::append(&v158, "]");
    }

    std::string::append(&v158, "::");
    std::string::append(&v158, "csl_tx_total");
    std::string::append(&v158, "=");
    v135 = [v1 sCntrsMacTx];
    std::to_string(&v159, [v135 cslTxTotal]);
    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v136 = &v159;
    }

    else
    {
      v136 = v159.__r_.__value_.__r.__words[0];
    }

    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v137 = HIBYTE(v159.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v137 = v159.__r_.__value_.__l.__size_;
    }

    std::string::append(&v158, v136, v137);
    if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v159.__r_.__value_.__l.__data_);
    }

    std::string::append(&v158, "::");
    std::string::append(&v158, "csl_tx_err_noack");
    std::string::append(&v158, "=");
    v138 = [v1 sCntrsMacTx];
    std::to_string(&v159, [v138 cslTxErrNoack]);
    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v139 = &v159;
    }

    else
    {
      v139 = v159.__r_.__value_.__r.__words[0];
    }

    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v140 = HIBYTE(v159.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v140 = v159.__r_.__value_.__l.__size_;
    }

    std::string::append(&v158, v139, v140);
    if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v159.__r_.__value_.__l.__data_);
    }

    std::string::append(&v158, "::");
    std::string::append(&v158, "csl_tx_err_cca");
    std::string::append(&v158, "=");
    v141 = [v1 sCntrsMacTx];
    std::to_string(&v159, [v141 cslTxErrCca]);
    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v142 = &v159;
    }

    else
    {
      v142 = v159.__r_.__value_.__r.__words[0];
    }

    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v143 = HIBYTE(v159.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v143 = v159.__r_.__value_.__l.__size_;
    }

    std::string::append(&v158, v142, v143);
    if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v159.__r_.__value_.__l.__data_);
    }

    std::string::append(&v158, "::");
    std::string::append(&v158, "csl_tx_err_abort");
    std::string::append(&v158, "=");
    v144 = [v1 sCntrsMacTx];
    std::to_string(&v159, [v144 cslTxErrAbort]);
    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v145 = &v159;
    }

    else
    {
      v145 = v159.__r_.__value_.__r.__words[0];
    }

    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v146 = HIBYTE(v159.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v146 = v159.__r_.__value_.__l.__size_;
    }

    std::string::append(&v158, v145, v146);
    if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v159.__r_.__value_.__l.__data_);
    }

    std::string::append(&v158, "::");
    std::string::append(&v158, "csl_tx_err_busy_channel");
    std::string::append(&v158, "=");
    v147 = [v1 sCntrsMacTx];
    std::to_string(&v159, [v147 cslTxErrBusyChannel]);
    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v148 = &v159;
    }

    else
    {
      v148 = v159.__r_.__value_.__r.__words[0];
    }

    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v149 = HIBYTE(v159.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v149 = v159.__r_.__value_.__l.__size_;
    }

    std::string::append(&v158, v148, v149);
    if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v159.__r_.__value_.__l.__data_);
    }

    std::string::append(&v158, "::");
    std::string::append(&v158, "tx_csl_loss_of_sync_csl_timeout");
    std::string::append(&v158, "=");
    v150 = [v1 sCntrsMacTx];
    std::to_string(&v159, [v150 cslLossOfSyncDueToCslTimeout]);
    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v151 = &v159;
    }

    else
    {
      v151 = v159.__r_.__value_.__r.__words[0];
    }

    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v152 = HIBYTE(v159.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v152 = v159.__r_.__value_.__l.__size_;
    }

    std::string::append(&v158, v151, v152);
    if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v159.__r_.__value_.__l.__data_);
    }

    std::string::append(&v158, "::");
    std::string::append(&v158, "tx_csl_loss_of_sync_max_retx");
    std::string::append(&v158, "=");
    v153 = [v1 sCntrsMacTx];
    std::to_string(&v159, [v153 cslLossOfSyncDueToMaxRetx]);
    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v154 = &v159;
    }

    else
    {
      v154 = v159.__r_.__value_.__r.__words[0];
    }

    if ((v159.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v155 = HIBYTE(v159.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v155 = v159.__r_.__value_.__l.__size_;
    }

    std::string::append(&v158, v154, v155);
    if (SHIBYTE(v159.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v159.__r_.__value_.__l.__data_);
    }
  }

  v156 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v156, OS_LOG_TYPE_INFO))
  {
    v157 = &v158;
    if ((v158.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v157 = v158.__r_.__value_.__r.__words[0];
    }

    LODWORD(v159.__r_.__value_.__l.__data_) = 136315138;
    *(v159.__r_.__value_.__r.__words + 4) = v157;
    _os_log_impl(&_mh_execute_header, v156, OS_LOG_TYPE_INFO, "AWDMetricsLogger : %s", &v159, 0xCu);
  }

  if (SHIBYTE(v158.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v158.__r_.__value_.__l.__data_);
  }
}

void sub_100072A2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void AWDMetricsLogger_CoexMetrics(void *a1)
{
  v1 = a1;
  memset(&v95, 0, sizeof(v95));
  std::string::append(&v95, "AWDFlagstoneCoexMetrics:: ");
  if ([v1 hasHeader])
  {
    v2 = [v1 header];
    v3 = [v2 hasDaemonVersion];

    if (v3)
    {
      std::string::append(&v95, "DaemonVersion=");
      v4 = [v1 header];
      v5 = [v4 daemonVersion];
      v6 = v5;
      std::string::append(&v95, [v5 UTF8String]);

      std::string::append(&v95, "::");
    }

    v7 = [v1 header];
    v8 = [v7 hasVendorVersion];

    if (v8)
    {
      std::string::append(&v95, "VendorVersion=");
      v9 = [v1 header];
      v10 = [v9 vendorVersion];
      v11 = v10;
      std::string::append(&v95, [v10 UTF8String]);

      std::string::append(&v95, "::");
    }
  }

  if ([v1 hasSCntrsCoex])
  {
    std::string::append(&v95, "coex_unsolicited_grants");
    std::string::append(&v95, "=");
    v12 = [v1 sCntrsCoex];
    std::to_string(&v96, [v12 coexUnsolicitedGrants]);
    if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v96;
    }

    else
    {
      v13 = v96.__r_.__value_.__r.__words[0];
    }

    if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v96.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v96.__r_.__value_.__l.__size_;
    }

    std::string::append(&v95, v13, size);
    if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v96.__r_.__value_.__l.__data_);
    }

    std::string::append(&v95, "::");
    std::string::append(&v95, "coex_tx_requests");
    std::string::append(&v95, "=");
    v15 = [v1 sCntrsCoex];
    std::to_string(&v96, [v15 coexTxRequests]);
    if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v96;
    }

    else
    {
      v16 = v96.__r_.__value_.__r.__words[0];
    }

    if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = HIBYTE(v96.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v17 = v96.__r_.__value_.__l.__size_;
    }

    std::string::append(&v95, v16, v17);
    if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v96.__r_.__value_.__l.__data_);
    }

    std::string::append(&v95, "::");
    std::string::append(&v95, "coex_tx_granted_requests");
    std::string::append(&v95, "=");
    v18 = [v1 sCntrsCoex];
    std::to_string(&v96, [v18 coexTxGrantedRequests]);
    if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v96;
    }

    else
    {
      v19 = v96.__r_.__value_.__r.__words[0];
    }

    if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = HIBYTE(v96.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v20 = v96.__r_.__value_.__l.__size_;
    }

    std::string::append(&v95, v19, v20);
    if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v96.__r_.__value_.__l.__data_);
    }

    std::string::append(&v95, "::");
    std::string::append(&v95, "coex_tx_denied_requests");
    std::string::append(&v95, "=");
    v21 = [v1 sCntrsCoex];
    std::to_string(&v96, [v21 coexTxDeniedRequests]);
    if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v96;
    }

    else
    {
      v22 = v96.__r_.__value_.__r.__words[0];
    }

    if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = HIBYTE(v96.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v23 = v96.__r_.__value_.__l.__size_;
    }

    std::string::append(&v95, v22, v23);
    if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v96.__r_.__value_.__l.__data_);
    }

    std::string::append(&v95, "::");
    std::string::append(&v95, "coex_rx_requests");
    std::string::append(&v95, "=");
    v24 = [v1 sCntrsCoex];
    std::to_string(&v96, [v24 coexRxRequests]);
    if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = &v96;
    }

    else
    {
      v25 = v96.__r_.__value_.__r.__words[0];
    }

    if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = HIBYTE(v96.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v26 = v96.__r_.__value_.__l.__size_;
    }

    std::string::append(&v95, v25, v26);
    if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v96.__r_.__value_.__l.__data_);
    }

    std::string::append(&v95, "::");
    std::string::append(&v95, "coex_rx_granted_requests");
    std::string::append(&v95, "=");
    v27 = [v1 sCntrsCoex];
    std::to_string(&v96, [v27 coexRxGrantedRequests]);
    if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = &v96;
    }

    else
    {
      v28 = v96.__r_.__value_.__r.__words[0];
    }

    if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = HIBYTE(v96.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v29 = v96.__r_.__value_.__l.__size_;
    }

    std::string::append(&v95, v28, v29);
    if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v96.__r_.__value_.__l.__data_);
    }

    std::string::append(&v95, "::");
    std::string::append(&v95, "coex_rx_denied_requests");
    std::string::append(&v95, "=");
    v30 = [v1 sCntrsCoex];
    std::to_string(&v96, [v30 coexRxDeniedRequests]);
    if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = &v96;
    }

    else
    {
      v31 = v96.__r_.__value_.__r.__words[0];
    }

    if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v32 = HIBYTE(v96.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v32 = v96.__r_.__value_.__l.__size_;
    }

    std::string::append(&v95, v31, v32);
    if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v96.__r_.__value_.__l.__data_);
    }

    std::string::append(&v95, "::");
    std::string::append(&v95, "coex_rx_grant_time_histogram");
    std::string::append(&v95, "=");
    for (i = 0; ; ++i)
    {
      v34 = [v1 sCntrsCoex];
      v35 = [v34 coexRxGrantTimeHistogramsCount] > i;

      if (!v35)
      {
        break;
      }

      std::string::append(&v95, "[");
      v36 = [v1 sCntrsCoex];
      std::to_string(&v96, *([v36 coexRxGrantTimeHistograms] + i));
      if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v37 = &v96;
      }

      else
      {
        v37 = v96.__r_.__value_.__r.__words[0];
      }

      if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v38 = HIBYTE(v96.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v38 = v96.__r_.__value_.__l.__size_;
      }

      std::string::append(&v95, v37, v38);
      if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v96.__r_.__value_.__l.__data_);
      }

      std::string::append(&v95, "]");
    }

    std::string::append(&v95, "::");
    std::string::append(&v95, "coex_tx_grant_time_histogram");
    std::string::append(&v95, "=");
    for (j = 0; ; ++j)
    {
      v40 = [v1 sCntrsCoex];
      v41 = [v40 coexTxGrantTimeHistogramsCount] > j;

      if (!v41)
      {
        break;
      }

      std::string::append(&v95, "[");
      v42 = [v1 sCntrsCoex];
      std::to_string(&v96, *([v42 coexTxGrantTimeHistograms] + j));
      if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v43 = &v96;
      }

      else
      {
        v43 = v96.__r_.__value_.__r.__words[0];
      }

      if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = HIBYTE(v96.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v44 = v96.__r_.__value_.__l.__size_;
      }

      std::string::append(&v95, v43, v44);
      if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v96.__r_.__value_.__l.__data_);
      }

      std::string::append(&v95, "]");
    }

    std::string::append(&v95, "::");
    std::string::append(&v95, "coex_tx_granted_requests_percentage");
    std::string::append(&v95, "=");
    v45 = [v1 sCntrsCoex];
    std::to_string(&v96, [v45 txGrantedReqPercentage]);
    if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v46 = &v96;
    }

    else
    {
      v46 = v96.__r_.__value_.__r.__words[0];
    }

    if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v47 = HIBYTE(v96.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v47 = v96.__r_.__value_.__l.__size_;
    }

    std::string::append(&v95, v46, v47);
    if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v96.__r_.__value_.__l.__data_);
    }

    std::string::append(&v95, "::");
    std::string::append(&v95, "coex_tx_denied_requests_percentage");
    std::string::append(&v95, "=");
    v48 = [v1 sCntrsCoex];
    std::to_string(&v96, [v48 txDeniedReqPercentage]);
    if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v49 = &v96;
    }

    else
    {
      v49 = v96.__r_.__value_.__r.__words[0];
    }

    if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v50 = HIBYTE(v96.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v50 = v96.__r_.__value_.__l.__size_;
    }

    std::string::append(&v95, v49, v50);
    if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v96.__r_.__value_.__l.__data_);
    }

    std::string::append(&v95, "::");
    std::string::append(&v95, "coex_rx_granted_requests_percentage");
    std::string::append(&v95, "=");
    v51 = [v1 sCntrsCoex];
    std::to_string(&v96, [v51 rxGrantedReqPercentage]);
    if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v52 = &v96;
    }

    else
    {
      v52 = v96.__r_.__value_.__r.__words[0];
    }

    if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v53 = HIBYTE(v96.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v53 = v96.__r_.__value_.__l.__size_;
    }

    std::string::append(&v95, v52, v53);
    if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v96.__r_.__value_.__l.__data_);
    }

    std::string::append(&v95, "::");
    std::string::append(&v95, "coex_rx_denied_requests_percentage");
    std::string::append(&v95, "=");
    v54 = [v1 sCntrsCoex];
    std::to_string(&v96, [v54 rxDeniedReqPercentage]);
    if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v55 = &v96;
    }

    else
    {
      v55 = v96.__r_.__value_.__r.__words[0];
    }

    if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v56 = HIBYTE(v96.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v56 = v96.__r_.__value_.__l.__size_;
    }

    std::string::append(&v95, v55, v56);
    if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v96.__r_.__value_.__l.__data_);
    }

    std::string::append(&v95, "::");
  }

  if ([v1 hasSHistCoex])
  {
    std::string::append(&v95, "coex_tx_unsolicited_grant_duty_cycle_histogram");
    std::string::append(&v95, "=");
    for (k = 0; ; ++k)
    {
      v58 = [v1 sHistCoex];
      v59 = [v58 coexTxUnsolicitedGrantDutyCycleHistogramsCount] > k;

      if (!v59)
      {
        break;
      }

      std::string::append(&v95, "[");
      v60 = [v1 sHistCoex];
      std::to_string(&v96, *([v60 coexTxUnsolicitedGrantDutyCycleHistograms] + k));
      if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v61 = &v96;
      }

      else
      {
        v61 = v96.__r_.__value_.__r.__words[0];
      }

      if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v62 = HIBYTE(v96.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v62 = v96.__r_.__value_.__l.__size_;
      }

      std::string::append(&v95, v61, v62);
      if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v96.__r_.__value_.__l.__data_);
      }

      std::string::append(&v95, "]");
    }

    std::string::append(&v95, "::");
    std::string::append(&v95, "coex_rx_unsolicited_grant_duty_cycle_histogram");
    std::string::append(&v95, "=");
    for (m = 0; ; ++m)
    {
      v64 = [v1 sHistCoex];
      v65 = [v64 coexRxUnsolicitedGrantDutyCycleHistogramsCount] > m;

      if (!v65)
      {
        break;
      }

      std::string::append(&v95, "[");
      v66 = [v1 sHistCoex];
      std::to_string(&v96, *([v66 coexRxUnsolicitedGrantDutyCycleHistograms] + m));
      if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v67 = &v96;
      }

      else
      {
        v67 = v96.__r_.__value_.__r.__words[0];
      }

      if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v68 = HIBYTE(v96.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v68 = v96.__r_.__value_.__l.__size_;
      }

      std::string::append(&v95, v67, v68);
      if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v96.__r_.__value_.__l.__data_);
      }

      std::string::append(&v95, "]");
    }

    std::string::append(&v95, "::");
    std::string::append(&v95, "coex_tx_total_grant_duty_cycle_histogram");
    std::string::append(&v95, "=");
    for (n = 0; ; ++n)
    {
      v70 = [v1 sHistCoex];
      v71 = [v70 coexTxTotalGrantDutyCycleHistogramsCount] > n;

      if (!v71)
      {
        break;
      }

      std::string::append(&v95, "[");
      v72 = [v1 sHistCoex];
      std::to_string(&v96, *([v72 coexTxTotalGrantDutyCycleHistograms] + n));
      if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v73 = &v96;
      }

      else
      {
        v73 = v96.__r_.__value_.__r.__words[0];
      }

      if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v74 = HIBYTE(v96.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v74 = v96.__r_.__value_.__l.__size_;
      }

      std::string::append(&v95, v73, v74);
      if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v96.__r_.__value_.__l.__data_);
      }

      std::string::append(&v95, "]");
    }

    std::string::append(&v95, "::");
    std::string::append(&v95, "coex_rx_total_grant_duty_cycle_histogram");
    std::string::append(&v95, "=");
    for (ii = 0; ; ++ii)
    {
      v76 = [v1 sHistCoex];
      v77 = [v76 coexRxTotalGrantDutyCycleHistogramsCount] > ii;

      if (!v77)
      {
        break;
      }

      std::string::append(&v95, "[");
      v78 = [v1 sHistCoex];
      std::to_string(&v96, *([v78 coexRxTotalGrantDutyCycleHistograms] + ii));
      if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v79 = &v96;
      }

      else
      {
        v79 = v96.__r_.__value_.__r.__words[0];
      }

      if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v80 = HIBYTE(v96.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v80 = v96.__r_.__value_.__l.__size_;
      }

      std::string::append(&v95, v79, v80);
      if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v96.__r_.__value_.__l.__data_);
      }

      std::string::append(&v95, "]");
    }

    std::string::append(&v95, "::");
    std::string::append(&v95, "coex_total_grant_time_histogram");
    std::string::append(&v95, "=");
    for (jj = 0; ; ++jj)
    {
      v82 = [v1 sHistCoex];
      v83 = [v82 coexTotalGrantTimeHistogramsCount] > jj;

      if (!v83)
      {
        break;
      }

      std::string::append(&v95, "[");
      v84 = [v1 sHistCoex];
      std::to_string(&v96, *([v84 coexTotalGrantTimeHistograms] + jj));
      if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v85 = &v96;
      }

      else
      {
        v85 = v96.__r_.__value_.__r.__words[0];
      }

      if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v86 = HIBYTE(v96.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v86 = v96.__r_.__value_.__l.__size_;
      }

      std::string::append(&v95, v85, v86);
      if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v96.__r_.__value_.__l.__data_);
      }

      std::string::append(&v95, "]");
    }

    std::string::append(&v95, "::");
    std::string::append(&v95, "coex_aborts_due_to_grant_revokes_histogram");
    std::string::append(&v95, "=");
    for (kk = 0; ; ++kk)
    {
      v88 = [v1 sHistCoex];
      v89 = [v88 coexAbortsDueToGrantRevokesHistogramsCount] > kk;

      if (!v89)
      {
        break;
      }

      std::string::append(&v95, "[");
      v90 = [v1 sHistCoex];
      std::to_string(&v96, *([v90 coexAbortsDueToGrantRevokesHistograms] + kk));
      if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v91 = &v96;
      }

      else
      {
        v91 = v96.__r_.__value_.__r.__words[0];
      }

      if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v92 = HIBYTE(v96.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v92 = v96.__r_.__value_.__l.__size_;
      }

      std::string::append(&v95, v91, v92);
      if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v96.__r_.__value_.__l.__data_);
      }

      std::string::append(&v95, "]");
    }

    std::string::append(&v95, "::");
  }

  v93 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
  {
    v94 = &v95;
    if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v94 = v95.__r_.__value_.__r.__words[0];
    }

    LODWORD(v96.__r_.__value_.__l.__data_) = 136315138;
    *(v96.__r_.__value_.__r.__words + 4) = v94;
    _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_INFO, "AWDMetricsLogger : %s", &v96, 0xCu);
  }

  if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v95.__r_.__value_.__l.__data_);
  }
}

void sub_100074034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void AWDMetricsLogger_IPMLEMetrics(void *a1)
{
  v1 = a1;
  memset(&v71, 0, sizeof(v71));
  std::string::append(&v71, "AWDFlagstoneIPMLEMetrics:: ");
  if ([v1 hasHeader])
  {
    v2 = [v1 header];
    v3 = [v2 hasDaemonVersion];

    if (v3)
    {
      std::string::append(&v71, "DaemonVersion=");
      v4 = [v1 header];
      v5 = [v4 daemonVersion];
      v6 = v5;
      std::string::append(&v71, [v5 UTF8String]);

      std::string::append(&v71, "::");
    }

    v7 = [v1 header];
    v8 = [v7 hasVendorVersion];

    if (v8)
    {
      std::string::append(&v71, "VendorVersion=");
      v9 = [v1 header];
      v10 = [v9 vendorVersion];
      v11 = v10;
      std::string::append(&v71, [v10 UTF8String]);

      std::string::append(&v71, "::");
    }
  }

  if ([v1 hasSCntrsIp])
  {
    std::string::append(&v71, "TxSuccess=");
    v12 = [v1 sCntrsIp];
    std::to_string(&v72, [v12 txSuccess]);
    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v72;
    }

    else
    {
      v13 = v72.__r_.__value_.__r.__words[0];
    }

    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v72.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v72.__r_.__value_.__l.__size_;
    }

    std::string::append(&v71, v13, size);
    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v72.__r_.__value_.__l.__data_);
    }

    std::string::append(&v71, "::");
    std::string::append(&v71, "TxFailure=");
    v15 = [v1 sCntrsIp];
    std::to_string(&v72, [v15 txFailure]);
    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v72;
    }

    else
    {
      v16 = v72.__r_.__value_.__r.__words[0];
    }

    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v17 = v72.__r_.__value_.__l.__size_;
    }

    std::string::append(&v71, v16, v17);
    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v72.__r_.__value_.__l.__data_);
    }

    std::string::append(&v71, "::");
    std::string::append(&v71, "RxSuccess=");
    v18 = [v1 sCntrsIp];
    std::to_string(&v72, [v18 rxSuccess]);
    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v72;
    }

    else
    {
      v19 = v72.__r_.__value_.__r.__words[0];
    }

    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v20 = v72.__r_.__value_.__l.__size_;
    }

    std::string::append(&v71, v19, v20);
    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v72.__r_.__value_.__l.__data_);
    }

    std::string::append(&v71, "::");
    std::string::append(&v71, "RxFailure=");
    v21 = [v1 sCntrsIp];
    std::to_string(&v72, [v21 rxFailure]);
    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v72;
    }

    else
    {
      v22 = v72.__r_.__value_.__r.__words[0];
    }

    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v23 = v72.__r_.__value_.__l.__size_;
    }

    std::string::append(&v71, v22, v23);
    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v72.__r_.__value_.__l.__data_);
    }

    std::string::append(&v71, "::");
    std::string::append(&v71, "RxSuccessRate=");
    v24 = [v1 sCntrsIp];
    std::to_string(&v72, [v24 rxSuccessRate]);
    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = &v72;
    }

    else
    {
      v25 = v72.__r_.__value_.__r.__words[0];
    }

    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v26 = v72.__r_.__value_.__l.__size_;
    }

    std::string::append(&v71, v25, v26);
    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v72.__r_.__value_.__l.__data_);
    }

    std::string::append(&v71, "::");
    std::string::append(&v71, "TxApplicationPktSuccesss=");
    v27 = [v1 sCntrsIp];
    std::to_string(&v72, [v27 txAppPktSucess]);
    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = &v72;
    }

    else
    {
      v28 = v72.__r_.__value_.__r.__words[0];
    }

    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v29 = v72.__r_.__value_.__l.__size_;
    }

    std::string::append(&v71, v28, v29);
    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v72.__r_.__value_.__l.__data_);
    }

    std::string::append(&v71, "::");
    std::string::append(&v71, "TxDelayMin=");
    v30 = [v1 sCntrsIp];
    std::to_string(&v72, [v30 txDelaymin]);
    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = &v72;
    }

    else
    {
      v31 = v72.__r_.__value_.__r.__words[0];
    }

    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v32 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v32 = v72.__r_.__value_.__l.__size_;
    }

    std::string::append(&v71, v31, v32);
    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v72.__r_.__value_.__l.__data_);
    }

    std::string::append(&v71, "::");
    std::string::append(&v71, "TxDelayMax=");
    v33 = [v1 sCntrsIp];
    std::to_string(&v72, [v33 txDelaymax]);
    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v34 = &v72;
    }

    else
    {
      v34 = v72.__r_.__value_.__r.__words[0];
    }

    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v35 = v72.__r_.__value_.__l.__size_;
    }

    std::string::append(&v71, v34, v35);
    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v72.__r_.__value_.__l.__data_);
    }

    std::string::append(&v71, "::");
    std::string::append(&v71, "TxDelayAvg=");
    v36 = [v1 sCntrsIp];
    std::to_string(&v72, [v36 txDelayavg]);
    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v37 = &v72;
    }

    else
    {
      v37 = v72.__r_.__value_.__r.__words[0];
    }

    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v38 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v38 = v72.__r_.__value_.__l.__size_;
    }

    std::string::append(&v71, v37, v38);
    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v72.__r_.__value_.__l.__data_);
    }

    std::string::append(&v71, "::");
    std::string::append(&v71, "TxSuccessRate=");
    v39 = [v1 sCntrsIp];
    std::to_string(&v72, [v39 txSuccessRate]);
    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v40 = &v72;
    }

    else
    {
      v40 = v72.__r_.__value_.__r.__words[0];
    }

    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v41 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v41 = v72.__r_.__value_.__l.__size_;
    }

    std::string::append(&v71, v40, v41);
    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v72.__r_.__value_.__l.__data_);
    }
  }

  if ([v1 hasSCntrsMle])
  {
    std::string::append(&v71, "disabled_role_count");
    std::string::append(&v71, "=");
    v42 = [v1 sCntrsMle];
    std::to_string(&v72, [v42 disabledRoleCount]);
    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v43 = &v72;
    }

    else
    {
      v43 = v72.__r_.__value_.__r.__words[0];
    }

    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v44 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v44 = v72.__r_.__value_.__l.__size_;
    }

    std::string::append(&v71, v43, v44);
    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v72.__r_.__value_.__l.__data_);
    }

    std::string::append(&v71, "::");
    std::string::append(&v71, "detached_role_count");
    std::string::append(&v71, "=");
    v45 = [v1 sCntrsMle];
    std::to_string(&v72, [v45 detachedRoleCount]);
    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v46 = &v72;
    }

    else
    {
      v46 = v72.__r_.__value_.__r.__words[0];
    }

    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v47 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v47 = v72.__r_.__value_.__l.__size_;
    }

    std::string::append(&v71, v46, v47);
    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v72.__r_.__value_.__l.__data_);
    }

    std::string::append(&v71, "::");
    std::string::append(&v71, "child_role_count");
    std::string::append(&v71, "=");
    v48 = [v1 sCntrsMle];
    std::to_string(&v72, [v48 childRoleCount]);
    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v49 = &v72;
    }

    else
    {
      v49 = v72.__r_.__value_.__r.__words[0];
    }

    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v50 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v50 = v72.__r_.__value_.__l.__size_;
    }

    std::string::append(&v71, v49, v50);
    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v72.__r_.__value_.__l.__data_);
    }

    std::string::append(&v71, "::");
    std::string::append(&v71, "router_role_count");
    std::string::append(&v71, "=");
    v51 = [v1 sCntrsMle];
    std::to_string(&v72, [v51 routerRoleCount]);
    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v52 = &v72;
    }

    else
    {
      v52 = v72.__r_.__value_.__r.__words[0];
    }

    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v53 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v53 = v72.__r_.__value_.__l.__size_;
    }

    std::string::append(&v71, v52, v53);
    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v72.__r_.__value_.__l.__data_);
    }

    std::string::append(&v71, "::");
    std::string::append(&v71, "leader_role_count");
    std::string::append(&v71, "=");
    v54 = [v1 sCntrsMle];
    std::to_string(&v72, [v54 leaderRoleCount]);
    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v55 = &v72;
    }

    else
    {
      v55 = v72.__r_.__value_.__r.__words[0];
    }

    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v56 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v56 = v72.__r_.__value_.__l.__size_;
    }

    std::string::append(&v71, v55, v56);
    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v72.__r_.__value_.__l.__data_);
    }

    std::string::append(&v71, "::");
    std::string::append(&v71, "attach_attempts");
    std::string::append(&v71, "=");
    v57 = [v1 sCntrsMle];
    std::to_string(&v72, [v57 attachAttempts]);
    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v58 = &v72;
    }

    else
    {
      v58 = v72.__r_.__value_.__r.__words[0];
    }

    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v59 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v59 = v72.__r_.__value_.__l.__size_;
    }

    std::string::append(&v71, v58, v59);
    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v72.__r_.__value_.__l.__data_);
    }

    std::string::append(&v71, "::");
    std::string::append(&v71, "partition_id_changes_count");
    std::string::append(&v71, "=");
    v60 = [v1 sCntrsMle];
    std::to_string(&v72, [v60 partitionIdChangesCount]);
    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v61 = &v72;
    }

    else
    {
      v61 = v72.__r_.__value_.__r.__words[0];
    }

    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v62 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v62 = v72.__r_.__value_.__l.__size_;
    }

    std::string::append(&v71, v61, v62);
    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v72.__r_.__value_.__l.__data_);
    }

    std::string::append(&v71, "::");
    std::string::append(&v71, "better_partition_attach_attempts");
    std::string::append(&v71, "=");
    v63 = [v1 sCntrsMle];
    std::to_string(&v72, [v63 betterPartitionAttachAttempts]);
    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v64 = &v72;
    }

    else
    {
      v64 = v72.__r_.__value_.__r.__words[0];
    }

    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v65 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v65 = v72.__r_.__value_.__l.__size_;
    }

    std::string::append(&v71, v64, v65);
    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v72.__r_.__value_.__l.__data_);
    }

    std::string::append(&v71, "::");
    std::string::append(&v71, "parent_changes_count");
    std::string::append(&v71, "=");
    v66 = [v1 sCntrsMle];
    std::to_string(&v72, [v66 parentChangesCount]);
    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v67 = &v72;
    }

    else
    {
      v67 = v72.__r_.__value_.__r.__words[0];
    }

    if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v68 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v68 = v72.__r_.__value_.__l.__size_;
    }

    std::string::append(&v71, v67, v68);
    if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v72.__r_.__value_.__l.__data_);
    }
  }

  v69 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
  {
    v70 = &v71;
    if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v70 = v71.__r_.__value_.__r.__words[0];
    }

    LODWORD(v72.__r_.__value_.__l.__data_) = 136315138;
    *(v72.__r_.__value_.__r.__words + 4) = v70;
    _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_INFO, "AWDMetricsLogger : %s", &v72, 0xCu);
  }

  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }
}

void sub_100074F48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void AWDMetricsLogger_PowerMetrics(void *a1)
{
  v1 = a1;
  memset(&v23, 0, sizeof(v23));
  std::string::append(&v23, "AWDFlagstonePowerMetrics:: ");
  if ([v1 hasHeader])
  {
    v2 = [v1 header];
    v3 = [v2 hasDaemonVersion];

    if (v3)
    {
      std::string::append(&v23, "DaemonVersion=");
      v4 = [v1 header];
      v5 = [v4 daemonVersion];
      v6 = v5;
      std::string::append(&v23, [v5 UTF8String]);

      std::string::append(&v23, "::");
    }

    v7 = [v1 header];
    v8 = [v7 hasVendorVersion];

    if (v8)
    {
      std::string::append(&v23, "VendorVersion=");
      v9 = [v1 header];
      v10 = [v9 vendorVersion];
      v11 = v10;
      std::string::append(&v23, [v10 UTF8String]);

      std::string::append(&v23, "::");
    }
  }

  if ([v1 hasSCntrsPower])
  {
    std::string::append(&v23, "hostWakeupsCount=");
    v12 = [v1 sCntrsPower];
    std::to_string(&v24, [v12 hostWakeupsCount]);
    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v24;
    }

    else
    {
      v13 = v24.__r_.__value_.__r.__words[0];
    }

    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v24.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v24.__r_.__value_.__l.__size_;
    }

    std::string::append(&v23, v13, size);
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    std::string::append(&v23, "::");
    std::string::append(&v23, "hostWakeupsCountHistograms=");
    for (i = 0; ; ++i)
    {
      v16 = [v1 sCntrsPower];
      v17 = [v16 hostWakeupsCountHistogramsCount] > i;

      if (!v17)
      {
        break;
      }

      std::string::append(&v23, "[");
      v18 = [v1 sCntrsPower];
      std::to_string(&v24, *([v18 hostWakeupsCountHistograms] + i));
      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = &v24;
      }

      else
      {
        v19 = v24.__r_.__value_.__r.__words[0];
      }

      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = HIBYTE(v24.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v20 = v24.__r_.__value_.__l.__size_;
      }

      std::string::append(&v23, v19, v20);
      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }

      std::string::append(&v23, "]");
    }
  }

  v21 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = &v23;
    if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v22 = v23.__r_.__value_.__r.__words[0];
    }

    LODWORD(v24.__r_.__value_.__l.__data_) = 136315138;
    *(v24.__r_.__value_.__r.__words + 4) = v22;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "AWDMetricsLogger : %s", &v24, 0xCu);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }
}

void sub_100075610(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void AWDMetricsLogger_StabilityMetrics(void *a1)
{
  v1 = a1;
  memset(&v23, 0, sizeof(v23));
  std::string::append(&v23, "AWDFlagstoneStabilityMetrics:: ");
  if ([v1 hasHeader])
  {
    v2 = [v1 header];
    v3 = [v2 hasDaemonVersion];

    if (v3)
    {
      std::string::append(&v23, "DaemonVersion=");
      v4 = [v1 header];
      v5 = [v4 daemonVersion];
      v6 = v5;
      std::string::append(&v23, [v5 UTF8String]);

      std::string::append(&v23, "::");
    }

    v7 = [v1 header];
    v8 = [v7 hasVendorVersion];

    if (v8)
    {
      std::string::append(&v23, "VendorVersion=");
      v9 = [v1 header];
      v10 = [v9 vendorVersion];
      v11 = v10;
      std::string::append(&v23, [v10 UTF8String]);

      std::string::append(&v23, "::");
    }
  }

  if ([v1 hasSCntrsStability])
  {
    std::string::append(&v23, "ncpResetType=");
    v12 = [v1 sCntrsStability];
    std::to_string(&v24, [v12 ncpResetType]);
    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v24;
    }

    else
    {
      v13 = v24.__r_.__value_.__r.__words[0];
    }

    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v24.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v24.__r_.__value_.__l.__size_;
    }

    std::string::append(&v23, v13, size);
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    std::string::append(&v23, "::");
    std::string::append(&v23, "ncpCrashReason=");
    std::string::append(&v23, "[");
    v15 = [v1 sCntrsStability];
    v16 = [v15 ncpCrashReason];
    v17 = v16;
    std::string::append(&v23, [v16 UTF8String]);

    std::string::append(&v23, "]");
    std::string::append(&v23, "isMtbfQualified=");
    std::string::append(&v23, "[");
    v18 = [v1 sCntrsStability];
    std::to_string(&v24, [v18 isMtbfQualified]);
    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v24;
    }

    else
    {
      v19 = v24.__r_.__value_.__r.__words[0];
    }

    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = HIBYTE(v24.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v20 = v24.__r_.__value_.__l.__size_;
    }

    std::string::append(&v23, v19, v20);
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    std::string::append(&v23, "]");
  }

  v21 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = &v23;
    if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v22 = v23.__r_.__value_.__r.__words[0];
    }

    LODWORD(v24.__r_.__value_.__l.__data_) = 136315138;
    *(v24.__r_.__value_.__r.__words + 4) = v22;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "AWDMetricsLogger : %s", &v24, 0xCu);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }
}

void sub_100075A54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void AWDMetricsLogger_TopologyMetrics(void *a1)
{
  v1 = a1;
  memset(&v20, 0, sizeof(v20));
  std::string::append(&v20, "AWDFlagstoneTopologyMetrics:: ");
  if ([v1 hasHeader])
  {
    std::string::append(&v20, "NodeCountArray");
    std::string::append(&v20, "=");
    for (i = 0; [v1 nodeCountsCount] > i; ++i)
    {
      std::string::append(&v20, "[");
      std::to_string(&v21, *([v1 nodeCounts] + i));
      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v3 = &v21;
      }

      else
      {
        v3 = v21.__r_.__value_.__r.__words[0];
      }

      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v21.__r_.__value_.__l.__size_;
      }

      std::string::append(&v20, v3, size);
      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }

      std::string::append(&v20, "]");
    }

    std::string::append(&v20, "::");
    std::string::append(&v20, "RouterCountArray");
    std::string::append(&v20, "=");
    for (j = 0; [v1 routerCountsCount] > j; ++j)
    {
      std::string::append(&v20, "[");
      std::to_string(&v21, *([v1 routerCounts] + j));
      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v6 = &v21;
      }

      else
      {
        v6 = v21.__r_.__value_.__r.__words[0];
      }

      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v7 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v7 = v21.__r_.__value_.__l.__size_;
      }

      std::string::append(&v20, v6, v7);
      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }

      std::string::append(&v20, "]");
    }

    std::string::append(&v20, "::");
    std::string::append(&v20, "FedCountArray");
    std::string::append(&v20, "=");
    for (k = 0; [v1 fEDCountsCount] > k; ++k)
    {
      std::string::append(&v20, "[");
      std::to_string(&v21, *([v1 fEDCounts] + k));
      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = &v21;
      }

      else
      {
        v9 = v21.__r_.__value_.__r.__words[0];
      }

      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v10 = v21.__r_.__value_.__l.__size_;
      }

      std::string::append(&v20, v9, v10);
      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }

      std::string::append(&v20, "]");
    }

    std::string::append(&v20, "::");
    std::string::append(&v20, "SedCountArray");
    std::string::append(&v20, "=");
    for (m = 0; [v1 sEDCountsCount] > m; ++m)
    {
      std::string::append(&v20, "[");
      std::to_string(&v21, *([v1 sEDCounts] + m));
      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v21;
      }

      else
      {
        v12 = v21.__r_.__value_.__r.__words[0];
      }

      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v13 = v21.__r_.__value_.__l.__size_;
      }

      std::string::append(&v20, v12, v13);
      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }

      std::string::append(&v20, "]");
    }

    std::string::append(&v20, "::");
    if ([v1 hasMaxChangeinNodeCount])
    {
      std::string::append(&v20, "MaxChangeInNodeCount=");
      std::to_string(&v21, [v1 maxChangeinNodeCount]);
      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v21;
      }

      else
      {
        v14 = v21.__r_.__value_.__r.__words[0];
      }

      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v15 = v21.__r_.__value_.__l.__size_;
      }

      std::string::append(&v20, v14, v15);
      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }

      std::string::append(&v20, "::");
    }

    if ([v1 hasPercTopologyChangeTimeInstances])
    {
      std::string::append(&v20, "PercChangeTimeInstances=");
      std::to_string(&v21, [v1 percTopologyChangeTimeInstances]);
      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &v21;
      }

      else
      {
        v16 = v21.__r_.__value_.__r.__words[0];
      }

      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = HIBYTE(v21.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v17 = v21.__r_.__value_.__l.__size_;
      }

      std::string::append(&v20, v16, v17);
      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }

      std::string::append(&v20, "::");
    }
  }

  v18 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = &v20;
    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v19 = v20.__r_.__value_.__r.__words[0];
    }

    LODWORD(v21.__r_.__value_.__l.__data_) = 136315138;
    *(v21.__r_.__value_.__r.__words + 4) = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "AWDMetricsLogger : %s", &v21, 0xCu);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }
}

void sub_100076020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void AWDMetricsLogger_CTCSNumberOfThirdPartyBRs(void *a1)
{
  v1 = a1;
  memset(&v16, 0, sizeof(v16));
  std::string::append(&v16, "AWDFlagstoneCTCSNumberOfThirdPartyBRs:: ");
  if ([v1 hasHeader])
  {
    v2 = [v1 header];
    v3 = [v2 hasDaemonVersion];

    if (v3)
    {
      std::string::append(&v16, "DaemonVersion=");
      v4 = [v1 header];
      v5 = [v4 daemonVersion];
      v6 = v5;
      std::string::append(&v16, [v5 UTF8String]);

      std::string::append(&v16, "::");
    }

    v7 = [v1 header];
    v8 = [v7 hasVendorVersion];

    if (v8)
    {
      std::string::append(&v16, "VendorVersion=");
      v9 = [v1 header];
      v10 = [v9 vendorVersion];
      v11 = v10;
      std::string::append(&v16, [v10 UTF8String]);

      std::string::append(&v16, "::");
    }
  }

  if ([v1 hasNumberOfThirdPartyBorderRouters])
  {
    std::string::append(&v16, "numThirdPartyBRs=");
    std::to_string(&v17, [v1 numberOfThirdPartyBorderRouters]);
    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v17;
    }

    else
    {
      v12 = v17.__r_.__value_.__r.__words[0];
    }

    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v17.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v17.__r_.__value_.__l.__size_;
    }

    std::string::append(&v16, v12, size);
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    std::string::append(&v16, "::");
  }

  v14 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = &v16;
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v15 = v16.__r_.__value_.__r.__words[0];
    }

    LODWORD(v17.__r_.__value_.__l.__data_) = 136315138;
    *(v17.__r_.__value_.__r.__words + 4) = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "AWDMetricsLogger : %s", &v17, 0xCu);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }
}

void sub_100076314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void AWDMetricsLogger_CTCSNumberOfPreferredNetworksByBorderRouters(void *a1)
{
  v1 = a1;
  memset(&v18, 0, sizeof(v18));
  std::string::append(&v18, "AWDFlagstoneCTCSNumberOfPreferredNetworksByBorderRouters:: ");
  if ([v1 hasHeader])
  {
    v2 = [v1 header];
    v3 = [v2 hasDaemonVersion];

    if (v3)
    {
      std::string::append(&v18, "DaemonVersion=");
      v4 = [v1 header];
      v5 = [v4 daemonVersion];
      v6 = v5;
      std::string::append(&v18, [v5 UTF8String]);

      std::string::append(&v18, "::");
    }

    v7 = [v1 header];
    v8 = [v7 hasVendorVersion];

    if (v8)
    {
      std::string::append(&v18, "VendorVersion=");
      v9 = [v1 header];
      v10 = [v9 vendorVersion];
      v11 = v10;
      std::string::append(&v18, [v10 UTF8String]);

      std::string::append(&v18, "::");
    }
  }

  if ([v1 hasNumberOfPreferredNwByAppleBorderRouters])
  {
    std::string::append(&v18, "numPreferredNwByAppleBorderRouters=");
    std::to_string(&v19, [v1 numberOfPreferredNwByAppleBorderRouters]);
    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v19;
    }

    else
    {
      v12 = v19.__r_.__value_.__r.__words[0];
    }

    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v19.__r_.__value_.__l.__size_;
    }

    std::string::append(&v18, v12, size);
    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    std::string::append(&v18, "::");
  }

  if ([v1 hasNumberOfPreferredNwByThirdPartyBorderRouters])
  {
    std::string::append(&v18, "hasNumberOfPreferredNwByThirdPartyBorderRouters=");
    std::to_string(&v19, [v1 hasNumberOfPreferredNwByThirdPartyBorderRouters]);
    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v19;
    }

    else
    {
      v14 = v19.__r_.__value_.__r.__words[0];
    }

    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = HIBYTE(v19.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v15 = v19.__r_.__value_.__l.__size_;
    }

    std::string::append(&v18, v14, v15);
    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    std::string::append(&v18, "::");
  }

  v16 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = &v18;
    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v17 = v18.__r_.__value_.__r.__words[0];
    }

    LODWORD(v19.__r_.__value_.__l.__data_) = 136315138;
    *(v19.__r_.__value_.__r.__words + 4) = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "AWDMetricsLogger : %s", &v19, 0xCu);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }
}

void sub_100076690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void PcapPacket::PcapPacket(PcapPacket *this)
{
  *(this + 64) = 24;
  *this = xmmword_100443F20;
  *(this + 2) = 0x80000;
}

{
  *(this + 64) = 24;
  *this = xmmword_100443F20;
  *(this + 2) = 0x80000;
}

_DWORD *PcapPacket::set_timestamp(_DWORD *this, timeval *a2)
{
  if (a2)
  {
    *this = a2->tv_sec;
    this[1] = a2->tv_usec;
  }

  else
  {
    v6 = v2;
    v7 = v3;
    v4 = this;
    gettimeofday(&v5, a2);
    this = v4;
    *v4 = v5.tv_sec;
    v4[1] = v5.tv_usec;
  }

  return this;
}

_DWORD *PcapPacket::append_ppi_field(_DWORD *this, __int16 a2, const unsigned __int8 *__src, size_t __n)
{
  if ((__n & 0x80000000) != 0 || (v4 = this[128], (v4 + __n - 509) <= 0xFFFFFFFFFFFFFDFELL))
  {
    this[129] = 2;
    this[3] += __n + 4;
  }

  else
  {
    v5 = (this + v4);
    *v5 = a2;
    v5[1] = __n;
    v6 = this;
    v7 = __n;
    memcpy(this + this[128] + 4, __src, __n);
    this = v6;
    *(v6 + 512) += v7 + 4;
    *(v6 + 8) += v7 + 4;
    *(v6 + 18) += v7 + 4;
    *(v6 + 12) += v7 + 4;
  }

  return this;
}

_DWORD *PcapPacket::append_payload(_DWORD *this, const unsigned __int8 *a2, size_t __n)
{
  v3 = __n;
  if ((__n & 0x80000000) != 0)
  {
    this[129] = 2;
  }

  else
  {
    v4 = this[128];
    v5 = this;
    if ((v4 + __n) < 0x201)
    {
      memcpy(this + v4, a2, __n);
      this = v5;
      *(v5 + 512) += v3;
      *(v5 + 8) += v3;
    }

    else
    {
      memcpy(this + v4, a2, 512 - v4);
      this = v5;
      *(v5 + 512) = 512;
    }
  }

  this[3] += v3;
  return this;
}

void PcapManager::PcapManager(PcapManager *this)
{
  *(this + 9) = 0;
  *(this + 8) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = this + 64;
  *(this + 82) = 1;
  *this = 0;
  *(this + 40) = 0;
}

{
  *(this + 9) = 0;
  *(this + 8) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = this + 64;
  *(this + 82) = 1;
  *this = 0;
  *(this + 40) = 0;
}

void PcapManager::~PcapManager(PcapManager *this)
{
  if (PcapManager::pcapManagerInstance)
  {
    PcapManager::~PcapManager(PcapManager::pcapManagerInstance);
    operator delete();
  }

  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::destroy(this + 56, *(this + 8));
  if ((*(this + 55) & 0x80000000) == 0)
  {
    if ((*(this + 31) & 0x80000000) == 0)
    {
      return;
    }

LABEL_7:
    operator delete(*(this + 1));
    return;
  }

  operator delete(*(this + 4));
  if (*(this + 31) < 0)
  {
    goto LABEL_7;
  }
}

BOOL PcapManager::start_pcap_capture(PcapManager *this)
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (!logging_obg)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
      v4 = *this;
      if (!*this)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

LABEL_7:
    v4 = *this;
    if (!*this)
    {
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  v3 = logging_obg;
  if (!syslog_is_the_mask_enabled(7) || !os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_7;
  }

  PcapManager::start_pcap_capture();
  v4 = *this;
  if (!*this)
  {
LABEL_15:
    if (!create_new_sniffer_folder((this + 8)))
    {
      return v4 == 0;
    }

    if (*(this + 31) >= 0)
    {
      v7 = *(this + 31);
    }

    else
    {
      v7 = *(this + 2);
    }

    if (v7 + 19 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v7 + 19 >= 0x17)
    {
      operator new();
    }

    v16 = 0;
    v15 = 0uLL;
    HIBYTE(v16) = v7 + 19;
    if (v7)
    {
      if (*(this + 31) >= 0)
      {
        v8 = this + 8;
      }

      else
      {
        v8 = *(this + 1);
      }

      memmove(&v15, v8, v7);
    }

    strcpy(&v15 + v7, "sniffer_logs.pcapng");
    v9 = (this + 32);
    if (*(this + 55) < 0)
    {
      operator delete(*v9);
      *v9 = v15;
      *(this + 6) = v16;
      if ((*(this + 55) & 0x80000000) == 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      *v9 = v15;
      *(this + 6) = v16;
      if ((*(this + 55) & 0x80000000) == 0)
      {
        goto LABEL_29;
      }
    }

    v9 = *v9;
LABEL_29:
    *this = fopen(v9, "a+b");
    v10 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v10)
    {
      v11 = v10;
      if (syslog_is_the_mask_enabled(7) && os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        PcapManager::start_pcap_capture(this + 55, this + 4, v11);
        if (*this)
        {
          return v4 == 0;
        }

        goto LABEL_40;
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
      if (*this)
      {
        return v4 == 0;
      }

LABEL_40:
      v13 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v13)
      {
        v14 = v13;
        if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          PcapManager::start_pcap_capture(this + 55, this + 4);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
      }

      return v4 == 0;
    }

    if (*this)
    {
      return v4 == 0;
    }

    goto LABEL_40;
  }

LABEL_8:
  v5 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v5)
  {
    v6 = v5;
    if (syslog_is_the_mask_enabled(4) && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      PcapManager::start_pcap_capture();
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
  }

  return v4 == 0;
}

void PcapManager::stop_pcap_capture(FILE **this)
{
  v2 = *this;
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  v4 = logging_obg;
  if (v2)
  {
    if (logging_obg)
    {
      if (syslog_is_the_mask_enabled(4))
      {
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          PcapManager::stop_pcap_capture();
        }
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
    }

    fflush(*this);
    fclose(*this);
    *this = 0;
    backup_current_sniffer_file();
    *(this + 82) = 1;
  }

  else if (logging_obg)
  {
    if (syslog_is_the_mask_enabled(4) && os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      PcapManager::stop_pcap_capture();
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
  }
}

ssize_t PcapManager::insert_fd(PcapManager *this, int a2)
{
  v15 = 1;
  __buf = 0x40002A1B2C3D4;
  v14 = xmmword_100443F30;
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    v5 = logging_obg;
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v17 = a2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "PcapManager::insert_fd(%d)", buf, 8u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
  }

  setsockopt(a2, 0xFFFF, 4130, &v15, 4u);
  v6 = write(a2, &__buf, 0x18uLL);
  if ((v6 & 0x80000000) != 0)
  {
    v10 = *__error();
    v11 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v11)
    {
      if (syslog_is_the_mask_enabled(3) && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        PcapManager::insert_fd();
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
    }

    *__error() = v10;
  }

  else
  {
    v7 = *(this + 8);
    if (!v7)
    {
LABEL_15:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v8 = v7;
        v9 = *(v7 + 28);
        if (v9 <= a2)
        {
          break;
        }

        v7 = *v8;
        if (!*v8)
        {
          goto LABEL_15;
        }
      }

      if (v9 >= a2)
      {
        return 0;
      }

      v7 = v8[1];
      if (!v7)
      {
        goto LABEL_15;
      }
    }
  }

  return v6;
}

ssize_t PcapManager::new_fd(PcapManager *this)
{
  *v9 = -1;
  v2 = socketpair(1, 2, 0, v9);
  if ((v2 & 0x80000000) != 0)
  {
    v5 = v2;
    v6 = *__error();
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
      v8 = logging_obg;
      if (syslog_is_the_mask_enabled(3))
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          PcapManager::new_fd();
        }
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
    }
  }

  else
  {
    inserted = PcapManager::insert_fd(this, v9[1]);
    if ((inserted & 0x80000000) != 0)
    {
      v5 = inserted;
      v6 = *__error();
    }

    else
    {
      result = v9[0];
      if ((v9[0] & 0x80000000) == 0)
      {
        return result;
      }

      v5 = v9[0];
      v6 = 0;
    }
  }

  close(v9[0]);
  close(v9[1]);
  *__error() = v6;
  return v5;
}

void PcapManager::close_fd_set(uint64_t a1, void *a2)
{
  v3 = (a1 + 56);
  if ((a1 + 56) == a2)
  {
    *&buf[8] = 0uLL;
    *buf = &buf[8];
    v20 = (a2 + 1);
    v21 = *a2;
    if (*a2 != a2 + 1)
    {
      do
      {
        if (!*std::__tree<int>::__find_equal<int>(buf, &buf[8], &v25, &v24, v21 + 7))
        {
          operator new();
        }

        v22 = *(v21 + 1);
        if (v22)
        {
          do
          {
            v23 = v22;
            v22 = *v22;
          }

          while (v22);
        }

        else
        {
          do
          {
            v23 = *(v21 + 2);
            v15 = *v23 == v21;
            v21 = v23;
          }

          while (!v15);
        }

        v21 = v23;
      }

      while (v23 != v20);
    }

    PcapManager::close_fd_set(a1, buf);
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::destroy(buf, *&buf[8]);
  }

  else if (a2[2])
  {
    v4 = (a2 + 1);
    v5 = *a2;
    if (*a2 != a2 + 1)
    {
      v6 = (a1 + 64);
      do
      {
        v7 = v5[7];
        logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
        if (logging_obg)
        {
          if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
          {
            *buf = 67109120;
            *&buf[4] = v7;
            _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "PcapManager::close_fd_set: Closing FD %d", buf, 8u);
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "com.apple.wpantund.ncp";
          *&buf[12] = 2080;
          *&buf[14] = "default";
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", buf, 0x16u);
        }

        close(v7);
        v9 = *v6;
        if (*v6)
        {
          v10 = (a1 + 64);
          v11 = *v6;
          do
          {
            if (*(v11 + 7) >= v7)
            {
              v10 = v11;
            }

            v11 = v11[*(v11 + 7) < v7];
          }

          while (v11);
          if (v10 != v6 && v7 >= *(v10 + 7))
          {
            v12 = v10[1];
            v13 = v10;
            if (v12)
            {
              do
              {
                v14 = v12;
                v12 = *v12;
              }

              while (v12);
            }

            else
            {
              do
              {
                v14 = v13[2];
                v15 = *v14 == v13;
                v13 = v14;
              }

              while (!v15);
            }

            if (*v3 == v10)
            {
              *v3 = v14;
            }

            --*(a1 + 72);
            std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v9, v10);
            operator delete(v10);
          }
        }

        v16 = *(v5 + 1);
        if (v16)
        {
          do
          {
            v17 = v16;
            v16 = *v16;
          }

          while (v16);
        }

        else
        {
          do
          {
            v17 = *(v5 + 2);
            v15 = *v17 == v5;
            v5 = v17;
          }

          while (!v15);
        }

        v5 = v17;
      }

      while (v17 != v4);
    }

    v18 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v18)
    {
      if (syslog_is_the_mask_enabled(6))
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = *(a1 + 72);
          *buf = 67109120;
          *&buf[4] = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "PcapManager: %d pcap streams remaining", buf, 8u);
        }
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
    }
  }
}

void PcapManager::push_packet(PcapManager *this, const PcapPacket *__buf)
{
  v3 = 0;
  v15[0] = 0;
  v15[1] = 0;
  v14 = v15;
  if (!*(__buf + 129))
  {
    v5 = *(this + 7);
    v6 = this + 64;
    if (v5 != this + 64)
    {
      do
      {
        if ((write(*(v5 + 7), __buf, *(__buf + 128)) & 0x80000000) != 0)
        {
          v7 = v15[0];
          if (!v15[0])
          {
LABEL_12:
            operator new();
          }

          v8 = *(v5 + 7);
          while (1)
          {
            while (1)
            {
              v9 = v7;
              v10 = *(v7 + 28);
              if (v8 >= v10)
              {
                break;
              }

              v7 = *v9;
              if (!*v9)
              {
                goto LABEL_12;
              }
            }

            if (v10 >= v8)
            {
              break;
            }

            v7 = v9[1];
            if (!v7)
            {
              goto LABEL_12;
            }
          }
        }

        v11 = *(v5 + 1);
        if (v11)
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v12 = *(v5 + 2);
            v13 = *v12 == v5;
            v5 = v12;
          }

          while (!v13);
        }

        v5 = v12;
      }

      while (v12 != v6);
    }

    PcapManager::close_fd_set(this, &v14);
    v3 = v15[0];
  }

  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::string const&,boost::any const&),boost::function<void ()(std::string const&,boost::any const&)>>,boost::signals2::mutex>>,void *>>>>::destroy(&v14, v3);
}

void PcapManager::insert_header_to_file(FILE **this)
{
  __ptr = 0x40002A1B2C3D4;
  v11 = xmmword_100443F30;
  if (*this)
  {
    v2 = fwrite(&__ptr, 1uLL, 0x18uLL, *this);
    fflush(*this);
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg)
    {
      v4 = logging_obg;
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v13 = v2;
        v5 = "PcapManager::insert_header_to_file count[%d]";
        v6 = v4;
        v7 = 8;
LABEL_10:
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, v5, buf, v7);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
    }
  }

  else
  {
    v8 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v8)
    {
      v9 = v8;
      if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v5 = "PcapManager::insert_header_to_file fp_test_file file not found.";
        v6 = v9;
        v7 = 2;
        goto LABEL_10;
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
    }
  }
}

uint64_t PcapManager::remove_old_pcap_files(PcapManager *this)
{
  memset(&v4, 0, sizeof(v4));
  if (!stat("/var/mobile/Library/Logs/CrashReporter/CoreThread/sniffer/", &v3))
  {
    operator new();
  }

  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg)
  {
    if (syslog_is_the_mask_enabled(4) && os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
    {
      PcapManager::remove_old_pcap_files();
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    CoreAnalyticsHistogramMetricsHelper::ProcessGetRouteCostMetricsHistograms();
  }

  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_100077F94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  if (a39 < 0)
  {
    operator delete(a34);
  }

  _Unwind_Resume(a1);
}

void (__cdecl ***std::ifstream::basic_ifstream(void (__cdecl ***a1)(std::ifstream *__hidden this)))(std::ifstream *__hidden this)
{
  a1[59] = 0;
  *a1 = v3;
  *(*(v3 - 3) + a1) = v2;
  a1[1] = 0;
  v4 = (*(*a1 - 3) + a1);
  std::ios_base::init(v4, a1 + 2);
  v4[1].__vftable = 0;
  v4[1].__fmtflags_ = -1;
  std::filebuf::basic_filebuf();
  if (!std::filebuf::open())
  {
    std::ios_base::clear((*(*a1 - 3) + a1), *(*(*a1 - 3) + a1 + 32) | 4);
  }

  return a1;
}

void sub_1000781C8(_Unwind_Exception *a1)
{
  std::istream::~istream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t PcapManager::get_file_size(PcapManager *this, __sFILE *a2)
{
  if (fseek(a2, 0, 2))
  {
    return -1;
  }

  return ftell(a2);
}

uint64_t PcapManager::update_fd_set(PcapManager *this, fd_set *a2, fd_set *a3, fd_set *a4, int *a5, uint64_t *a6)
{
  v6 = *(this + 7);
  v7 = this + 64;
  if (v6 != this + 64)
  {
    if (a2)
    {
      if (a4)
      {
        if (a5)
        {
          do
          {
            v11 = *(v6 + 7);
            v12 = 1 << v11;
            if (__darwin_check_fd_set_overflow(v11, a2, 0))
            {
              *(a2->fds_bits + ((v11 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= v12;
            }

            if (__darwin_check_fd_set_overflow(v11, a4, 0))
            {
              *(a4->fds_bits + ((v11 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= v12;
            }

            if (*a5 < v11)
            {
              *a5 = v11;
            }

            v13 = *(v6 + 1);
            if (v13)
            {
              do
              {
                v14 = v13;
                v13 = *v13;
              }

              while (v13);
            }

            else
            {
              do
              {
                v14 = *(v6 + 2);
                v15 = *v14 == v6;
                v6 = v14;
              }

              while (!v15);
            }

            v6 = v14;
          }

          while (v14 != v7);
        }

        else
        {
          do
          {
            v22 = *(v6 + 7);
            v23 = v22;
            if (__darwin_check_fd_set_overflow(v22, a2, 0))
            {
              *(a2->fds_bits + ((v23 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v23;
            }

            if (__darwin_check_fd_set_overflow(v23, a4, 0))
            {
              *(a4->fds_bits + ((v23 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v23;
            }

            v24 = *(v6 + 1);
            if (v24)
            {
              do
              {
                v25 = v24;
                v24 = *v24;
              }

              while (v24);
            }

            else
            {
              do
              {
                v25 = *(v6 + 2);
                v15 = *v25 == v6;
                v6 = v25;
              }

              while (!v15);
            }

            v6 = v25;
          }

          while (v25 != v7);
        }
      }

      else
      {
        do
        {
          v19 = *(v6 + 7);
          if (__darwin_check_fd_set_overflow(v19, a2, 0))
          {
            *(a2->fds_bits + ((v19 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v19;
          }

          if (a5 && *a5 < v19)
          {
            *a5 = v19;
          }

          v20 = *(v6 + 1);
          if (v20)
          {
            do
            {
              v21 = v20;
              v20 = *v20;
            }

            while (v20);
          }

          else
          {
            do
            {
              v21 = *(v6 + 2);
              v15 = *v21 == v6;
              v6 = v21;
            }

            while (!v15);
          }

          v6 = v21;
        }

        while (v21 != v7);
      }
    }

    else if (a4)
    {
      do
      {
        v16 = *(v6 + 7);
        if (__darwin_check_fd_set_overflow(v16, a4, 0))
        {
          *(a4->fds_bits + ((v16 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v16;
        }

        if (a5 && *a5 < v16)
        {
          *a5 = v16;
        }

        v17 = *(v6 + 1);
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
            v18 = *(v6 + 2);
            v15 = *v18 == v6;
            v6 = v18;
          }

          while (!v15);
        }

        v6 = v18;
      }

      while (v18 != v7);
    }

    else if (a5)
    {
      v26 = *a5;
      do
      {
        v27 = *(v6 + 7);
        if (v26 < v27)
        {
          *a5 = v27;
          v26 = v27;
        }

        v28 = *(v6 + 1);
        if (v28)
        {
          do
          {
            v29 = v28;
            v28 = *v28;
          }

          while (v28);
        }

        else
        {
          do
          {
            v29 = *(v6 + 2);
            v15 = *v29 == v6;
            v6 = v29;
          }

          while (!v15);
        }

        v6 = v29;
      }

      while (v29 != v7);
    }
  }

  return 0;
}

uint64_t PcapManager::getPcapManagerInstance(PcapManager *this)
{
  std::mutex::lock(&PcapManager::pcapMgrMutex_);
  v1 = PcapManager::pcapManagerInstance;
  if (!PcapManager::pcapManagerInstance)
  {
    operator new();
  }

  std::mutex::unlock(&PcapManager::pcapMgrMutex_);
  return v1;
}

uint64_t PcapManager::HandlePcapFrame()
{
  v1.tv_sec = 0;
  *&v1.tv_usec = 0;
  gettimeofday(&v1, 0);
  return gettimeofday(&v2, 0);
}

{
  v1.tv_sec = 0;
  *&v1.tv_usec = 0;
  gettimeofday(&v1, 0);
  return gettimeofday(&v2, 0);
}

uint64_t *boost::intrusive_ptr<boost::filesystem::detail::recur_dir_itr_imp>::~intrusive_ptr(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      v3 = *(v1 + 16);
      v4 = *(v1 + 8);
      if (v3 != v2)
      {
        do
        {
          v6 = *(v3 - 8);
          v3 -= 8;
          v5 = v6;
          if (v6 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
          {
            boost::filesystem::detail::dir_itr_close((v5 + 48), (v5 + 56), v7);
            if (*(v5 + 31) < 0)
            {
              operator delete(*(v5 + 8));
            }

            operator delete();
          }
        }

        while (v3 != v2);
        v4 = *(v1 + 8);
      }

      *(v1 + 16) = v2;
      operator delete(v4);
    }

    operator delete();
  }

  return result;
}

uint64_t std::ifstream::~ifstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  std::filebuf::~filebuf();

  return std::istream::~istream();
}

uint64_t *std::__tree<int>::__find_equal<int>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v14 = a2;
      do
      {
        v10 = v14[2];
        v15 = *v10 == v14;
        v14 = v10;
      }

      while (v15);
    }

    v16 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v18 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v19 = v18;
          v20 = *(v18 + 28);
          if (v16 >= v20)
          {
            break;
          }

          v18 = *v19;
          v5 = v19;
          if (!*v19)
          {
            goto LABEL_25;
          }
        }

        if (v20 >= v16)
        {
          break;
        }

        v5 = v19 + 1;
        v18 = v19[1];
      }

      while (v18);
LABEL_25:
      *a3 = v19;
      return v5;
    }

    else
    {
      *a3 = v5;
      return a1 + 1;
    }
  }

  else if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  else
  {
    v11 = a2[1];
    if (v11)
    {
      v12 = a2[1];
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      v21 = a2;
      do
      {
        v13 = v21[2];
        v15 = *v13 == v21;
        v21 = v13;
      }

      while (!v15);
    }

    if (v13 == v5 || v6 < *(v13 + 7))
    {
      if (v11)
      {
        *a3 = v13;
        return v13;
      }

      else
      {
        *a3 = a2;
        return a2 + 1;
      }
    }

    else
    {
      v22 = *v5;
      if (*v5)
      {
        do
        {
          while (1)
          {
            v23 = v22;
            v24 = *(v22 + 28);
            if (v6 >= v24)
            {
              break;
            }

            v22 = *v23;
            v5 = v23;
            if (!*v23)
            {
              goto LABEL_41;
            }
          }

          if (v24 >= v6)
          {
            break;
          }

          v5 = v23 + 1;
          v22 = v23[1];
        }

        while (v22);
LABEL_41:
        *a3 = v23;
        return v5;
      }

      else
      {
        *a3 = v5;
        return a1 + 1;
      }
    }
  }
}

void OUTLINED_FUNCTION_5_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

uint64_t _GLOBAL__sub_I_Pcap_rcp_cpp()
{
  qosAttributes = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  pcap_dispatch_queue = dispatch_queue_create("pcap.threadradiod.run.queue", qosAttributes);
  __cxa_atexit(&std::mutex::~mutex, &PcapManager::pcapMgrMutex_, &_mh_execute_header);

  return __cxa_atexit(&std::mutex::~mutex, &myMutexForFileOpertion, &_mh_execute_header);
}

void AWDMetricsServerInterface_PostMetrics(void)
{
  v0 = objc_alloc_init(AWDFlagstoneEngagementMetrics);
  if (v0)
  {
    AWDMetricsClient_GetMetrics_Engagement(v0);
  }

  v1 = objc_alloc_init(AWDFlagstoneNetworkRadioMetrics);
  if (v1)
  {
    AWDMetricsClient_GetMetrics_NetworkRadio(v1);
  }

  v2 = objc_alloc_init(AWDFlagstoneMACMetrics);
  if (v2)
  {
    AWDMetricsClient_GetMetrics_MAC(v2);
  }

  v3 = objc_alloc_init(AWDFlagstoneCoexMetrics);
  if (v3)
  {
    AWDMetricsClient_GetMetrics_Coex(v3);
  }

  v4 = objc_alloc_init(AWDFlagstoneIPMLEMetrics);
  if (v4)
  {
    AWDMetricsClient_GetMetrics_IPMLE(v4);
  }

  v5 = objc_alloc_init(AWDFlagstonePowerMetrics);
  if (v5)
  {
    AWDMetricsClient_GetMetrics_Power(v5);
    AWDPostMetric();
    if (g_is_loggingEnabled == 1)
    {
      AWDMetricsLogger_PowerMetrics(v5);
    }
  }

  if (AWDMetricsClient_IsModified_Topology())
  {
    v6 = objc_alloc_init(AWDFlagstoneTopologyMetrics);
    if (v6)
    {
      AWDMetricsClient_GetMetrics_Topology(v6);
      AWDPostMetric();
      if (g_is_loggingEnabled == 1)
      {
        AWDMetricsLogger_TopologyMetrics(v6);
      }
    }
  }
}

void AWDMetricsServerInterface_Periodic(void)
{
  if (!g_metricMode)
  {
    AWDMetricsServerInterface_PostMetrics();
  }
}

void AWDMetricsServerInterface_Post_StabilityMetrics(void)
{
  v0 = objc_alloc_init(AWDFlagstoneStabilityMetrics);
  if (v0)
  {
    AWDMetricsClient_GetMetrics_Stability(v0);
    AWDPostMetric();
    if (g_is_loggingEnabled == 1)
    {
      AWDMetricsLogger_StabilityMetrics(v0);
    }
  }
}

void AWDMetricsServerInterface_Post_CTCSNumberOfThirdPartyBRs(void)
{
  v0 = objc_alloc_init(AWDFlagstoneCTCSNumberOfThirdPartyBRs);
  if (v0)
  {
    AWDMetricsClient_GetMetrics_CTCSNumThirdPartyBRs(v0);
    AWDPostMetric();
    if (g_is_loggingEnabled == 1)
    {
      AWDMetricsLogger_CTCSNumberOfThirdPartyBRs(v0);
    }
  }
}

void AWDMetricsServerInterface_Post_CTCSNumberOfPreferredNetworksByBorderRouters(void)
{
  v0 = objc_alloc_init(AWDFlagstoneCTCSNumberPreferredNetworksByBorderRouters);
  if (v0)
  {
    AWDMetricsClient_GetMetrics_CTCSNumberPreferredNetworksByBorderRouters(v0);
    AWDPostMetric();
    if (g_is_loggingEnabled == 1)
    {
      AWDMetricsLogger_CTCSNumberOfPreferredNetworksByBorderRouters(v0);
    }
  }
}

void AWDMetricsServerInterface_Init(int a1, char a2)
{
  v4 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "AWDMetricsServerInterface : AWDMetricsServerInterface_Init", v6, 2u);
  }

  g_metricMode = a1;
  g_is_loggingEnabled = a2;
  v5 = [AWDMetricsServerInterface alloc];
}

void OUTLINED_FUNCTION_2_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void _GLOBAL__sub_I_AWDMetricsServerInterface_mm()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void awdmetricsclient_create_dispatch_queue(void)
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("awdmetricsclient.xpc.queue", v2);
  v1 = awdmetricsclientFQueue;
  awdmetricsclientFQueue = v0;
}

void awdmetricsclient_convert_ValMap_to_xpc_object(any a1@<0:X0>, const char *a2@<X1>, const char *a3@<X2>, xpc_object_t *a4@<X8>)
{
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v8, "method", a3);
  xpc_dictionary_set_string(v8, "key", a2);
  if (!*a1.var0)
  {
    operator new();
  }

  append_to_xpc_object_by_value_type(v8, a1.var0);
  v9 = v8;
  v10 = v9;
  v11 = v9;
  if (!v9)
  {
    v11 = xpc_null_create();
  }

  v12 = v11;
  v13 = v12;
  *a4 = v12;
  if (v12)
  {
    if (xpc_get_type(v12) != &_xpc_type_dictionary)
    {
      *a4 = xpc_null_create();
    }
  }

  else
  {
    *a4 = xpc_null_create();
  }
}

void sub_10007AB04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  if (a10)
  {
    awdmetricsclient_convert_ValMap_to_xpc_object(a10);

    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void awdmetricsclient_create_CtrXPC_client(void)
{
  v0 = [[CtrInternalClient alloc] init:"internal AWDMetrics-Client"];
  v1 = _gIntClientPtr;
  _gIntClientPtr = v0;

  v2 = _gIntClientPtr;
  v19 = 14;
  strcpy(v18, "Daemon:Version");
  v3 = awdmetricsclientFQueue;
  v17 = v3;
  [v2 setEventHandler:v18 InternalClientEventBlock:&__block_literal_global_2 dqueue:&v17];
  v4 = v17;
  v17 = 0;

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  v5 = _gIntClientPtr;
  v16 = 14;
  strcpy(v15, "vendor:version");
  v6 = awdmetricsclientFQueue;
  v14 = v6;
  [v5 setEventHandler:v15 InternalClientEventBlock:&__block_literal_global_10 dqueue:&v14];
  v7 = v14;
  v14 = 0;

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  v8 = _gIntClientPtr;
  v13 = 11;
  strcpy(v12, "NCP:Channel");
  v9 = awdmetricsclientFQueue;
  v11 = v9;
  [v8 setEventHandler:v12 InternalClientEventBlock:&__block_literal_global_13 dqueue:&v11];
  v10 = v11;
  v11 = 0;

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  operator new();
}

void sub_10007BBEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

void ___Z37awdmetricsclient_create_CtrXPC_clientv_block_invoke(id a1, any a2)
{
  v2 = *a2.var0;
  if (*a2.var0)
  {
    v2 = (*(*v2 + 24))(v2);
  }

  v4 = v2;
  v3.var0 = &v4;
  AWDMetricsHandlers_handle_getprop_daemonversion(v3);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }
}

void sub_10007C048(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10)
{
  if (a10)
  {
    awdmetricsclient_convert_ValMap_to_xpc_object(a10);
  }

  _Unwind_Resume(exception_object);
}

void ___Z37awdmetricsclient_create_CtrXPC_clientv_block_invoke_2(id a1, any a2)
{
  v2 = *a2.var0;
  if (*a2.var0)
  {
    v2 = (*(*v2 + 24))(v2);
  }

  v4 = v2;
  v3.var0 = &v4;
  AWDMetricsHandlers_handle_getprop_vendorversion(v3);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }
}

void sub_10007C0E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10)
{
  if (a10)
  {
    awdmetricsclient_convert_ValMap_to_xpc_object(a10);
  }

  _Unwind_Resume(exception_object);
}

void ___Z37awdmetricsclient_create_CtrXPC_clientv_block_invoke_3(id a1, any a2)
{
  v2 = *a2.var0;
  if (*a2.var0)
  {
    v2 = (*(*v2 + 24))(v2);
  }

  v4 = v2;
  v3.var0 = &v4;
  AWDMetricsHandlers_handle_update_channelSelectionData(v3);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }
}

void sub_10007C188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10)
{
  if (a10)
  {
    awdmetricsclient_convert_ValMap_to_xpc_object(a10);
  }

  _Unwind_Resume(exception_object);
}

void ___Z37awdmetricsclient_create_CtrXPC_clientv_block_invoke_4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v3 = (*(*v3 + 24))(v3);
  }

  v7 = v3;
  v4.var0 = &v7;
  awdmetricsclient_convert_ValMap_to_xpc_object(v4, "vendor:MAC:packet:RSSIHistogram:AsValMap", "property_changed", &xdict);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v5 = xdict;
  v6 = xpc_dictionary_get_value(xdict, "value");
  AWDMetricsHandlers_handle_getprop_nbrRssi(v6, *(a1 + 32));
}

void sub_10007C290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  if (a9)
  {
    awdmetricsclient_convert_ValMap_to_xpc_object(a9);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x10007C288);
}

void ___Z37awdmetricsclient_create_CtrXPC_clientv_block_invoke_5(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v3 = (*(*v3 + 24))(v3);
  }

  v7 = v3;
  v4.var0 = &v7;
  awdmetricsclient_convert_ValMap_to_xpc_object(v4, "vendor:MAC:packet:LQIHistogram:AsValMap", "property_changed", &xdict);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v5 = xdict;
  v6 = xpc_dictionary_get_value(xdict, "value");
  AWDMetricsHandlers_handle_getprop_macPktLqi(v6, *(a1 + 32));
}

void sub_10007C398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  if (a9)
  {
    awdmetricsclient_convert_ValMap_to_xpc_object(a9);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x10007C390);
}

void ___Z37awdmetricsclient_create_CtrXPC_clientv_block_invoke_6(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v3 = (*(*v3 + 24))(v3);
  }

  v7 = v3;
  v4.var0 = &v7;
  awdmetricsclient_convert_ValMap_to_xpc_object(v4, "vendor:MAC:packet:SizeHistogram:AsValMap", "property_changed", &xdict);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v5 = xdict;
  v6 = xpc_dictionary_get_value(xdict, "value");
  AWDMetricsHandlers_handle_getprop_macPktSize(v6, *(a1 + 32));
}

void sub_10007C4A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  if (a9)
  {
    awdmetricsclient_convert_ValMap_to_xpc_object(a9);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x10007C498);
}

void ___Z37awdmetricsclient_create_CtrXPC_clientv_block_invoke_7(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v3 = (*(*v3 + 24))(v3);
  }

  v7 = v3;
  v4.var0 = &v7;
  awdmetricsclient_convert_ValMap_to_xpc_object(v4, "TPC:FrameTxPowerHistogram", "property_changed", &xdict);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v5 = xdict;
  v6 = xpc_dictionary_get_value(xdict, "value");
  AWDMetricsHandlers_handle_getprop_frameTxPowerHist(v6, *(a1 + 32));
}

void sub_10007C5A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  if (a9)
  {
    awdmetricsclient_convert_ValMap_to_xpc_object(a9);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x10007C5A0);
}

void ___Z37awdmetricsclient_create_CtrXPC_clientv_block_invoke_8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v3 = (*(*v3 + 24))(v3);
  }

  v7 = v3;
  v4.var0 = &v7;
  awdmetricsclient_convert_ValMap_to_xpc_object(v4, "TPC:NeighborTxPowerHistogram", "property_changed", &xdict);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v5 = xdict;
  v6 = xpc_dictionary_get_value(xdict, "value");
  AWDMetricsHandlers_handle_getprop_neighborTxPowerHist(v6, *(a1 + 32));
}

void sub_10007C6B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  if (a9)
  {
    awdmetricsclient_convert_ValMap_to_xpc_object(a9);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x10007C6A8);
}

void ___Z37awdmetricsclient_create_CtrXPC_clientv_block_invoke_9(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v3 = (*(*v3 + 24))(v3);
  }

  v7 = v3;
  v4.var0 = &v7;
  awdmetricsclient_convert_ValMap_to_xpc_object(v4, "TPC:NeighborEnergySavingsFactorHistogram", "property_changed", &xdict);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v5 = xdict;
  v6 = xpc_dictionary_get_value(xdict, "value");
  AWDMetricsHandlers_handle_getprop_neighborEnergySavingsFactorHist(v6, *(a1 + 32));
}

void sub_10007C7B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  if (a9)
  {
    awdmetricsclient_convert_ValMap_to_xpc_object(a9);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x10007C7B0);
}

void ___Z37awdmetricsclient_create_CtrXPC_clientv_block_invoke_10(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v3 = (*(*v3 + 24))(v3);
  }

  v7 = v3;
  v4.var0 = &v7;
  awdmetricsclient_convert_ValMap_to_xpc_object(v4, "vendor:radio:stats:asvalmap", "property_changed", &xdict);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v5 = xdict;
  v6 = xpc_dictionary_get_value(xdict, "value");
  AWDMetricsHandlers_handle_getprop_radiostat(v6, *(a1 + 32));
}

void sub_10007C8C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  if (a9)
  {
    awdmetricsclient_convert_ValMap_to_xpc_object(a9);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x10007C8B8);
}

void ___Z37awdmetricsclient_create_CtrXPC_clientv_block_invoke_11(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v3 = (*(*v3 + 24))(v3);
  }

  v7 = v3;
  v4.var0 = &v7;
  awdmetricsclient_convert_ValMap_to_xpc_object(v4, "vendor:radio:counters:asvalmap", "property_changed", &xdict);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v5 = xdict;
  v6 = xpc_dictionary_get_value(xdict, "value");
  AWDMetricsHandlers_handle_getprop_radiocounters(v6, *(a1 + 32));
}

void sub_10007C9C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  if (a9)
  {
    awdmetricsclient_convert_ValMap_to_xpc_object(a9);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x10007C9C0);
}

void ___Z37awdmetricsclient_create_CtrXPC_clientv_block_invoke_12(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v3 = (*(*v3 + 24))(v3);
  }

  v7 = v3;
  v4.var0 = &v7;
  awdmetricsclient_convert_ValMap_to_xpc_object(v4, "vendor:openthread:radio:counters:AsValMap", "property_changed", &xdict);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v5 = xdict;
  v6 = xpc_dictionary_get_value(xdict, "value");
  AWDMetricsHandlers_handle_getprop_otradiocounters(v6, *(a1 + 32));
}

void sub_10007CAD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  if (a9)
  {
    awdmetricsclient_convert_ValMap_to_xpc_object(a9);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x10007CAC8);
}

void ___Z37awdmetricsclient_create_CtrXPC_clientv_block_invoke_13(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v3 = (*(*v3 + 24))(v3);
  }

  v7 = v3;
  v4.var0 = &v7;
  awdmetricsclient_convert_ValMap_to_xpc_object(v4, "NCP:Counter:AllMac:AsValMap", "property_changed", &xdict);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v5 = xdict;
  v6 = xpc_dictionary_get_value(xdict, "value");
  AWDMetricsHandlers_handle_getprop_allmac(v6, *(a1 + 32));
}

void sub_10007CBD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  if (a9)
  {
    awdmetricsclient_convert_ValMap_to_xpc_object(a9);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x10007CBD0);
}

void ___Z37awdmetricsclient_create_CtrXPC_clientv_block_invoke_14(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v3 = (*(*v3 + 24))(v3);
  }

  v7 = v3;
  v4.var0 = &v7;
  awdmetricsclient_convert_ValMap_to_xpc_object(v4, "NCP:MacRetryHistogram:AsValMap", "property_changed", &xdict);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v5 = xdict;
  v6 = xpc_dictionary_get_value(xdict, "value");
  AWDMetricsHandlers_handle_getprop_macretry(v6, *(a1 + 32));
}

void sub_10007CCE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  if (a9)
  {
    awdmetricsclient_convert_ValMap_to_xpc_object(a9);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x10007CCD8);
}

void ___Z37awdmetricsclient_create_CtrXPC_clientv_block_invoke_15(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v3 = (*(*v3 + 24))(v3);
  }

  v7 = v3;
  v4.var0 = &v7;
  awdmetricsclient_convert_ValMap_to_xpc_object(v4, "vendor:cca:energydetected:histogram:AsValMap", "property_changed", &xdict);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v5 = xdict;
  v6 = xpc_dictionary_get_value(xdict, "value");
  AWDMetricsHandlers_handle_getprop_ccaEnergyDetect(v6, *(a1 + 32));
}

void sub_10007CDE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  if (a9)
  {
    awdmetricsclient_convert_ValMap_to_xpc_object(a9);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x10007CDE0);
}

void ___Z37awdmetricsclient_create_CtrXPC_clientv_block_invoke_16(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v3 = (*(*v3 + 24))(v3);
  }

  v7 = v3;
  v4.var0 = &v7;
  awdmetricsclient_convert_ValMap_to_xpc_object(v4, "vendor:csma:backoff:histogram:AsValMap", "property_changed", &xdict);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v5 = xdict;
  v6 = xpc_dictionary_get_value(xdict, "value");
  AWDMetricsHandlers_handle_getprop_csmaBackoff(v6, *(a1 + 32));
}

void sub_10007CEF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  if (a9)
  {
    awdmetricsclient_convert_ValMap_to_xpc_object(a9);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x10007CEE8);
}

void ___Z37awdmetricsclient_create_CtrXPC_clientv_block_invoke_17(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v3 = (*(*v3 + 24))(v3);
  }

  v7 = v3;
  v4.var0 = &v7;
  awdmetricsclient_convert_ValMap_to_xpc_object(v4, "vendor:coex:counters:asvalmap", "property_changed", &xdict);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v5 = xdict;
  v6 = xpc_dictionary_get_value(xdict, "value");
  AWDMetricsHandlers_handle_getprop_vendorcoex(v6, *(a1 + 32));
}

void sub_10007CFF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  if (a9)
  {
    awdmetricsclient_convert_ValMap_to_xpc_object(a9);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x10007CFF0);
}

void ___Z37awdmetricsclient_create_CtrXPC_clientv_block_invoke_18(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v3 = (*(*v3 + 24))(v3);
  }

  v7 = v3;
  v4.var0 = &v7;
  awdmetricsclient_convert_ValMap_to_xpc_object(v4, "vendor:coex:histograms:asvalmap", "property_changed", &xdict);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v5 = xdict;
  v6 = xpc_dictionary_get_value(xdict, "value");
  AWDMetricsHandlers_handle_getprop_vendorcoex_histograms(v6, *(a1 + 32));
}

void sub_10007D100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  if (a9)
  {
    awdmetricsclient_convert_ValMap_to_xpc_object(a9);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x10007D0F8);
}

void ___Z37awdmetricsclient_create_CtrXPC_clientv_block_invoke_19(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v3 = (*(*v3 + 24))(v3);
  }

  v7 = v3;
  v4.var0 = &v7;
  awdmetricsclient_convert_ValMap_to_xpc_object(v4, "NCP:Counter:Thread:Mle:AsValMap", "property_changed", &xdict);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v5 = xdict;
  v6 = xpc_dictionary_get_value(xdict, "value");
  AWDMetricsHandlers_handle_getprop_threadmle(v6, *(a1 + 32));
}

void sub_10007D208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  if (a9)
  {
    awdmetricsclient_convert_ValMap_to_xpc_object(a9);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x10007D200);
}

void ___Z37awdmetricsclient_create_CtrXPC_clientv_block_invoke_20(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v3 = (*(*v3 + 24))(v3);
  }

  v7 = v3;
  v4.var0 = &v7;
  awdmetricsclient_convert_ValMap_to_xpc_object(v4, "NCP:Counter:AllIPv6:AsValMap", "property_changed", &xdict);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v5 = xdict;
  v6 = xpc_dictionary_get_value(xdict, "value");
  AWDMetricsHandlers_handle_getprop_allipv6(v6, *(a1 + 32));
}

void sub_10007D310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  if (a9)
  {
    awdmetricsclient_convert_ValMap_to_xpc_object(a9);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x10007D308);
}

void ___Z37awdmetricsclient_create_CtrXPC_clientv_block_invoke_21(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v3 = (*(*v3 + 24))(v3);
  }

  v7 = v3;
  v4.var0 = &v7;
  awdmetricsclient_convert_ValMap_to_xpc_object(v4, "vendor:neighbor:count:histogram", "property_changed", &xdict);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v5 = xdict;
  v6 = xpc_dictionary_get_value(xdict, "value");
  AWDMetricsHandlers_handle_getprop_allipv6(v6, *(a1 + 32));
}

void sub_10007D418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  if (a9)
  {
    awdmetricsclient_convert_ValMap_to_xpc_object(a9);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x10007D410);
}

void ___Z37awdmetricsclient_create_CtrXPC_clientv_block_invoke_22(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v3 = (*(*v3 + 24))(v3);
  }

  v7 = v3;
  v4.var0 = &v7;
  awdmetricsclient_convert_ValMap_to_xpc_object(v4, "vendor:neighbor:count:histogram:AsValMap", "property_changed", &xdict);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v5 = xdict;
  v6 = xpc_dictionary_get_value(xdict, "value");
  AWDMetricsHandlers_handle_getprop_connectednodes(v6, *(a1 + 32));
}

void sub_10007D520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  if (a9)
  {
    awdmetricsclient_convert_ValMap_to_xpc_object(a9);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x10007D518);
}

void AWDMetricsClient_GetMetrics_Versions(void)
{
  v19 = 0;
  v16 = 14;
  strcpy(__p, "Daemon:Version");
  if (_gIntClientPtr)
  {
    [_gIntClientPtr getProperty:__p output:&v19];
    v0 = LODWORD(v17[0]) == 0;
    v1 = v17[1];
    v2 = SHIBYTE(v18);
    HIBYTE(v18) = 0;
    LOBYTE(v17[1]) = 0;
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *v17 = 0u;
    v18 = 0u;
    v0 = 1;
    v1 = 0;
    v2 = 0;
    HIBYTE(v18) = 0;
    LOBYTE(v17[1]) = 0;
    if ((v16 & 0x80000000) == 0)
    {
LABEL_3:
      if (!v0)
      {
        goto LABEL_11;
      }

      goto LABEL_7;
    }
  }

  operator delete(__p[0]);
  if (!v0)
  {
    goto LABEL_11;
  }

LABEL_7:
  v3 = v19;
  if (v19)
  {
    v3 = (*(*v19 + 24))(v19);
  }

  v14 = v3;
  v4.var0 = &v14;
  AWDMetricsHandlers_handle_getprop_daemonversion(v4);
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

LABEL_11:
  v13 = 0;
  v12 = 14;
  strcpy(v11, "vendor:version");
  if (_gIntClientPtr)
  {
    [_gIntClientPtr getProperty:v11 output:&v13];
    v5 = LODWORD(v17[0]) == 0;
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  *v17 = 0u;
  v18 = 0u;
  v5 = 1;
  if (v2 < 0)
  {
LABEL_13:
    operator delete(v1);
  }

LABEL_14:
  v6 = v17[1];
  v7 = SHIBYTE(v18);
  HIBYTE(v18) = 0;
  LOBYTE(v17[1]) = 0;
  if (v12 < 0)
  {
    operator delete(v11[0]);
    if (!v5)
    {
      goto LABEL_24;
    }
  }

  else if (!v5)
  {
    goto LABEL_24;
  }

  v8 = v13;
  if (v13)
  {
    v8 = (*(*v13 + 24))(v13);
  }

  v10 = v8;
  v9.var0 = &v10;
  AWDMetricsHandlers_handle_getprop_vendorversion(v9);
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

LABEL_24:
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  if (v7 < 0)
  {
    operator delete(v6);
  }
}

void sub_10007D7E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a17)
  {
    (*(*a17 + 8))(a17);
  }

  v28 = *(v26 - 40);
  if (v28)
  {
    (*(*v28 + 8))(v28);
    if ((v25 & 0x80000000) == 0)
    {
LABEL_5:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((v25 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(v24);
  _Unwind_Resume(exception_object);
}

void AWDMetricsClient_GetMetrics_Engagement(void *a1)
{
  xpc_null_create();
  v2 = a1;
  v3 = objc_opt_new();
  [v2 setHeader:v3];

  v4 = [v2 header];
  AWDMetricsHandlers_handle_getprop_header(v4);

  v5 = objc_opt_new();
  [v2 setSCntrsEngagement:v5];

  v6 = 0;
  operator new();
}

void sub_10007DF9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  v38 = v34;

  if (a16)
  {
    (*(*a16 + 8))(a16);
  }

  if (a24)
  {
    (*(*a24 + 8))(a24);
  }

  v40 = *(v37 - 72);
  if (v40)
  {
    (*(*v40 + 8))(v40);
  }

  if (v36 < 0)
  {
    operator delete(v32);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void AWDMetricsClient_GetMetrics_NetworkRadio(void *a1)
{
  xpc_null_create();
  v2 = a1;
  v3 = objc_opt_new();
  [v2 setHeader:v3];

  v4 = [v2 header];
  AWDMetricsHandlers_handle_getprop_header(v4);

  v5 = objc_opt_new();
  [v2 setSCntrsNetwork:v5];

  v6 = 0;
  operator new();
}

void sub_10007F1B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (a19)
  {
    (*(*a19 + 8))(a19);
  }

  if (a27)
  {
    (*(*a27 + 8))(a27);
  }

  if (a35)
  {
    (*(*a35 + 8))(a35);
  }

  if (a43)
  {
    (*(*a43 + 8))(a43);
  }

  if (a51)
  {
    (*(*a51 + 8))(a51);
  }

  v66 = *(v64 - 208);
  if (v66)
  {
    (*(*v66 + 8))(v66);
  }

  v67 = *(v64 - 168);
  if (v67)
  {
    (*(*v67 + 8))(v67);
  }

  v68 = *(v64 - 88);
  if (v68)
  {
    (*(*v68 + 8))(v68);
  }

  if (v63 < 0)
  {
    operator delete(v59);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void AWDMetricsClient_GetMetrics_MAC(void *a1)
{
  xpc_null_create();
  v2 = a1;
  v3 = objc_opt_new();
  [v2 setHeader:v3];

  v4 = [v2 header];
  AWDMetricsHandlers_handle_getprop_header(v4);

  v5 = 0;
  operator new();
}

void sub_1000801E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a17)
  {
    (*(*a17 + 8))(a17);
  }

  if (a25)
  {
    (*(*a25 + 8))(a25);
  }

  if (a33)
  {
    (*(*a33 + 8))(a33);
  }

  if (a41)
  {
    (*(*a41 + 8))(a41);
  }

  v55 = *(v53 - 168);
  if (v55)
  {
    (*(*v55 + 8))(v55);
  }

  v56 = *(v53 - 88);
  if (v56)
  {
    (*(*v56 + 8))(v56);
  }

  if (v52 < 0)
  {
    operator delete(v49);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void AWDMetricsClient_GetMetrics_Coex(void *a1)
{
  xpc_null_create();
  v2 = a1;
  v3 = objc_opt_new();
  [v2 setHeader:v3];

  v4 = [v2 header];
  AWDMetricsHandlers_handle_getprop_header(v4);

  v5 = 0;
  operator new();
}

void sub_100080958(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a17)
  {
    (*(*a17 + 8))(a17);
  }

  v31 = *(v29 - 72);
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  if (v28 < 0)
  {
    operator delete(v25);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void AWDMetricsClient_GetMetrics_IPMLE(void *a1)
{
  xpc_null_create();
  v2 = a1;
  v3 = objc_opt_new();
  [v2 setHeader:v3];

  v4 = [v2 header];
  AWDMetricsHandlers_handle_getprop_header(v4);

  v5 = 0;
  operator new();
}

void sub_100080EB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a17)
  {
    (*(*a17 + 8))(a17);
  }

  v31 = *(v29 - 72);
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  if (v28 < 0)
  {
    operator delete(v25);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void AWDMetricsClient_GetMetrics_Stability(void *a1)
{
  v5 = a1;
  v1 = objc_opt_new();
  [v5 setHeader:v1];

  v2 = [v5 header];
  AWDMetricsHandlers_handle_getprop_header(v2);

  v3 = objc_opt_new();
  [v5 setSCntrsStability:v3];

  v4 = [v5 sCntrsStability];
  AWDMetricsHandlers_handle_get_stabilityCountersData(v4);
}

void sub_1000810C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void AWDMetricsClient_GetMetrics_CTCSNumThirdPartyBRs(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  [v1 setHeader:v2];

  v3 = 0;
  AWDMetricsHandlers_handle_get_CTCSNumberOfThirdPartyBRs(&v3);
  [v1 setHasNumberOfThirdPartyBorderRouters:1];
  [v1 setNumberOfThirdPartyBorderRouters:v3];
}

void AWDMetricsClient_GetMetrics_CTCSNumberPreferredNetworksByBorderRouters(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  [v1 setHeader:v2];

  v3 = [v1 header];
  AWDMetricsHandlers_handle_getprop_header(v3);

  *v4 = 0;
  AWDMetricsHandlers_handle_get_CTCSNumberOfPreferredNWs(&v4[1], v4);
  [v1 setHasNumberOfPreferredNwByAppleBorderRouters:1];
  [v1 setHasNumberOfPreferredNwByAppleBorderRouters:1];
  [v1 setNumberOfPreferredNwByThirdPartyBorderRouters:v4[1]];
  [v1 setNumberOfPreferredNwByAppleBorderRouters:v4[0]];
}

void sub_100081254(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void AWDMetricsClient_update_StabilityData(_OWORD *a1)
{
  v1 = a1[1];
  v2[0] = *a1;
  v2[1] = v1;
  AWDMetricsHandlers_handle_update_stabilityData(v2);
  AWDMetricsServerInterface_Post_StabilityMetrics();
}

void AWDMetricsClient_GetMetrics_Power(void *a1)
{
  v5 = a1;
  v1 = objc_opt_new();
  [v5 setHeader:v1];

  v2 = [v5 header];
  AWDMetricsHandlers_handle_getprop_header(v2);

  v3 = objc_opt_new();
  [v5 setSCntrsPower:v3];

  v4 = [v5 sCntrsPower];
  AWDMetricsHandlers_handle_get_PowerCountersData(v4);
}

void sub_100081374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

uint64_t AWDMetricsClient_get_spinel_prop_category(unsigned int a1)
{
  result = 1;
  if (a1 - 114 >= 2 && a1 != 5412)
  {
    if (a1 == 7 || a1 - 1 >= 0xB)
    {
      if (a1 <= 0xD && ((1 << a1) & 0x3080) != 0)
      {
        return 3;
      }

      else if (a1 - 4096 >= 5)
      {
        if (a1)
        {
          if ((a1 & 0xFFFFFFFE) == 0x1006)
          {
            return 6;
          }

          else if ((a1 & 0xFFFFFFFE) == 0x1008)
          {
            return 7;
          }

          else
          {
            v3 = a1 & 0xFFFFFFF0;
            result = 8;
            if ((a1 & 0xFFFFFFF0) != 0x20)
            {
              v4 = a1 & 0xFFFFFF00;
              if ((a1 & 0xFFFFFF00) != 0x1200)
              {
                result = 9;
                if (v3 != 48 && v4 != 4864)
                {
                  result = 10;
                  if (v3 != 64 && v4 != 5120)
                  {
                    result = 11;
                    if (v3 != 80 && v4 != 5376)
                    {
                      result = 12;
                      if (v3 != 96 && v4 != 5632)
                      {
                        result = 13;
                        if (v3 != 112 && v4 != 5888)
                        {
                          result = 14;
                          if (v3 != 128 && v4 != 6144)
                          {
                            if (a1 - 6400 >= 0x700)
                            {
                              if (v3 == 160)
                              {
                                return 16;
                              }

                              else if (v4 == 256)
                              {
                                return 17;
                              }

                              else if (v4 == 1024)
                              {
                                return 18;
                              }

                              else if (a1 - 1280 >= 0x300)
                              {
                                if (a1 >> 6 == 239)
                                {
                                  return 20;
                                }

                                else
                                {
                                  v5 = a1 & 0xFFFFFC00;
                                  if (v5 == 15360)
                                  {
                                    return 21;
                                  }

                                  else if (v5 == 0x4000)
                                  {
                                    return 22;
                                  }

                                  else
                                  {
                                    return 23;
                                  }
                                }
                              }

                              else
                              {
                                return 19;
                              }
                            }

                            else
                            {
                              return 15;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        else
        {
          return 5;
        }
      }

      else
      {
        return 4;
      }
    }

    else
    {
      return 2;
    }
  }

  return result;
}

void AWDMetricsClient_update_PowerCounters_HostWakeup(unsigned int a1)
{
  spinel_prop_category = AWDMetricsClient_get_spinel_prop_category(a1);

  AWDMetricsHandlers_handle_update_PowerCounter_HostWakeup(spinel_prop_category);
}

void sub_10008183C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v28 < 0)
  {
    operator delete(v27);
  }

  _Unwind_Resume(exception_object);
}

void AWDMetricsClient_ResetMetrics_MAC(void)
{
  v1 = 18;
  strcpy(__p, "NCP:Counter:AllMac");
  if (_gIntClientPtr)
  {
    [_gIntClientPtr setProperty:__p property_val:"0"];
    HIBYTE(v3) = 0;
    BYTE8(v2) = 0;
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = 0u;
    v3 = 0u;
    HIBYTE(v3) = 0;
    BYTE8(v2) = 0;
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*__p);
LABEL_3:
  operator new();
}

void sub_1000823D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v27 < 0)
  {
    operator delete(v26);
  }

  _Unwind_Resume(exception_object);
}

void AWDMetricsClient_ResetMetrics_Coex(void)
{
  v3 = 20;
  strcpy(__p, "vendor:coex:counters");
  if (_gIntClientPtr)
  {
    [_gIntClientPtr setProperty:__p property_val:"0"];
    v0 = v4[1];
    v1 = SHIBYTE(v5);
    HIBYTE(v5) = 0;
    LOBYTE(v4[1]) = 0;
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *v4 = 0u;
    v5 = 0u;
    v0 = 0;
    v1 = 0;
    HIBYTE(v5) = 0;
    LOBYTE(v4[1]) = 0;
    if ((v3 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v1 & 0x80000000) == 0)
      {
        return;
      }

LABEL_7:
      operator delete(v0);
      return;
    }
  }

  operator delete(*__p);
  if (v1 < 0)
  {
    goto LABEL_7;
  }
}

void sub_1000824F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AWDMetricsClient_ResetMetrics_IPMLE(void)
{
  v6 = 19;
  strcpy(__p, "NCP:Counter:AllIPv6");
  if (_gIntClientPtr)
  {
    [_gIntClientPtr setProperty:__p property_val:"0"];
    v0 = v7[1];
    v1 = SHIBYTE(v8);
    HIBYTE(v8) = 0;
    LOBYTE(v7[1]) = 0;
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *v7 = 0u;
    v8 = 0u;
    v0 = 0;
    v1 = 0;
    HIBYTE(v8) = 0;
    LOBYTE(v7[1]) = 0;
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*__p);
LABEL_3:
  strcpy(v4, "NCP:Counter:Thread:Mle");
  HIBYTE(v4[2]) = 22;
  if (_gIntClientPtr)
  {
    [_gIntClientPtr setProperty:v4 property_val:"0"];
    if ((v1 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    *v7 = 0u;
    v8 = 0u;
    if ((v1 & 0x80000000) == 0)
    {
LABEL_5:
      v2 = v7[1];
      v3 = SHIBYTE(v8);
      HIBYTE(v8) = 0;
      LOBYTE(v7[1]) = 0;
      if ((SHIBYTE(v4[2]) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  operator delete(v0);
  v2 = v7[1];
  v3 = SHIBYTE(v8);
  HIBYTE(v8) = 0;
  LOBYTE(v7[1]) = 0;
  if ((SHIBYTE(v4[2]) & 0x80000000) == 0)
  {
LABEL_6:
    if ((v3 & 0x80000000) == 0)
    {
      return;
    }

LABEL_13:
    operator delete(v2);
    return;
  }

LABEL_12:
  operator delete(v4[0]);
  if (v3 < 0)
  {
    goto LABEL_13;
  }
}

void sub_100082678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v22 < 0)
  {
    operator delete(v21);
  }

  _Unwind_Resume(exception_object);
}

void AWDMetricsClient_GetMetrics_Topology(void *a1)
{
  v3 = a1;
  v1 = objc_opt_new();
  [v3 setHeader:v1];

  v2 = [v3 header];
  AWDMetricsHandlers_handle_getprop_header(v2);

  AWDMetricsHandlers_topologymetrics_get(v3);
}

void sub_100082744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void AWDMetricsClient_UpdateMetrics_CTCS(int a1, int a2, int a3)
{
  if (AWDMetricsHandlers_ctcsmetrics_update(a1, a2, a3))
  {
    AWDMetricsServerInterface_Post_CTCSNumberOfThirdPartyBRs();

    AWDMetricsServerInterface_Post_CTCSNumberOfPreferredNetworksByBorderRouters();
  }
}

void AWDMetricsClient_TriggerAutoBugCaptures()
{
  v0 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    AWDMetricsClient_TriggerAutoBugCaptures(v0);
  }
}

void AWDMetricsClient_TriggerAutoBugCaptures_internal(const std::string::value_type *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v12 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    AWDMetricsClient_TriggerAutoBugCaptures_internal(v12);
  }

  v14 = *a6;
  v13 = *(a6 + 8);
  v15 = *(a6 + 23);
  *(&v43.__r_.__value_.__s + 23) = 12;
  strcpy(&v43, "Error_str = ");
  if ((v15 & 0x80u) == 0)
  {
    v16 = a6;
  }

  else
  {
    v16 = v14;
  }

  if ((v15 & 0x80u) == 0)
  {
    v17 = v15;
  }

  else
  {
    v17 = v13;
  }

  std::string::append(&v43, v16, v17);
  *(&v42.__r_.__value_.__s + 23) = 8;
  strcpy(&v42, "Wpantund");
  v18 = a1[23];
  if (v18 < 0)
  {
    if (*(a1 + 1) != 6)
    {
LABEL_18:
      std::string::append(&v43, "::NCPState = ");
      v23 = a1[23];
      if (v23 >= 0)
      {
        v24 = a1;
      }

      else
      {
        v24 = *a1;
      }

      if (v23 >= 0)
      {
        v25 = *(a1 + 23);
      }

      else
      {
        v25 = *(a1 + 1);
      }

      std::string::append(&v43, v24, v25);
      goto LABEL_25;
    }

    v19 = *a1;
  }

  else
  {
    v19 = a1;
    if (v18 != 6)
    {
      goto LABEL_18;
    }
  }

  v20 = *v19;
  v21 = *(v19 + 2);
  if (v20 != 1163084353 || v21 != 21582)
  {
    goto LABEL_18;
  }

LABEL_25:
  std::string::assign(&v42, "Threadradiod");
  context = objc_autoreleasePoolPush();
  v26 = objc_alloc_init(SDRDiagnosticReporter);
  if (v26)
  {
    v27 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v50 = "AWDMetricsClient_TriggerAutoBugCaptures_internal";
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "%s : SDRDiagnosticReporter init success", buf, 0xCu);
    }

    if (*(a4 + 23) < 0)
    {
      a4 = *a4;
    }

    v28 = [NSString stringWithUTF8String:a4, context];
    if (*(a5 + 23) < 0)
    {
      a5 = *a5;
    }

    v29 = [NSString stringWithUTF8String:a5];
    if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v30 = &v43;
    }

    else
    {
      v30 = v43.__r_.__value_.__r.__words[0];
    }

    v31 = [NSString stringWithUTF8String:v30];
    if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v32 = &v42;
    }

    else
    {
      v32 = v42.__r_.__value_.__r.__words[0];
    }

    v33 = [NSString stringWithUTF8String:v32];
    v55[0] = kSymptomDiagnosticActionGetNetworkInfo;
    v55[1] = kSymptomDiagnosticActionProbePacketCapture;
    v56[0] = &__kCFBooleanFalse;
    v56[1] = &__kCFBooleanFalse;
    v55[2] = kSymptomDiagnosticActionDiagnosticExtensions;
    v56[2] = &__kCFBooleanFalse;
    v34 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:3];
    v35 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v50 = v29;
      v51 = 2112;
      v52 = v31;
      v53 = 2112;
      v54 = v33;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_INFO, "AWDMetricsClient_TriggerAutoBugCapture : signatureWithDomain API call with args: SubType=%@, SubTypeContext=%@, DetectedProcess=%@.", buf, 0x20u);
    }

    v36 = [v26 signatureWithDomain:@"Thread SW" type:v28 subType:v29 subtypeContext:v31 detectedProcess:v33 triggerThresholdValues:0];
    if (v36)
    {
      if (a7)
      {
        v37 = [[NSString alloc] initWithUTF8String:a7];
        v38 = log_get_logging_obg("com.apple.wpantund.awd", "default");
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v50 = "AWDMetricsClient_TriggerAutoBugCaptures_internal";
          v51 = 2112;
          v52 = v37;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "%s : crashFileName=%@.", buf, 0x16u);
        }

        v46 = v37;
        v47[0] = kSymptomDiagnosticKeyPayloadPath;
        v39 = [NSArray arrayWithObjects:&v46 count:1];
        v47[1] = kSymptomDiagnosticKeyPayloadDEParameters;
        v48[0] = v39;
        v48[1] = @"com.apple.DiagnosticExtensions.BluetoothABCDE";
        v40 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:2];
      }

      else
      {
        v44 = kSymptomDiagnosticKeyPayloadDEParameters;
        v45 = @"com.apple.DiagnosticExtensions.BluetoothABCDE";
        v40 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      }

      [v26 snapshotWithSignature:v36 duration:0 events:v40 payload:v34 actions:&__block_literal_global_79 reply:1.0];
    }

    else
    {
      v40 = log_get_logging_obg("com.apple.wpantund.awd", "default");
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        AWDMetricsClient_TriggerAutoBugCaptures_internal(v40);
      }
    }
  }

  else
  {
    v28 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      AWDMetricsClient_TriggerAutoBugCaptures_internal(v28);
    }
  }

  objc_autoreleasePoolPop(context);
  if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_56:
    operator delete(v43.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(v42.__r_.__value_.__l.__data_);
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_56;
  }
}

void sub_100082E00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void ___Z48AWDMetricsClient_TriggerAutoBugCaptures_internalNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES5_S5_S5_S5_S5_Pc_block_invoke(id a1, NSDictionary *a2)
{
  v2 = a2;
  v3 = [(NSDictionary *)v2 objectForKeyedSubscript:kSymptomDiagnosticReplySuccess];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    v5 = [(NSDictionary *)v2 objectForKeyedSubscript:kSymptomDiagnosticReplySessionID];
    v6 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 136315394;
      v9 = "AWDMetricsClient_TriggerAutoBugCaptures_internal_block_invoke";
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s : SDR accepted snapshotWithSignature. SessionID=%@", &v8, 0x16u);
    }
  }

  else
  {
    v5 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = [(NSDictionary *)v2 objectForKeyedSubscript:kSymptomDiagnosticReplyReason];
      ___Z48AWDMetricsClient_TriggerAutoBugCaptures_internalNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEES5_S5_S5_S5_S5_Pc_block_invoke_cold_1(v7, &v8, v5);
    }
  }
}

void AWDMetricsClient_TriggerAutoBugCapture()
{
  v0 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    AWDMetricsClient_TriggerAutoBugCapture(v0);
  }
}

void AWDMetricsClient_Initialize(void)
{
  AWDMetricsHandlers_handle_restore_stabilityData();
  AWDMetricsHandlers_handle_restore_daemon_reset();

  host_crash_dump_collection();
}

void _GLOBAL__sub_I_AWDMetricsClient_mm()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

id CoreBTState()
{
  v0 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v0)
  {
    if (syslog_is_the_mask_enabled(6) && os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      *v2 = 0;
      _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "[CoreBT]startCoreBTStateHandler: Starting CoreBT state Handler", v2, 2u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  [CoreBT::cbController setBluetoothStateChangedHandler:&__block_literal_global_3];
  return [CoreBT::cbController activateWithCompletion:&__block_literal_global_7_0];
}

void CoreBTtriggerFLR()
{
  v0 = objc_alloc_init(NSMutableDictionary);
  [v0 setObject:@"coredump" forKeyedSubscript:@"iStr"];
  [CoreBT::cbController diagnosticControl:v0 completion:&__block_literal_global_15];
}

BOOL getCoreBTState()
{
  v0 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v0)
  {
    if (syslog_is_the_mask_enabled(6))
    {
      v1 = v0;
      if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
      {
        v2 = [CoreBT::cbController bluetoothState];
        if (v2 > 0xA)
        {
          v3 = "?";
        }

        else
        {
          v3 = off_1004C1B98[v2];
        }

        v5 = 136315394;
        v6 = "getCoreBTState";
        v7 = 2080;
        v8 = v3;
        _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "%s: Current bluetooth state: %s", &v5, 0x16u);
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    [PowerEventHandler_Rcp init:];
  }

  return [CoreBT::cbController bluetoothState] == 5 || objc_msgSend(CoreBT::cbController, "bluetoothState") == 10;
}

void _GLOBAL__sub_I_CoreBTStateHandlerRcp_mm()
{
  v0 = objc_autoreleasePoolPush();
  CoreBT::cbController = objc_alloc_init(CBController);

  objc_autoreleasePoolPop(v0);
}

BOOL ot::Posix::Configuration::SetRegion(ot::Posix::Configuration *this, int a2)
{
  v2 = a2;
  v30[0] = 0;
  if (ot::Posix::Configuration::GetDomain(this, a2, v30) && ot::Posix::Configuration::GetDomain(this, 22359, v30))
  {
    v4 = 1;
  }

  else if (ot::Posix::ConfigFile::HasKey(this + 3, "supported_channel_mask") && (ChannelMask = ot::Posix::Configuration::GetChannelMask(this, "supported_channel_mask", v30, this + 13), ChannelMask) || ot::Posix::ConfigFile::HasKey(this + 3, "supported_channel_mask") && (ChannelMask = ot::Posix::Configuration::GetChannelMask(this, "preferred_channel_mask", v30, this + 14), ChannelMask))
  {
    v4 = ChannelMask;
    v6 = otThreadErrorToString(ChannelMask);
    ot::Posix::Logger<ot::Posix::Configuration>::LogCrit2("Failed to update channel mask: %s", v7, v8, v9, v10, v11, v12, v13, v6);
  }

  else
  {
    updated = ot::Posix::Configuration::UpdateTargetPower(this, v30);
    if (updated)
    {
      v4 = updated;
    }

    else
    {
      v4 = ot::Posix::Configuration::UpdateCalibratedPower(this);
      if (!v4)
      {
        *(this + 24) = v2;
        ot::Posix::Logger<ot::Posix::Configuration>::LogInfo2("Successfully set region %c%c", v15, v16, v17, v18, v19, v20, v21, SHIBYTE(v2));
        return v4;
      }
    }
  }

  otThreadErrorToString(v4);
  ot::Posix::Logger<ot::Posix::Configuration>::LogCrit2("Failed to set region %c%c: %s", v22, v23, v24, v25, v26, v27, v28, SHIBYTE(v2));
  return v4;
}

uint64_t ot::Posix::Configuration::GetDomain(const char **this, int a2, ot::Power::Domain *a3)
{
  v19 = 0;
  __lasts = 0;
  if (ot::Posix::ConfigFile::Get(this + 3, "region_domain_mapping", &v19, __str, 512))
  {
LABEL_2:
    v6 = 23;
LABEL_12:
    v9 = otThreadErrorToString(v6);
    ot::Posix::Logger<ot::Posix::Configuration>::LogCrit2("Failed to get power domain: %s", v10, v11, v12, v13, v14, v15, v16, v9);
    return v6;
  }

  while (1)
  {
    if (strtok_r(__str, ",", &__lasts))
    {
      v7 = strtok_r(0, ",", &__lasts);
      if (v7)
      {
        break;
      }
    }

LABEL_4:
    if (ot::Posix::ConfigFile::Get(this + 3, "region_domain_mapping", &v19, __str, 512))
    {
      goto LABEL_2;
    }
  }

  v8 = v7;
  while (strlen(v8) != 2 || a2 != bswap32(*v8) >> 16)
  {
    v8 = strtok_r(0, ",", &__lasts);
    if (!v8)
    {
      goto LABEL_4;
    }
  }

  v6 = ot::Power::Domain::Set(a3, __str);
  if (v6)
  {
    goto LABEL_12;
  }

  return v6;
}

uint64_t ot::Posix::Configuration::UpdateChannelMasks(ot::Posix::Configuration *this, const ot::Power::Domain *a2)
{
  if (ot::Posix::ConfigFile::HasKey(this + 3, "supported_channel_mask") && (result = ot::Posix::Configuration::GetChannelMask(this, "supported_channel_mask", a2, this + 13), result) || (result = ot::Posix::ConfigFile::HasKey(this + 3, "supported_channel_mask"), result) && (result = ot::Posix::Configuration::GetChannelMask(this, "preferred_channel_mask", a2, this + 14), result))
  {
    v5 = result;
    v6 = otThreadErrorToString(result);
    ot::Posix::Logger<ot::Posix::Configuration>::LogCrit2("Failed to update channel mask: %s", v7, v8, v9, v10, v11, v12, v13, v6);
    return v5;
  }

  return result;
}

BOOL ot::Posix::Configuration::UpdateTargetPower(const char **this, const ot::Power::Domain *a2)
{
  v27 = 0;
  result = ot::Posix::ConfigFile::HasKey(this + 3, "target_power");
  if (result)
  {
    if (ot::Posix::Configuration::GetNextTargetPower(this, a2, &v27, &v24))
    {
      return 0;
    }

    else
    {
      while (1)
      {
        ot::Power::TargetPower::ToString(&v24, v28);
        ot::Posix::Logger<ot::Posix::Configuration>::LogInfo2("Update target power: %s\r\n", v6, v7, v8, v9, v10, v11, v12, &v29);
        v13 = v24;
        if (v24 <= v25)
        {
          break;
        }

LABEL_5:
        NextTargetPower = ot::Posix::Configuration::GetNextTargetPower(this, a2, &v27, &v24);
        result = 0;
        if (NextTargetPower)
        {
          return result;
        }
      }

      while (1)
      {
        v14 = otPlatRadioSetChannelTargetPower(gInstance, v13, v26);
        if (v14)
        {
          break;
        }

        if (v25 < ++v13)
        {
          goto LABEL_5;
        }
      }

      v15 = v14;
      v16 = otThreadErrorToString(v14);
      ot::Posix::Logger<ot::Posix::Configuration>::LogCrit2("Failed to update target power: %s", v17, v18, v19, v20, v21, v22, v23, v16);
      return v15;
    }
  }

  return result;
}

BOOL ot::Posix::Configuration::UpdateCalibratedPower(const char **this)
{
  v23 = 0;
  if (ot::Posix::ConfigFile::Get(this, "calibrated_power", &v23, v31, 512))
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  result = ot::Posix::ConfigFile::HasKey(&this[v2], "calibrated_power");
  if (result)
  {
    v4 = otPlatRadioClearCalibratedPowers();
    if (v4)
    {
LABEL_6:
      v5 = v4;
      v6 = otThreadErrorToString(v4);
      ot::Posix::Logger<ot::Posix::Configuration>::LogCrit2("Failed to update calibrated power table: %s", v7, v8, v9, v10, v11, v12, v13, v6);
      return v5;
    }

    v23 = 0;
    if (!ot::Posix::ConfigFile::Get(&this[v2], "calibrated_power", &v23, v31, 512))
    {
      while (1)
      {
        v4 = ot::Power::CalibratedPower::FromString(&v26, v31);
        if (v4)
        {
          goto LABEL_6;
        }

        ot::Power::CalibratedPower::ToString(&v26, v24);
        ot::Posix::Logger<ot::Posix::Configuration>::LogInfo2("Update calibrated power: %s\r\n", v15, v16, v17, v18, v19, v20, v21, &v25);
        v22 = v26;
        if (v26 <= v27)
        {
          do
          {
            v4 = otPlatRadioAddCalibratedPower(gInstance, v22, v28, v29, v30);
            if (v4)
            {
              goto LABEL_6;
            }
          }

          while (v27 >= ++v22);
        }

        v14 = ot::Posix::ConfigFile::Get(&this[v2], "calibrated_power", &v23, v31, 512);
        result = 0;
        if (v14)
        {
          return result;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t ot::Posix::Configuration::GetChannelMask(const char **this, char *a2, const ot::Power::Domain *a3, unsigned int *a4)
{
  __lasts = 0;
  *v13 = 0;
  if (ot::Posix::ConfigFile::Get(this + 3, a2, &v13[4], __str, 512))
  {
    return 23;
  }

  while (1)
  {
    v9 = strtok_r(__str, ",", &__lasts);
    if (v9)
    {
      if (!strcmp(a3, v9))
      {
        v10 = strtok_r(0, ",", &__lasts);
        if (v10)
        {
          break;
        }
      }
    }

    if (ot::Posix::ConfigFile::Get(this + 3, a2, &v13[4], __str, 512))
    {
      return 23;
    }
  }

  result = ot::Utils::CmdLineParser::ParseAsUint32(v10, v13, v11);
  if (!result)
  {
    *a4 = *v13;
  }

  return result;
}

uint64_t ot::Posix::Configuration::GetNextTargetPower(const char **this, const ot::Power::Domain *a2, int *a3, ot::Power::TargetPower *a4)
{
  __lasts = 0;
  if (ot::Posix::ConfigFile::Get(this + 3, "target_power", a3, __str, 512))
  {
    return 23;
  }

  while (1)
  {
    v9 = strtok_r(__str, ",", &__lasts);
    if (v9)
    {
      if (!strcmp(a2, v9))
      {
        break;
      }
    }

    if (ot::Posix::ConfigFile::Get(this + 3, "target_power", a3, __str, 512))
    {
      return 23;
    }
  }

  result = ot::Power::TargetPower::FromString(a4, __lasts);
  if (result)
  {
    v10 = result;
    v11 = otThreadErrorToString(result);
    ot::Posix::Logger<ot::Posix::Configuration>::LogCrit2("Failed to read target power: %s", v12, v13, v14, v15, v16, v17, v18, v11);
    return v10;
  }

  return result;
}

BOOL ot::Posix::Configuration::IsValid(const char **this)
{
  result = ot::Posix::ConfigFile::DoesExist(this + 3);
  if (result)
  {
    if (ot::Posix::ConfigFile::HasKey(this + 3, "supported_channel_mask") || ot::Posix::ConfigFile::HasKey(this + 3, "preferred_channel_mask") || ot::Posix::ConfigFile::HasKey(this + 3, "region_domain_mapping") || ot::Posix::ConfigFile::HasKey(this + 3, "calibrated_power"))
    {
      return 1;
    }

    else
    {

      return ot::Posix::ConfigFile::HasKey(this + 3, "target_power");
    }
  }

  return result;
}

double AWDMetricsHandlers_init_database(void)
{
  unk_10052ADFC = 0u;
  xmmword_10052ADE0 = 0u;
  unk_10052ADF0 = 0u;
  xmmword_10052ADD0 = 0u;
  bzero(&dword_10052AE18, 0x268uLL);
  qword_10052AE10 = 0x7FFFFFFFFFFFFFFFLL;
  result = 0.0;
  xmmword_10052B084 = 0u;
  qword_10052B098 = 0x7FFFFFFFFFFFFFFFLL;
  xmmword_10052B0A0 = 0u;
  *&dword_10052B0B0 = 0u;
  LODWORD(stability_settings) = 0;
  dword_10052B094 = 0;
  LODWORD(xmmword_1004E5768) = 0;
  xmmword_10052B0C0 = 0u;
  *&dword_10052B0D0 = 0u;
  xmmword_10052B0E0 = 0u;
  *&dword_10052B0F0 = 0u;
  xmmword_10052B100 = 0u;
  *&dword_10052B110 = 0u;
  return result;
}

double AWDMetricsHandlers_handle_reset_channelSelectionData(void)
{
  result = 0.0;
  unk_10052ADFC = 0u;
  xmmword_10052ADE0 = 0u;
  unk_10052ADF0 = 0u;
  xmmword_10052ADD0 = 0u;
  return result;
}

double AWDMetricsHandlers_handle_reset_stabilityData(void)
{
  xmmword_10052B084 = 0uLL;
  qword_10052B098 = 0x7FFFFFFFFFFFFFFFLL;
  result = 0.0;
  xmmword_10052B0A0 = 0u;
  *&dword_10052B0B0 = 0u;
  LODWORD(stability_settings) = 0;
  dword_10052B094 = 0;
  LODWORD(xmmword_1004E5768) = 0;
  return result;
}

double AWDMetricsHandlers_handle_reset_powerData(void)
{
  result = 0.0;
  xmmword_10052B100 = 0u;
  *&dword_10052B110 = 0u;
  xmmword_10052B0E0 = 0u;
  *&dword_10052B0F0 = 0u;
  xmmword_10052B0C0 = 0u;
  *&dword_10052B0D0 = 0u;
  return result;
}

uint64_t AWDMetricsHandlers_utility_get_N_MSD(int a1, unsigned int a2)
{
  v3 = a2;
  if (a2)
  {
    v4 = (log10(a2) + 1.0);
  }

  else
  {
    v4 = 1;
  }

  v5 = __OFSUB__(v4, a1);
  v6 = v4 - a1;
  if ((v6 < 0) ^ v5 | (v6 == 0))
  {
    v6 = 0;
  }

  v7 = __exp10(v6);
  return (v7 * (v3 / v7));
}

uint64_t AWDMetricsHandlers_handle_getprop_header(void *a1)
{
  v1 = a1;
  v2 = [NSString alloc];
  if (byte_1004E56FF >= 0)
  {
    v3 = &m_daemonVersionString;
  }

  else
  {
    v3 = m_daemonVersionString;
  }

  v4 = [v2 initWithUTF8String:v3];
  [v1 setDaemonVersion:v4];

  v5 = [NSString alloc];
  if (byte_1004E5717 >= 0)
  {
    v6 = &m_vendorVersionString;
  }

  else
  {
    v6 = m_vendorVersionString;
  }

  v7 = [v5 initWithUTF8String:v6];
  [v1 setVendorVersion:v7];

  return 0;
}

void sub_1000846BC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t AWDMetricsHandlers_handle_getprop_daemonversion(any a1)
{
  any_to_string(a1.var0, &v2);
  if (byte_1004E56FF < 0)
  {
    operator delete(m_daemonVersionString);
  }

  m_daemonVersionString = v2;
  unk_1004E56F8 = v3;
  return 0;
}

uint64_t AWDMetricsHandlers_handle_getprop_vendorversion(any a1)
{
  any_to_string(a1.var0, &v2);
  if (byte_1004E5717 < 0)
  {
    operator delete(m_vendorVersionString);
  }

  m_vendorVersionString = v2;
  unk_1004E5710 = v3;
  return 0;
}

uint64_t AWDMetricsHandlers_handle_update_channelSelectionData(any a1)
{
  result = any_to_int(a1.var0);
  ++*(&_MergedGlobals_6 + (result - 11) + 2);
  return result;
}

uint64_t AWDMetricsHandlers_handle_get_joinCountersData(void *a1)
{
  v1 = a1;
  [v1 setJoinAttempts:dword_10052AE18];
  *&v2 = (dword_10052AE1C / dword_10052AE18) * 100.0;
  [v1 setJoinSuccessRate:v2];
  [v1 addJoinerLatencyHistogram:dword_10052AE20];
  [v1 addJoinerFailLatencyHistogram:dword_10052AE84];
  [v1 addJoinerLatencyHistogram:dword_10052AE24];
  [v1 addJoinerFailLatencyHistogram:dword_10052AE88];
  [v1 addJoinerLatencyHistogram:dword_10052AE28];
  [v1 addJoinerFailLatencyHistogram:dword_10052AE8C];
  [v1 addJoinerLatencyHistogram:dword_10052AE2C];
  [v1 addJoinerFailLatencyHistogram:dword_10052AE90];
  [v1 addJoinerLatencyHistogram:dword_10052AE30];
  [v1 addJoinerFailLatencyHistogram:dword_10052AE94];
  [v1 addJoinerLatencyHistogram:dword_10052AE34];
  [v1 addJoinerFailLatencyHistogram:dword_10052AE98];
  [v1 addJoinerLatencyHistogram:dword_10052AE38];
  [v1 addJoinerFailLatencyHistogram:dword_10052AE9C];
  [v1 addJoinerLatencyHistogram:dword_10052AE3C];
  [v1 addJoinerFailLatencyHistogram:dword_10052AEA0];
  [v1 addJoinerLatencyHistogram:dword_10052AE40];
  [v1 addJoinerFailLatencyHistogram:dword_10052AEA4];
  [v1 addJoinerLatencyHistogram:dword_10052AE44];
  [v1 addJoinerFailLatencyHistogram:dword_10052AEA8];
  [v1 addJoinerLatencyHistogram:dword_10052AE48];
  [v1 addJoinerFailLatencyHistogram:dword_10052AEAC];
  [v1 addJoinerLatencyHistogram:dword_10052AE4C];
  [v1 addJoinerFailLatencyHistogram:dword_10052AEB0];
  [v1 addJoinerLatencyHistogram:dword_10052AE50];
  [v1 addJoinerFailLatencyHistogram:dword_10052AEB4];
  [v1 addJoinerLatencyHistogram:dword_10052AE54];
  [v1 addJoinerFailLatencyHistogram:dword_10052AEB8];
  [v1 addJoinerLatencyHistogram:dword_10052AE58];
  [v1 addJoinerFailLatencyHistogram:dword_10052AEBC];
  [v1 addJoinerLatencyHistogram:dword_10052AE5C];
  [v1 addJoinerFailLatencyHistogram:dword_10052AEC0];
  [v1 addJoinerLatencyHistogram:dword_10052AE60];
  [v1 addJoinerFailLatencyHistogram:dword_10052AEC4];
  [v1 addJoinerLatencyHistogram:dword_10052AE64];
  [v1 addJoinerFailLatencyHistogram:dword_10052AEC8];
  [v1 addJoinerLatencyHistogram:dword_10052AE68];
  [v1 addJoinerFailLatencyHistogram:dword_10052AECC];
  [v1 addJoinerLatencyHistogram:dword_10052AE6C];
  [v1 addJoinerFailLatencyHistogram:dword_10052AED0];
  [v1 addJoinerLatencyHistogram:dword_10052AE70];
  [v1 addJoinerFailLatencyHistogram:dword_10052AED4];
  [v1 addJoinerLatencyHistogram:dword_10052AE74];
  [v1 addJoinerFailLatencyHistogram:dword_10052AED8];
  [v1 addJoinerLatencyHistogram:dword_10052AE78];
  [v1 addJoinerFailLatencyHistogram:dword_10052AEDC];
  [v1 addJoinerLatencyHistogram:dword_10052AE7C];
  [v1 addJoinerFailLatencyHistogram:dword_10052AEE0];
  [v1 addJoinerLatencyHistogram:dword_10052AE80];
  [v1 addJoinerFailLatencyHistogram:dword_10052AEE4];
  v3 = &dword_10052AFB4;
  v4 = 51;
  do
  {
    [v1 addAttachLatencyHistogram:*(v3 - 51)];
    [v1 addAttachFailLatencyHistogram:*v3++];
    --v4;
  }

  while (v4);

  return 0;
}

__darwin_time_t AWDMetricsHandlers_joinattempt_start()
{
  result = time_ms();
  qword_10052AE10 = result;
  return result;
}

void AWDMetricsHandlers_joinattempt_status(int a1, int a2)
{
  v4 = time_ms();
  v5 = (v4 - qword_10052AE10) & ~((v4 - qword_10052AE10) >> 63);
  ++dword_10052AE18;
  v6 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = "FALSE";
    v15 = 136316162;
    v16 = "AWDMetricsHandlers_joinattempt_status";
    v17 = 1024;
    if (a1)
    {
      v8 = "TRUE";
    }

    else
    {
      v8 = "FALSE";
    }

    v18 = dword_10052AE18;
    v19 = 2080;
    if (a2)
    {
      v7 = "TRUE";
    }

    v20 = v8;
    v21 = 2080;
    v22 = v7;
    v23 = 2048;
    v24 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "AWDMetrics : Inside %s. Attempts=%d, is_joiner=%s, is_success=%s, ElapsedTime = %lldms. ", &v15, 0x30u);
  }

  if (a2)
  {
    ++dword_10052AE1C;
    v9 = v5 / 0x1388;
    if ((v5 / 0x1388) >= 24)
    {
      LODWORD(v9) = 24;
    }

    v10 = &_MergedGlobals_6 + 4 * v9 + 88;
    v11 = v5 / 0x64;
    if ((v5 / 0x64) >= 50)
    {
      LODWORD(v11) = 50;
    }

    v12 = &_MergedGlobals_6 + 4 * v11 + 288;
  }

  else
  {
    v13 = v5 / 0x1388;
    if ((v5 / 0x1388) >= 24)
    {
      LODWORD(v13) = 24;
    }

    v10 = &_MergedGlobals_6 + 4 * v13 + 188;
    v14 = v5 / 0x64;
    if ((v5 / 0x64) >= 50)
    {
      LODWORD(v14) = 50;
    }

    v12 = &_MergedGlobals_6 + 4 * v14 + 492;
  }

  if ((a1 & 1) == 0)
  {
    v10 = v12;
  }

  ++*v10;
}

uint64_t AWDMetricsHandlers_handle_getprop_joinerRssi(void *a1, void *a2)
{
  v3 = a1;
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  v4 = a2;
  v32 = v4;
  xarray = v3;
  if (xpc_get_type(v3) == &_xpc_type_array)
  {
    count = xpc_array_get_count(xarray);
    v8 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
      *(buf.__r_.__value_.__r.__words + 4) = count;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "AWDMetrics : JoinerRSSIHistogram array with size %ld.", &buf, 0xCu);
    }

    if (count)
    {
      v9 = 0;
      v6 = 0;
      do
      {
        v10 = xpc_array_get_dictionary(xarray, v9);

        v6 = v10;
        string = xpc_dictionary_get_string(v10, "key");
        v12 = strlen(string);
        if (v12 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v13 = v12;
        if (v12 >= 0x17)
        {
          operator new();
        }

        *(&buf.__r_.__value_.__s + 23) = v12;
        if (v12)
        {
          memmove(&buf, string, v12);
        }

        buf.__r_.__value_.__s.__data_[v13] = 0;
        uint64 = xpc_dictionary_get_uint64(v6, "value");
        v15 = std::string::find(&buf, 91, 0);
        v16 = std::string::find(&buf, 93, 0);
        v17 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
        size = buf.__r_.__value_.__l.__size_;
        v18 = buf.__r_.__value_.__r.__words[0];
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_buf = &buf;
        }

        else
        {
          p_buf = buf.__r_.__value_.__r.__words[0];
        }

        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v21 = buf.__r_.__value_.__l.__size_;
        }

        v22 = (p_buf + v21);
        if (v21 >= 18)
        {
          v23 = p_buf;
          do
          {
            v24 = memchr(v23, 69, v21 - 17);
            if (!v24)
            {
              break;
            }

            if (v24->__r_.__value_.__r.__words[0] == 0x6369766544646E45 && v24->__r_.__value_.__l.__size_ == 0x756F436E696F4A65 && LOWORD(v24->__r_.__value_.__r.__words[2]) == 29806)
            {
              goto LABEL_34;
            }

            v23 = (&v24->__r_.__value_.__l.__data_ + 1);
            v21 = v22 - v23;
          }

          while (v22 - v23 > 17);
        }

        v24 = v22;
LABEL_34:
        if (v24 != v22 && v24 == p_buf && v15 != -1 && v16 != -1)
        {
          if ((v17 & 0x80000000) != 0)
          {
            if (size <= v15)
            {
LABEL_64:
              std::string::__throw_out_of_range[abi:ne200100]();
            }
          }

          else
          {
            if (v15 >= v17)
            {
              goto LABEL_64;
            }

            v18 = &buf;
            size = v17;
          }

          if (size - (v15 + 1) >= v16 - 1)
          {
            v27 = v16 - 1;
          }

          else
          {
            v27 = size - (v15 + 1);
          }

          if (v27 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v27 >= 0x17)
          {
            operator new();
          }

          *(&__dst.__r_.__value_.__s + 23) = v27;
          if (v27)
          {
            memmove(&__dst, &v18->__r_.__value_.__l.__data_ + v15 + 1, v27);
          }

          __dst.__r_.__value_.__s.__data_[v27] = 0;
          v28 = std::stoi(&__dst, 0, 10);
          if ((v28 & 0xFEu) <= 0xD)
          {
            *(&v36 + v28) = uint64;
          }

          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          LOBYTE(v17) = *(&buf.__r_.__value_.__s + 23);
        }

        if ((v17 & 0x80) != 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        ++v9;
        v4 = v32;
      }

      while (v9 != count);
      v29 = v36;
    }

    else
    {
      v29 = 0;
      v6 = 0;
    }

    [v4 addAccessoryNodesCountHistogram:{v29, count}];
    [v4 addAccessoryNodesCountHistogram:DWORD1(v36)];
    [v4 addAccessoryNodesCountHistogram:DWORD2(v36)];
    [v4 addAccessoryNodesCountHistogram:HIDWORD(v36)];
    [v4 addAccessoryNodesCountHistogram:v37];
    [v4 addAccessoryNodesCountHistogram:DWORD1(v37)];
    [v4 addAccessoryNodesCountHistogram:DWORD2(v37)];
    [v4 addAccessoryNodesCountHistogram:HIDWORD(v37)];
    [v4 addAccessoryNodesCountHistogram:v38];
    [v4 addAccessoryNodesCountHistogram:DWORD1(v38)];
    [v4 addAccessoryNodesCountHistogram:DWORD2(v38)];
    [v4 addAccessoryNodesCountHistogram:HIDWORD(v38)];
    [v4 addAccessoryNodesCountHistogram:v39];
    [v4 addAccessoryNodesCountHistogram:HIDWORD(v39)];
    v7 = 0;
  }

  else
  {
    v5 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      AWDMetricsHandlers_handle_getprop_joinerRssi();
    }

    v6 = 0;
    v7 = 1;
  }

  return v7;
}

size_t AWDMetricsHandlers_handle_getprop_linkLossCounters(void *a1, void *a2)
{
  v3 = a1;
  v25[0] = 0;
  v25[1] = 0;
  v24 = v25;
  v20 = a2;
  if (xpc_get_type(v3) == &_xpc_type_array)
  {
    count = xpc_array_get_count(v3);
    if (!count)
    {
      goto LABEL_45;
    }

    v6 = 0;
    v7 = 0;
    while (1)
    {
      v4 = xpc_array_get_dictionary(v3, v7);

      string = xpc_dictionary_get_string(v4, "key");
      v9 = strlen(string);
      if (v9 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v10 = v9;
      if (v9 >= 0x17)
      {
        operator new();
      }

      v23 = v9;
      if (v9)
      {
        memmove(&__p, string, v9);
      }

      *(&__p + v10) = 0;
      uint64 = xpc_dictionary_get_uint64(v4, "value");
      if (v23 < 0 && v22 == 26)
      {
        v12 = __p;
        if (*__p == 0x736F6C5F6B6E696CLL && *(__p + 1) == 0x6F725F72626E5F73 && *(__p + 2) == 0x756F635F72657475 && *(__p + 12) == 29806)
        {
          [v20 setLinkLossNbrRouterCount:uint64];
        }
      }

      else
      {
        if ((v23 & 0x80000000) == 0)
        {
          goto LABEL_8;
        }

        v12 = __p;
        if (v22 == 25)
        {
          v16 = *__p == 0x736F6C5F6B6E696CLL && *(__p + 1) == 0x68635F72626E5F73;
          v17 = v16 && *(__p + 2) == 0x6E756F635F646C69;
          if (v17 && *(__p + 24) == 116)
          {
            [v20 setLinkLossNbrChildCount:uint64];
          }
        }
      }

      operator delete(v12);
LABEL_8:
      ++v7;
      v6 = v4;
      if (count == v7)
      {
        count = 0;
        goto LABEL_44;
      }
    }
  }

  v4 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    AWDMetricsHandlers_handle_getprop_linkLossCounters();
  }

  count = 1;
LABEL_44:

LABEL_45:
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&v24, v25[0]);

  return count;
}

void sub_100085654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, char *a18)
{
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&a17, a18);

  _Unwind_Resume(a1);
}

uint64_t AWDMetricsHandlers_handle_getprop_nbrRssi(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v216 = v4;
  if (xpc_get_type(v3) != &_xpc_type_array)
  {
    v5 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      AWDMetricsHandlers_handle_getprop_nbrRssi();
    }

    v6 = 0;
    v7 = 1;
    goto LABEL_427;
  }

  count = xpc_array_get_count(v3);
  v8 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = count;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "AWDMetrics : NeighborRSSIHistogram array with size %ld.", &buf, 0xCu);
  }

  if (count)
  {
    v213 = 0;
    v214 = 0;
    v210 = 0;
    v211 = 0;
    v208 = 0;
    v209 = 0;
    v205 = 0;
    v206 = 0;
    v202 = 0;
    v203 = 0;
    v201 = 0;
    v212 = 0;
    v207 = 0;
    v204 = 0;
    v9 = 0;
    v6 = 0;
    while (1)
    {
      v10 = xpc_array_get_dictionary(v3, v9);

      v6 = v10;
      string = xpc_dictionary_get_string(v10, "key");
      v12 = strlen(string);
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v13 = v12;
      if (v12 >= 0x17)
      {
        operator new();
      }

      v219 = v12;
      if (v12)
      {
        memmove(&buf, string, v12);
      }

      *(&buf + v13) = 0;
      uint64 = xpc_dictionary_get_uint64(v6, "value");
      v15 = uint64;
      if ((v219 & 0x80000000) == 0)
      {
        break;
      }

      if (*(&buf + 1) != 20)
      {
        goto LABEL_202;
      }

      if (*buf == 0x6150726574756F52 && *(buf + 8) == 0x6E756F4374656B63 && *(buf + 16) == 1563450228)
      {
LABEL_138:
        v48 = uint64;
        if (uint64)
        {
          v49 = log10(uint64) + 1.0;
          v50 = v49 - 4;
          if (v49 <= 4)
          {
            v50 = 0;
          }

          v51 = v50;
        }

        else
        {
          v51 = 0.0;
        }

        v60 = __exp10(v51);
        HIDWORD(v213) = (v60 * (v48 / v60));
        goto LABEL_230;
      }

      if (*buf == 0x6150726574756F52 && *(buf + 8) == 0x6E756F4374656B63 && *(buf + 16) == 1563515764)
      {
LABEL_142:
        v52 = uint64;
        if (uint64)
        {
          v53 = log10(uint64) + 1.0;
          v54 = v53 - 4;
          if (v53 <= 4)
          {
            v54 = 0;
          }

          v55 = v54;
        }

        else
        {
          v55 = 0.0;
        }

        v65 = __exp10(v55);
        HIDWORD(v211) = (v65 * (v52 / v65));
        goto LABEL_230;
      }

      if (*buf == 0x6150726574756F52 && *(buf + 8) == 0x6E756F4374656B63 && *(buf + 16) == 1563581300)
      {
LABEL_146:
        v56 = uint64;
        if (uint64)
        {
          v57 = log10(uint64) + 1.0;
          v58 = v57 - 4;
          if (v57 <= 4)
          {
            v58 = 0;
          }

          v59 = v58;
        }

        else
        {
          v59 = 0.0;
        }

        v70 = __exp10(v59);
        HIDWORD(v210) = (v70 * (v56 / v70));
        goto LABEL_230;
      }

      if (*buf == 0x6150726574756F52 && *(buf + 8) == 0x6E756F4374656B63 && *(buf + 16) == 1563646836)
      {
LABEL_152:
        v61 = uint64;
        if (uint64)
        {
          v62 = log10(uint64) + 1.0;
          v63 = v62 - 4;
          if (v62 <= 4)
          {
            v63 = 0;
          }

          v64 = v63;
        }

        else
        {
          v64 = 0.0;
        }

        v75 = __exp10(v64);
        HIDWORD(v208) = (v75 * (v61 / v75));
        goto LABEL_230;
      }

      if (*buf == 0x6150726574756F52 && *(buf + 8) == 0x6E756F4374656B63 && *(buf + 16) == 1563712372)
      {
LABEL_158:
        v66 = uint64;
        if (uint64)
        {
          v67 = log10(uint64) + 1.0;
          v68 = v67 - 4;
          if (v67 <= 4)
          {
            v68 = 0;
          }

          v69 = v68;
        }

        else
        {
          v69 = 0.0;
        }

        v76 = __exp10(v69);
        HIDWORD(v206) = (v76 * (v66 / v76));
        goto LABEL_230;
      }

      if (*buf == 0x6150726574756F52 && *(buf + 8) == 0x6E756F4374656B63 && *(buf + 16) == 1563777908)
      {
LABEL_164:
        v71 = uint64;
        if (uint64)
        {
          v72 = log10(uint64) + 1.0;
          v73 = v72 - 4;
          if (v72 <= 4)
          {
            v73 = 0;
          }

          v74 = v73;
        }

        else
        {
          v74 = 0.0;
        }

        v77 = __exp10(v74);
        HIDWORD(v205) = (v77 * (v71 / v77));
        goto LABEL_230;
      }

      if (*buf == 0x6150726574756F52 && *(buf + 8) == 0x6E756F4374656B63 && *(buf + 16) == 1563843444)
      {
LABEL_174:
        v78 = uint64;
        if (uint64)
        {
          v79 = log10(uint64) + 1.0;
          v80 = v79 - 4;
          if (v79 <= 4)
          {
            v80 = 0;
          }

          v81 = v80;
        }

        else
        {
          v81 = 0.0;
        }

        v186 = __exp10(v81);
        HIDWORD(v203) = (v186 * (v78 / v186));
        goto LABEL_230;
      }

      if ((v219 & 0x80) == 0)
      {
        if (v219 != 20)
        {
          goto LABEL_202;
        }

LABEL_122:
        if (buf == 0x6150726574756F52 && *(&buf + 1) == 0x6E756F4374656B63 && v218 == 1563908980)
        {
          goto LABEL_392;
        }

        if (buf == 0x6150726574756F52 && *(&buf + 1) == 0x6E756F4374656B63 && v218 == 1563974516)
        {
          goto LABEL_413;
        }

        goto LABEL_194;
      }

      if (*buf == 0x6150726574756F52 && *(buf + 8) == 0x6E756F4374656B63 && *(buf + 16) == 1563908980)
      {
LABEL_392:
        v178 = uint64;
        if (uint64)
        {
          v179 = log10(uint64) + 1.0;
          v180 = v179 - 4;
          if (v179 <= 4)
          {
            v180 = 0;
          }

          v181 = v180;
        }

        else
        {
          v181 = 0.0;
        }

        v188 = __exp10(v181);
        HIDWORD(v202) = (v188 * (v178 / v188));
        goto LABEL_230;
      }

      p_buf = buf;
      if (*buf == 0x6150726574756F52 && *(buf + 8) == 0x6E756F4374656B63 && *(buf + 16) == 1563974516)
      {
LABEL_413:
        v190 = uint64;
        if (uint64)
        {
          v191 = log10(uint64) + 1.0;
          v192 = v191 - 4;
          if (v191 <= 4)
          {
            v192 = 0;
          }

          v193 = v192;
        }

        else
        {
          v193 = 0.0;
        }

        v198 = __exp10(v193);
        HIDWORD(v201) = (v198 * (v190 / v198));
        goto LABEL_230;
      }

      if (v219 < 0)
      {
        goto LABEL_195;
      }

      if (v219 != 20)
      {
        goto LABEL_202;
      }

LABEL_194:
      p_buf = &buf;
LABEL_195:
      v87 = *p_buf;
      v88 = *(p_buf + 1);
      v89 = *(p_buf + 4);
      if (v87 != 0x6150726574756F52 || v88 != 0x6E756F4374656B63 || v89 != 1564040052)
      {
LABEL_202:
        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "RouterPacketCount[10]"))
        {
          if (v15)
          {
            v92 = log10(v15) + 1.0;
            v93 = v92 - 4;
            if (v92 <= 4)
            {
              v93 = 0;
            }

            v94 = v93;
          }

          else
          {
            v94 = 0.0;
          }

          v101 = __exp10(v94);
          HIDWORD(v214) = (v101 * (v15 / v101));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "RouterPacketCount[11]"))
        {
          if (v15)
          {
            v95 = log10(v15) + 1.0;
            v96 = v95 - 4;
            if (v95 <= 4)
            {
              v96 = 0;
            }

            v97 = v96;
          }

          else
          {
            v97 = 0.0;
          }

          v105 = __exp10(v97);
          HIDWORD(v212) = (v105 * (v15 / v105));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "RouterPacketCount[12]"))
        {
          if (v15)
          {
            v98 = log10(v15) + 1.0;
            v99 = v98 - 4;
            if (v98 <= 4)
            {
              v99 = 0;
            }

            v100 = v99;
          }

          else
          {
            v100 = 0.0;
          }

          v106 = __exp10(v100);
          HIDWORD(v209) = (v106 * (v15 / v106));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "RouterPacketCount[13]"))
        {
          if (v15)
          {
            v102 = log10(v15) + 1.0;
            v103 = v102 - 4;
            if (v102 <= 4)
            {
              v103 = 0;
            }

            v104 = v103;
          }

          else
          {
            v104 = 0.0;
          }

          v107 = __exp10(v104);
          HIDWORD(v207) = (v107 * (v15 / v107));
        }

        goto LABEL_230;
      }

      v194 = uint64;
      if (uint64)
      {
        v195 = log10(uint64) + 1.0;
        v196 = v195 - 4;
        if (v195 <= 4)
        {
          v196 = 0;
        }

        v197 = v196;
      }

      else
      {
        v197 = 0.0;
      }

      v199 = __exp10(v197);
      LODWORD(v201) = (v199 * (v194 / v199));
LABEL_230:
      if (v219 < 0 && *(&buf + 1) == 23)
      {
        if (*buf == 0x6369766544646E45 && *(buf + 8) == 0x4374656B63615065 && *(buf + 15) == 0x5D305B746E756F43)
        {
          if (v15)
          {
            v134 = log10(v15) + 1.0;
            v135 = v134 - 4;
            if (v134 <= 4)
            {
              v135 = 0;
            }

            v136 = v135;
          }

          else
          {
            v136 = 0.0;
          }

          v147 = __exp10(v136);
          LODWORD(v213) = (v147 * (v15 / v147));
          v4 = v216;
          if ((v219 & 0x80000000) == 0)
          {
            goto LABEL_10;
          }

          goto LABEL_9;
        }

        if (*buf == 0x6369766544646E45 && *(buf + 8) == 0x4374656B63615065 && *(buf + 15) == 0x5D315B746E756F43)
        {
          if (v15)
          {
            v140 = log10(v15) + 1.0;
            v141 = v140 - 4;
            if (v140 <= 4)
            {
              v141 = 0;
            }

            v142 = v141;
          }

          else
          {
            v142 = 0.0;
          }

          v155 = __exp10(v142);
          LODWORD(v211) = (v155 * (v15 / v155));
LABEL_349:
          v4 = v216;
          if ((v219 & 0x80000000) == 0)
          {
            goto LABEL_10;
          }

          goto LABEL_9;
        }

        if (*buf == 0x6369766544646E45 && *(buf + 8) == 0x4374656B63615065 && *(buf + 15) == 0x5D325B746E756F43)
        {
          if (v15)
          {
            v144 = log10(v15) + 1.0;
            v145 = v144 - 4;
            if (v144 <= 4)
            {
              v145 = 0;
            }

            v146 = v145;
          }

          else
          {
            v146 = 0.0;
          }

          v159 = __exp10(v146);
          LODWORD(v210) = (v159 * (v15 / v159));
          v4 = v216;
          if ((v219 & 0x80000000) == 0)
          {
            goto LABEL_10;
          }

          goto LABEL_9;
        }

        if (*buf == 0x6369766544646E45 && *(buf + 8) == 0x4374656B63615065 && *(buf + 15) == 0x5D335B746E756F43)
        {
          if (v15)
          {
            v152 = log10(v15) + 1.0;
            v153 = v152 - 4;
            if (v152 <= 4)
            {
              v153 = 0;
            }

            v154 = v153;
          }

          else
          {
            v154 = 0.0;
          }

          v164 = __exp10(v154);
          LODWORD(v208) = (v164 * (v15 / v164));
          v4 = v216;
          if ((v219 & 0x80000000) == 0)
          {
            goto LABEL_10;
          }

          goto LABEL_9;
        }

        if (*buf == 0x6369766544646E45 && *(buf + 8) == 0x4374656B63615065 && *(buf + 15) == 0x5D345B746E756F43)
        {
          if (v15)
          {
            v156 = log10(v15) + 1.0;
            v157 = v156 - 4;
            if (v156 <= 4)
            {
              v157 = 0;
            }

            v158 = v157;
          }

          else
          {
            v158 = 0.0;
          }

          v169 = __exp10(v158);
          LODWORD(v206) = (v169 * (v15 / v169));
          v4 = v216;
          if ((v219 & 0x80000000) == 0)
          {
            goto LABEL_10;
          }

          goto LABEL_9;
        }

        if (*buf == 0x6369766544646E45 && *(buf + 8) == 0x4374656B63615065 && *(buf + 15) == 0x5D355B746E756F43)
        {
          if (v15)
          {
            v161 = log10(v15) + 1.0;
            v162 = v161 - 4;
            if (v161 <= 4)
            {
              v162 = 0;
            }

            v163 = v162;
          }

          else
          {
            v163 = 0.0;
          }

          v173 = __exp10(v163);
          LODWORD(v205) = (v173 * (v15 / v173));
          v4 = v216;
          if ((v219 & 0x80000000) == 0)
          {
            goto LABEL_10;
          }

          goto LABEL_9;
        }

        if (*buf == 0x6369766544646E45 && *(buf + 8) == 0x4374656B63615065 && *(buf + 15) == 0x5D365B746E756F43)
        {
          if (v15)
          {
            v166 = log10(v15) + 1.0;
            v167 = v166 - 4;
            if (v166 <= 4)
            {
              v167 = 0;
            }

            v168 = v167;
          }

          else
          {
            v168 = 0.0;
          }

          v177 = __exp10(v168);
          HIDWORD(v204) = (v177 * (v15 / v177));
          v4 = v216;
          if ((v219 & 0x80000000) == 0)
          {
            goto LABEL_10;
          }

          goto LABEL_9;
        }

        if (*buf == 0x6369766544646E45 && *(buf + 8) == 0x4374656B63615065 && *(buf + 15) == 0x5D375B746E756F43)
        {
          if (v15)
          {
            v170 = log10(v15) + 1.0;
            v171 = v170 - 4;
            if (v170 <= 4)
            {
              v171 = 0;
            }

            v172 = v171;
          }

          else
          {
            v172 = 0.0;
          }

          v185 = __exp10(v172);
          LODWORD(v204) = (v185 * (v15 / v185));
          v4 = v216;
          if ((v219 & 0x80000000) == 0)
          {
            goto LABEL_10;
          }

          goto LABEL_9;
        }

        if (*buf == 0x6369766544646E45 && *(buf + 8) == 0x4374656B63615065 && *(buf + 15) == 0x5D385B746E756F43)
        {
          if (v15)
          {
            v174 = log10(v15) + 1.0;
            v175 = v174 - 4;
            if (v174 <= 4)
            {
              v175 = 0;
            }

            v176 = v175;
          }

          else
          {
            v176 = 0.0;
          }

          v187 = __exp10(v176);
          LODWORD(v203) = (v187 * (v15 / v187));
          v4 = v216;
          if ((v219 & 0x80000000) == 0)
          {
            goto LABEL_10;
          }

          goto LABEL_9;
        }

        if (*buf == 0x6369766544646E45 && *(buf + 8) == 0x4374656B63615065 && *(buf + 15) == 0x5D395B746E756F43)
        {
          if (v15)
          {
            v182 = log10(v15) + 1.0;
            v183 = v182 - 4;
            if (v182 <= 4)
            {
              v183 = 0;
            }

            v184 = v183;
          }

          else
          {
            v184 = 0.0;
          }

          v189 = __exp10(v184);
          LODWORD(v202) = (v189 * (v15 / v189));
          v4 = v216;
          if ((v219 & 0x80000000) == 0)
          {
            goto LABEL_10;
          }

          goto LABEL_9;
        }
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "EndDevicePacketCount[10]"))
      {
        if (v15)
        {
          v128 = log10(v15) + 1.0;
          v129 = v128 - 4;
          if (v128 <= 4)
          {
            v129 = 0;
          }

          v130 = v129;
        }

        else
        {
          v130 = 0.0;
        }

        v143 = __exp10(v130);
        LODWORD(v214) = (v143 * (v15 / v143));
        v4 = v216;
        if ((v219 & 0x80000000) == 0)
        {
          goto LABEL_10;
        }
      }

      else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "EndDevicePacketCount[11]"))
      {
        if (v15)
        {
          v131 = log10(v15) + 1.0;
          v132 = v131 - 4;
          if (v131 <= 4)
          {
            v132 = 0;
          }

          v133 = v132;
        }

        else
        {
          v133 = 0.0;
        }

        v151 = __exp10(v133);
        LODWORD(v212) = (v151 * (v15 / v151));
        v4 = v216;
        if ((v219 & 0x80000000) == 0)
        {
          goto LABEL_10;
        }
      }

      else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "EndDevicePacketCount[12]"))
      {
        if (v15)
        {
          v137 = log10(v15) + 1.0;
          v138 = v137 - 4;
          if (v137 <= 4)
          {
            v138 = 0;
          }

          v139 = v138;
        }

        else
        {
          v139 = 0.0;
        }

        v160 = __exp10(v139);
        LODWORD(v209) = (v160 * (v15 / v160));
        v4 = v216;
        if ((v219 & 0x80000000) == 0)
        {
          goto LABEL_10;
        }
      }

      else
      {
        if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "EndDevicePacketCount[13]"))
        {
          goto LABEL_349;
        }

        if (v15)
        {
          v148 = log10(v15) + 1.0;
          v149 = v148 - 4;
          if (v148 <= 4)
          {
            v149 = 0;
          }

          v150 = v149;
        }

        else
        {
          v150 = 0.0;
        }

        v4 = v216;
        v165 = __exp10(v150);
        LODWORD(v207) = (v165 * (v15 / v165));
        if ((v219 & 0x80000000) == 0)
        {
          goto LABEL_10;
        }
      }

LABEL_9:
      operator delete(buf);
LABEL_10:
      if (count == ++v9)
      {
        goto LABEL_426;
      }
    }

    if (v219 != 20)
    {
      goto LABEL_202;
    }

    if (buf == 0x6150726574756F52 && *(&buf + 1) == 0x6E756F4374656B63 && v218 == 1563450228)
    {
      goto LABEL_138;
    }

    if (buf == 0x6150726574756F52 && *(&buf + 1) == 0x6E756F4374656B63 && v218 == 1563515764)
    {
      goto LABEL_142;
    }

    if (buf == 0x6150726574756F52 && *(&buf + 1) == 0x6E756F4374656B63 && v218 == 1563581300)
    {
      goto LABEL_146;
    }

    if (buf == 0x6150726574756F52 && *(&buf + 1) == 0x6E756F4374656B63 && v218 == 1563646836)
    {
      goto LABEL_152;
    }

    if (buf == 0x6150726574756F52 && *(&buf + 1) == 0x6E756F4374656B63 && v218 == 1563712372)
    {
      goto LABEL_158;
    }

    if (buf == 0x6150726574756F52 && *(&buf + 1) == 0x6E756F4374656B63 && v218 == 1563777908)
    {
      goto LABEL_164;
    }

    if (buf == 0x6150726574756F52 && *(&buf + 1) == 0x6E756F4374656B63 && v218 == 1563843444)
    {
      goto LABEL_174;
    }

    goto LABEL_122;
  }

  v213 = 0;
  v214 = 0;
  v210 = 0;
  v211 = 0;
  v208 = 0;
  v209 = 0;
  v205 = 0;
  v206 = 0;
  v202 = 0;
  v203 = 0;
  v201 = 0;
  v212 = 0;
  v207 = 0;
  v204 = 0;
  v6 = 0;
LABEL_426:
  [v4 addPacketRssiNbrRouterHistogram:HIDWORD(v213)];
  [v4 addPacketRssiNbrAccessoryHistogram:v213];
  [v4 addPacketRssiNbrRouterHistogram:HIDWORD(v211)];
  [v4 addPacketRssiNbrAccessoryHistogram:v211];
  [v4 addPacketRssiNbrRouterHistogram:HIDWORD(v210)];
  [v4 addPacketRssiNbrAccessoryHistogram:v210];
  [v4 addPacketRssiNbrRouterHistogram:HIDWORD(v208)];
  [v4 addPacketRssiNbrAccessoryHistogram:v208];
  [v4 addPacketRssiNbrRouterHistogram:HIDWORD(v206)];
  [v4 addPacketRssiNbrAccessoryHistogram:v206];
  [v4 addPacketRssiNbrRouterHistogram:HIDWORD(v205)];
  [v4 addPacketRssiNbrAccessoryHistogram:v205];
  [v4 addPacketRssiNbrRouterHistogram:HIDWORD(v203)];
  [v4 addPacketRssiNbrAccessoryHistogram:HIDWORD(v204)];
  [v4 addPacketRssiNbrRouterHistogram:HIDWORD(v202)];
  [v4 addPacketRssiNbrAccessoryHistogram:v204];
  [v4 addPacketRssiNbrRouterHistogram:HIDWORD(v201)];
  [v4 addPacketRssiNbrAccessoryHistogram:v203];
  [v4 addPacketRssiNbrRouterHistogram:v201];
  [v4 addPacketRssiNbrAccessoryHistogram:v202];
  [v4 addPacketRssiNbrRouterHistogram:HIDWORD(v214)];
  [v4 addPacketRssiNbrAccessoryHistogram:v214];
  [v4 addPacketRssiNbrRouterHistogram:HIDWORD(v212)];
  [v4 addPacketRssiNbrAccessoryHistogram:v212];
  [v4 addPacketRssiNbrRouterHistogram:HIDWORD(v209)];
  [v4 addPacketRssiNbrAccessoryHistogram:v209];
  [v4 addPacketRssiNbrRouterHistogram:HIDWORD(v207)];
  [v4 addPacketRssiNbrAccessoryHistogram:v207];
  v7 = 0;
LABEL_427:

  return v7;
}

uint64_t AWDMetricsHandlers_handle_getprop_macPktLqi(void *a1, void *a2)
{
  memset(v37, 0, sizeof(v37));
  xarray = a1;
  v34 = a2;
  if (xpc_get_type(xarray) != &_xpc_type_array)
  {
    v3 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      AWDMetricsHandlers_handle_getprop_macPktLqi();
    }

    v4 = 1;
    goto LABEL_64;
  }

  count = xpc_array_get_count(xarray);
  v5 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
    *(buf.__r_.__value_.__r.__words + 4) = count;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "AWDMetrics : LQIHistogram array with size %ld.", &buf, 0xCu);
  }

  if (count)
  {
    v6 = 0;
    v3 = 0;
    while (1)
    {
      v7 = xpc_array_get_dictionary(xarray, v6);

      v3 = v7;
      string = xpc_dictionary_get_string(v7, "key");
      v9 = strlen(string);
      if (v9 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v10 = v9;
      if (v9 >= 0x17)
      {
        operator new();
      }

      *(&buf.__r_.__value_.__s + 23) = v9;
      if (v9)
      {
        memmove(&buf, string, v9);
      }

      buf.__r_.__value_.__s.__data_[v10] = 0;
      uint64 = xpc_dictionary_get_uint64(v3, "value");
      v12 = std::string::find(&buf, 91, 0);
      v13 = std::string::find(&buf, 93, 0);
      v14 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
      size = buf.__r_.__value_.__l.__size_;
      v16 = buf.__r_.__value_.__r.__words[0];
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf.__r_.__value_.__r.__words[0];
      }

      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v18 = buf.__r_.__value_.__l.__size_;
      }

      v19 = (p_buf + v18);
      if (v18 >= 13)
      {
        v20 = p_buf;
        do
        {
          v21 = memchr(v20, 82, v18 - 12);
          if (!v21)
          {
            break;
          }

          if (v21->__r_.__value_.__r.__words[0] == 0x74656B6361507852 && *(v21->__r_.__value_.__r.__words + 5) == 0x746E756F4374656BLL)
          {
            goto LABEL_31;
          }

          v20 = (&v21->__r_.__value_.__l.__data_ + 1);
          v18 = v19 - v20;
        }

        while (v19 - v20 > 12);
      }

      v21 = v19;
LABEL_31:
      if (v21 == v19 || v21 != p_buf || v12 == -1 || v13 == -1)
      {
        goto LABEL_51;
      }

      if ((v14 & 0x80000000) != 0)
      {
        if (size <= v12)
        {
LABEL_67:
          std::string::__throw_out_of_range[abi:ne200100]();
        }
      }

      else
      {
        if (v12 >= v14)
        {
          goto LABEL_67;
        }

        v16 = &buf;
        size = v14;
      }

      if (size - (v12 + 1) >= v13 - 1)
      {
        v23 = v13 - 1;
      }

      else
      {
        v23 = size - (v12 + 1);
      }

      if (v23 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v23 >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = v23;
      if (v23)
      {
        memmove(&__dst, &v16->__r_.__value_.__l.__data_ + v12 + 1, v23);
      }

      __dst.__r_.__value_.__s.__data_[v23] = 0;
      v24 = std::stoi(&__dst, 0, 10);
      if ((v24 & 0xC0) == 0)
      {
        break;
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_59;
      }

LABEL_50:
      LOBYTE(v14) = *(&buf.__r_.__value_.__s + 23);
LABEL_51:
      if ((v14 & 0x80) != 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      if (++v6 == count)
      {
        goto LABEL_61;
      }
    }

    v25 = v24;
    if (uint64)
    {
      v26 = log10(uint64) + 1.0;
      v27 = v26 - 4;
      if (v26 <= 4)
      {
        v27 = 0;
      }

      v28 = v27;
    }

    else
    {
      v28 = 0.0;
    }

    v29 = __exp10(v28);
    *(v37 + (v25 & 0x3F)) = (v29 * (uint64 / v29));
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_50;
    }

LABEL_59:
    operator delete(__dst.__r_.__value_.__l.__data_);
    goto LABEL_50;
  }

  v3 = 0;
LABEL_61:
  for (i = 0; i != 256; i += 4)
  {
    [v34 addPacketLqiHistogram:{*(v37 + i), count}];
  }

  v4 = 0;
LABEL_64:

  return v4;
}

uint64_t AWDMetricsHandlers_handle_getprop_macPktSize(void *a1, void *a2)
{
  v3 = a1;
  v297 = 0;
  v295 = 0u;
  v296 = 0u;
  v293 = 0u;
  v294 = 0u;
  v291 = 0u;
  v292 = 0u;
  v290 = 0;
  v288 = 0u;
  v289 = 0u;
  v286 = 0u;
  v287 = 0u;
  v284 = 0u;
  v285 = 0u;
  v4 = a2;
  if (xpc_get_type(v3) != &_xpc_type_array)
  {
    v5 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      AWDMetricsHandlers_handle_getprop_macPktSize();
    }

    v6 = 1;
    goto LABEL_568;
  }

  count = xpc_array_get_count(v3);
  v8 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    LODWORD(__p) = 134217984;
    *(&__p + 4) = count;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "AWDMetrics : MAC-Packet-Size-Histogram array with size %ld.", &__p, 0xCu);
  }

  if (count)
  {
    v9 = 0;
    v5 = 0;
    while (1)
    {
      v10 = xpc_array_get_dictionary(v3, v9);

      v5 = v10;
      string = xpc_dictionary_get_string(v10, "key");
      v12 = strlen(string);
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v13 = v12;
      if (v12 >= 0x17)
      {
        operator new();
      }

      v283 = v12;
      if (v12)
      {
        memmove(&__p, string, v12);
      }

      *(&__p + v13) = 0;
      uint64 = xpc_dictionary_get_uint64(v5, "value");
      v15 = uint64;
      if ((v283 & 0x80000000) == 0)
      {
        break;
      }

      if (*(&__p + 1) != 16)
      {
        goto LABEL_144;
      }

      if (*__p == 0x74656B6361507854 && *(__p + 8) == 0x5D305B746E756F43)
      {
LABEL_89:
        v32 = uint64;
        if (uint64)
        {
          v33 = log10(uint64) + 1.0;
          v34 = v33 - 4;
          if (v33 <= 4)
          {
            v34 = 0;
          }

          v35 = v34;
        }

        else
        {
          v35 = 0.0;
        }

        v44 = __exp10(v35);
        LODWORD(v291) = (v44 * (v32 / v44));
        goto LABEL_276;
      }

      if (*__p == 0x74656B6361507854 && *(__p + 8) == 0x5D315B746E756F43)
      {
LABEL_93:
        v36 = uint64;
        if (uint64)
        {
          v37 = log10(uint64) + 1.0;
          v38 = v37 - 4;
          if (v37 <= 4)
          {
            v38 = 0;
          }

          v39 = v38;
        }

        else
        {
          v39 = 0.0;
        }

        v49 = __exp10(v39);
        DWORD1(v291) = (v49 * (v36 / v49));
        goto LABEL_276;
      }

      if (*__p == 0x74656B6361507854 && *(__p + 8) == 0x5D325B746E756F43)
      {
LABEL_97:
        v40 = uint64;
        if (uint64)
        {
          v41 = log10(uint64) + 1.0;
          v42 = v41 - 4;
          if (v41 <= 4)
          {
            v42 = 0;
          }

          v43 = v42;
        }

        else
        {
          v43 = 0.0;
        }

        v54 = __exp10(v43);
        DWORD2(v291) = (v54 * (v40 / v54));
        goto LABEL_276;
      }

      if (*__p == 0x74656B6361507854 && *(__p + 8) == 0x5D335B746E756F43)
      {
LABEL_103:
        v45 = uint64;
        if (uint64)
        {
          v46 = log10(uint64) + 1.0;
          v47 = v46 - 4;
          if (v46 <= 4)
          {
            v47 = 0;
          }

          v48 = v47;
        }

        else
        {
          v48 = 0.0;
        }

        v59 = __exp10(v48);
        HIDWORD(v291) = (v59 * (v45 / v59));
        goto LABEL_276;
      }

      if (*__p == 0x74656B6361507854 && *(__p + 8) == 0x5D345B746E756F43)
      {
LABEL_109:
        v50 = uint64;
        if (uint64)
        {
          v51 = log10(uint64) + 1.0;
          v52 = v51 - 4;
          if (v51 <= 4)
          {
            v52 = 0;
          }

          v53 = v52;
        }

        else
        {
          v53 = 0.0;
        }

        v60 = __exp10(v53);
        LODWORD(v292) = (v60 * (v50 / v60));
        goto LABEL_276;
      }

      if (*__p == 0x74656B6361507854 && *(__p + 8) == 0x5D355B746E756F43)
      {
LABEL_115:
        v55 = uint64;
        if (uint64)
        {
          v56 = log10(uint64) + 1.0;
          v57 = v56 - 4;
          if (v56 <= 4)
          {
            v57 = 0;
          }

          v58 = v57;
        }

        else
        {
          v58 = 0.0;
        }

        v61 = __exp10(v58);
        DWORD1(v292) = (v61 * (v55 / v61));
        goto LABEL_276;
      }

      if (*__p == 0x74656B6361507854 && *(__p + 8) == 0x5D365B746E756F43)
      {
LABEL_125:
        v62 = uint64;
        if (uint64)
        {
          v63 = log10(uint64) + 1.0;
          v64 = v63 - 4;
          if (v63 <= 4)
          {
            v64 = 0;
          }

          v65 = v64;
        }

        else
        {
          v65 = 0.0;
        }

        v106 = __exp10(v65);
        DWORD2(v292) = (v106 * (v62 / v106));
        goto LABEL_276;
      }

      if ((v283 & 0x80) == 0)
      {
        if (v283 != 16)
        {
          goto LABEL_144;
        }

LABEL_79:
        if (__p == 0x74656B6361507854 && *(&__p + 1) == 0x5D375B746E756F43)
        {
          goto LABEL_196;
        }

        if (__p == 0x74656B6361507854 && *(&__p + 1) == 0x5D385B746E756F43)
        {
          goto LABEL_216;
        }

        goto LABEL_139;
      }

      if (*__p == 0x74656B6361507854 && *(__p + 8) == 0x5D375B746E756F43)
      {
LABEL_196:
        v102 = uint64;
        if (uint64)
        {
          v103 = log10(uint64) + 1.0;
          v104 = v103 - 4;
          if (v103 <= 4)
          {
            v104 = 0;
          }

          v105 = v104;
        }

        else
        {
          v105 = 0.0;
        }

        v111 = __exp10(v105);
        HIDWORD(v292) = (v111 * (v102 / v111));
        goto LABEL_276;
      }

      p_p = __p;
      if (*__p == 0x74656B6361507854 && *(__p + 8) == 0x5D385B746E756F43)
      {
LABEL_216:
        v115 = uint64;
        if (uint64)
        {
          v116 = log10(uint64) + 1.0;
          v117 = v116 - 4;
          if (v116 <= 4)
          {
            v117 = 0;
          }

          v118 = v117;
        }

        else
        {
          v118 = 0.0;
        }

        v128 = __exp10(v118);
        LODWORD(v293) = (v128 * (v115 / v128));
        goto LABEL_276;
      }

      if (v283 < 0)
      {
        goto LABEL_140;
      }

      if (v283 != 16)
      {
        goto LABEL_144;
      }

LABEL_139:
      p_p = &__p;
LABEL_140:
      v70 = *p_p;
      v69 = p_p[1];
      if (v70 != 0x74656B6361507854 || v69 != 0x5D395B746E756F43)
      {
LABEL_144:
        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "TxPacketCount[10]"))
        {
          if (v15)
          {
            v72 = log10(v15) + 1.0;
            v73 = v72 - 4;
            if (v72 <= 4)
            {
              v73 = 0;
            }

            v74 = v73;
          }

          else
          {
            v74 = 0.0;
          }

          v81 = __exp10(v74);
          DWORD2(v293) = (v81 * (v15 / v81));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "TxPacketCount[11]"))
        {
          if (v15)
          {
            v75 = log10(v15) + 1.0;
            v76 = v75 - 4;
            if (v75 <= 4)
            {
              v76 = 0;
            }

            v77 = v76;
          }

          else
          {
            v77 = 0.0;
          }

          v85 = __exp10(v77);
          HIDWORD(v293) = (v85 * (v15 / v85));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "TxPacketCount[12]"))
        {
          if (v15)
          {
            v78 = log10(v15) + 1.0;
            v79 = v78 - 4;
            if (v78 <= 4)
            {
              v79 = 0;
            }

            v80 = v79;
          }

          else
          {
            v80 = 0.0;
          }

          v89 = __exp10(v80);
          LODWORD(v294) = (v89 * (v15 / v89));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "TxPacketCount[13]"))
        {
          if (v15)
          {
            v82 = log10(v15) + 1.0;
            v83 = v82 - 4;
            if (v82 <= 4)
            {
              v83 = 0;
            }

            v84 = v83;
          }

          else
          {
            v84 = 0.0;
          }

          v93 = __exp10(v84);
          DWORD1(v294) = (v93 * (v15 / v93));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "TxPacketCount[14]"))
        {
          if (v15)
          {
            v86 = log10(v15) + 1.0;
            v87 = v86 - 4;
            if (v86 <= 4)
            {
              v87 = 0;
            }

            v88 = v87;
          }

          else
          {
            v88 = 0.0;
          }

          v97 = __exp10(v88);
          DWORD2(v294) = (v97 * (v15 / v97));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "TxPacketCount[15]"))
        {
          if (v15)
          {
            v90 = log10(v15) + 1.0;
            v91 = v90 - 4;
            if (v90 <= 4)
            {
              v91 = 0;
            }

            v92 = v91;
          }

          else
          {
            v92 = 0.0;
          }

          v101 = __exp10(v92);
          HIDWORD(v294) = (v101 * (v15 / v101));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "TxPacketCount[16]"))
        {
          if (v15)
          {
            v94 = log10(v15) + 1.0;
            v95 = v94 - 4;
            if (v94 <= 4)
            {
              v95 = 0;
            }

            v96 = v95;
          }

          else
          {
            v96 = 0.0;
          }

          v110 = __exp10(v96);
          LODWORD(v295) = (v110 * (v15 / v110));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "TxPacketCount[17]"))
        {
          if (v15)
          {
            v98 = log10(v15) + 1.0;
            v99 = v98 - 4;
            if (v98 <= 4)
            {
              v99 = 0;
            }

            v100 = v99;
          }

          else
          {
            v100 = 0.0;
          }

          v119 = __exp10(v100);
          DWORD1(v295) = (v119 * (v15 / v119));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "TxPacketCount[18]"))
        {
          if (v15)
          {
            v107 = log10(v15) + 1.0;
            v108 = v107 - 4;
            if (v107 <= 4)
            {
              v108 = 0;
            }

            v109 = v108;
          }

          else
          {
            v109 = 0.0;
          }

          v127 = __exp10(v109);
          DWORD2(v295) = (v127 * (v15 / v127));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "TxPacketCount[19]"))
        {
          if (v15)
          {
            v112 = log10(v15) + 1.0;
            v113 = v112 - 4;
            if (v112 <= 4)
            {
              v113 = 0;
            }

            v114 = v113;
          }

          else
          {
            v114 = 0.0;
          }

          v132 = __exp10(v114);
          HIDWORD(v295) = (v132 * (v15 / v132));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "TxPacketCount[20]"))
        {
          if (v15)
          {
            v120 = log10(v15) + 1.0;
            v121 = v120 - 4;
            if (v120 <= 4)
            {
              v121 = 0;
            }

            v122 = v121;
          }

          else
          {
            v122 = 0.0;
          }

          v137 = __exp10(v122);
          LODWORD(v296) = (v137 * (v15 / v137));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "TxPacketCount[21]"))
        {
          if (v15)
          {
            v129 = log10(v15) + 1.0;
            v130 = v129 - 4;
            if (v129 <= 4)
            {
              v130 = 0;
            }

            v131 = v130;
          }

          else
          {
            v131 = 0.0;
          }

          v141 = __exp10(v131);
          DWORD1(v296) = (v141 * (v15 / v141));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "TxPacketCount[22]"))
        {
          if (v15)
          {
            v134 = log10(v15) + 1.0;
            v135 = v134 - 4;
            if (v134 <= 4)
            {
              v135 = 0;
            }

            v136 = v135;
          }

          else
          {
            v136 = 0.0;
          }

          v145 = __exp10(v136);
          DWORD2(v296) = (v145 * (v15 / v145));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "TxPacketCount[23]"))
        {
          if (v15)
          {
            v138 = log10(v15) + 1.0;
            v139 = v138 - 4;
            if (v138 <= 4)
            {
              v139 = 0;
            }

            v140 = v139;
          }

          else
          {
            v140 = 0.0;
          }

          v149 = __exp10(v140);
          HIDWORD(v296) = (v149 * (v15 / v149));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "TxPacketCount[24]"))
        {
          if (v15)
          {
            v142 = log10(v15) + 1.0;
            v143 = v142 - 4;
            if (v142 <= 4)
            {
              v143 = 0;
            }

            v144 = v143;
          }

          else
          {
            v144 = 0.0;
          }

          v150 = __exp10(v144);
          LODWORD(v297) = (v150 * (v15 / v150));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "TxPacketCount[25]"))
        {
          if (v15)
          {
            v146 = log10(v15) + 1.0;
            v147 = v146 - 4;
            if (v146 <= 4)
            {
              v147 = 0;
            }

            v148 = v147;
          }

          else
          {
            v148 = 0.0;
          }

          v151 = __exp10(v148);
          HIDWORD(v297) = (v151 * (v15 / v151));
        }

        goto LABEL_276;
      }

      v123 = uint64;
      if (uint64)
      {
        v124 = log10(uint64) + 1.0;
        v125 = v124 - 4;
        if (v124 <= 4)
        {
          v125 = 0;
        }

        v126 = v125;
      }

      else
      {
        v126 = 0.0;
      }

      v133 = __exp10(v126);
      DWORD1(v293) = (v133 * (v123 / v133));
LABEL_276:
      if ((v283 & 0x80000000) == 0)
      {
        if (v283 != 16)
        {
          goto LABEL_410;
        }

        if (__p == 0x74656B6361507852 && *(&__p + 1) == 0x5D305B746E756F43)
        {
          goto LABEL_349;
        }

        if (__p == 0x74656B6361507852 && *(&__p + 1) == 0x5D315B746E756F43)
        {
          goto LABEL_353;
        }

        if (__p == 0x74656B6361507852 && *(&__p + 1) == 0x5D325B746E756F43)
        {
          goto LABEL_357;
        }

        if (__p == 0x74656B6361507852 && *(&__p + 1) == 0x5D335B746E756F43)
        {
          goto LABEL_364;
        }

        if (__p == 0x74656B6361507852 && *(&__p + 1) == 0x5D345B746E756F43)
        {
          goto LABEL_371;
        }

        if (__p == 0x74656B6361507852 && *(&__p + 1) == 0x5D355B746E756F43)
        {
          goto LABEL_378;
        }

        if (__p == 0x74656B6361507852 && *(&__p + 1) == 0x5D365B746E756F43)
        {
          goto LABEL_391;
        }

LABEL_339:
        if (__p == 0x74656B6361507852 && *(&__p + 1) == 0x5D375B746E756F43)
        {
          goto LABEL_468;
        }

        if (__p == 0x74656B6361507852 && *(&__p + 1) == 0x5D385B746E756F43)
        {
          goto LABEL_491;
        }

        goto LABEL_405;
      }

      if (*(&__p + 1) != 16)
      {
        goto LABEL_410;
      }

      if (*__p == 0x74656B6361507852 && *(__p + 8) == 0x5D305B746E756F43)
      {
LABEL_349:
        if (v15)
        {
          v168 = log10(v15) + 1.0;
          v169 = v168 - 4;
          if (v168 <= 4)
          {
            v169 = 0;
          }

          v170 = v169;
        }

        else
        {
          v170 = 0.0;
        }

        v177 = __exp10(v170);
        LODWORD(v284) = (v177 * (v15 / v177));
        if ((v283 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

LABEL_550:
        operator delete(__p);
        goto LABEL_9;
      }

      if (*__p == 0x74656B6361507852 && *(__p + 8) == 0x5D315B746E756F43)
      {
LABEL_353:
        if (v15)
        {
          v171 = log10(v15) + 1.0;
          v172 = v171 - 4;
          if (v171 <= 4)
          {
            v172 = 0;
          }

          v173 = v172;
        }

        else
        {
          v173 = 0.0;
        }

        v181 = __exp10(v173);
        DWORD1(v284) = (v181 * (v15 / v181));
        if ((v283 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_550;
      }

      if (*__p == 0x74656B6361507852 && *(__p + 8) == 0x5D325B746E756F43)
      {
LABEL_357:
        if (v15)
        {
          v174 = log10(v15) + 1.0;
          v175 = v174 - 4;
          if (v174 <= 4)
          {
            v175 = 0;
          }

          v176 = v175;
        }

        else
        {
          v176 = 0.0;
        }

        v185 = __exp10(v176);
        DWORD2(v284) = (v185 * (v15 / v185));
        if ((v283 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_550;
      }

      if (*__p == 0x74656B6361507852 && *(__p + 8) == 0x5D335B746E756F43)
      {
LABEL_364:
        if (v15)
        {
          v178 = log10(v15) + 1.0;
          v179 = v178 - 4;
          if (v178 <= 4)
          {
            v179 = 0;
          }

          v180 = v179;
        }

        else
        {
          v180 = 0.0;
        }

        v189 = __exp10(v180);
        HIDWORD(v284) = (v189 * (v15 / v189));
        if ((v283 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_550;
      }

      if (*__p == 0x74656B6361507852 && *(__p + 8) == 0x5D345B746E756F43)
      {
LABEL_371:
        if (v15)
        {
          v182 = log10(v15) + 1.0;
          v183 = v182 - 4;
          if (v182 <= 4)
          {
            v183 = 0;
          }

          v184 = v183;
        }

        else
        {
          v184 = 0.0;
        }

        v190 = __exp10(v184);
        LODWORD(v285) = (v190 * (v15 / v190));
        if ((v283 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_550;
      }

      if (*__p == 0x74656B6361507852 && *(__p + 8) == 0x5D355B746E756F43)
      {
LABEL_378:
        if (v15)
        {
          v186 = log10(v15) + 1.0;
          v187 = v186 - 4;
          if (v186 <= 4)
          {
            v187 = 0;
          }

          v188 = v187;
        }

        else
        {
          v188 = 0.0;
        }

        v191 = __exp10(v188);
        DWORD1(v285) = (v191 * (v15 / v191));
        if ((v283 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_550;
      }

      if (*__p == 0x74656B6361507852 && *(__p + 8) == 0x5D365B746E756F43)
      {
LABEL_391:
        if (v15)
        {
          v192 = log10(v15) + 1.0;
          v193 = v192 - 4;
          if (v192 <= 4)
          {
            v193 = 0;
          }

          v194 = v193;
        }

        else
        {
          v194 = 0.0;
        }

        v234 = __exp10(v194);
        DWORD2(v285) = (v234 * (v15 / v234));
        if ((v283 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_550;
      }

      if ((v283 & 0x80) == 0)
      {
        if (v283 != 16)
        {
          goto LABEL_410;
        }

        goto LABEL_339;
      }

      if (*__p == 0x74656B6361507852 && *(__p + 8) == 0x5D375B746E756F43)
      {
LABEL_468:
        if (v15)
        {
          v231 = log10(v15) + 1.0;
          v232 = v231 - 4;
          if (v231 <= 4)
          {
            v232 = 0;
          }

          v233 = v232;
        }

        else
        {
          v233 = 0.0;
        }

        v239 = __exp10(v233);
        HIDWORD(v285) = (v239 * (v15 / v239));
        if ((v283 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_550;
      }

      v196 = __p;
      if (*__p == 0x74656B6361507852 && *(__p + 8) == 0x5D385B746E756F43)
      {
LABEL_491:
        if (v15)
        {
          v243 = log10(v15) + 1.0;
          v244 = v243 - 4;
          if (v243 <= 4)
          {
            v244 = 0;
          }

          v245 = v244;
        }

        else
        {
          v245 = 0.0;
        }

        v254 = __exp10(v245);
        LODWORD(v286) = (v254 * (v15 / v254));
        if ((v283 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_550;
      }

      if (v283 < 0)
      {
        goto LABEL_406;
      }

      if (v283 != 16)
      {
        goto LABEL_410;
      }

LABEL_405:
      v196 = &__p;
LABEL_406:
      v198 = *v196;
      v199 = v196[1];
      if (v198 == 0x74656B6361507852 && v199 == 0x5D395B746E756F43)
      {
        if (v15)
        {
          v250 = log10(v15) + 1.0;
          v251 = v250 - 4;
          if (v250 <= 4)
          {
            v251 = 0;
          }

          v252 = v251;
        }

        else
        {
          v252 = 0.0;
        }

        v259 = __exp10(v252);
        DWORD1(v286) = (v259 * (v15 / v259));
        if ((v283 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_550;
      }

LABEL_410:
      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "RxPacketCount[10]"))
      {
        if (v15)
        {
          v201 = log10(v15) + 1.0;
          v202 = v201 - 4;
          if (v201 <= 4)
          {
            v202 = 0;
          }

          v203 = v202;
        }

        else
        {
          v203 = 0.0;
        }

        v210 = __exp10(v203);
        DWORD2(v286) = (v210 * (v15 / v210));
        if ((v283 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_550;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "RxPacketCount[11]"))
      {
        if (v15)
        {
          v204 = log10(v15) + 1.0;
          v205 = v204 - 4;
          if (v204 <= 4)
          {
            v205 = 0;
          }

          v206 = v205;
        }

        else
        {
          v206 = 0.0;
        }

        v214 = __exp10(v206);
        HIDWORD(v286) = (v214 * (v15 / v214));
        if ((v283 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_550;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "RxPacketCount[12]"))
      {
        if (v15)
        {
          v207 = log10(v15) + 1.0;
          v208 = v207 - 4;
          if (v207 <= 4)
          {
            v208 = 0;
          }

          v209 = v208;
        }

        else
        {
          v209 = 0.0;
        }

        v218 = __exp10(v209);
        LODWORD(v287) = (v218 * (v15 / v218));
        if ((v283 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_550;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "RxPacketCount[13]"))
      {
        if (v15)
        {
          v211 = log10(v15) + 1.0;
          v212 = v211 - 4;
          if (v211 <= 4)
          {
            v212 = 0;
          }

          v213 = v212;
        }

        else
        {
          v213 = 0.0;
        }

        v222 = __exp10(v213);
        DWORD1(v287) = (v222 * (v15 / v222));
        if ((v283 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_550;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "RxPacketCount[14]"))
      {
        if (v15)
        {
          v215 = log10(v15) + 1.0;
          v216 = v215 - 4;
          if (v215 <= 4)
          {
            v216 = 0;
          }

          v217 = v216;
        }

        else
        {
          v217 = 0.0;
        }

        v226 = __exp10(v217);
        DWORD2(v287) = (v226 * (v15 / v226));
        if ((v283 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_550;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "RxPacketCount[15]"))
      {
        if (v15)
        {
          v219 = log10(v15) + 1.0;
          v220 = v219 - 4;
          if (v219 <= 4)
          {
            v220 = 0;
          }

          v221 = v220;
        }

        else
        {
          v221 = 0.0;
        }

        v230 = __exp10(v221);
        HIDWORD(v287) = (v230 * (v15 / v230));
        if ((v283 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_550;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "RxPacketCount[16]"))
      {
        if (v15)
        {
          v223 = log10(v15) + 1.0;
          v224 = v223 - 4;
          if (v223 <= 4)
          {
            v224 = 0;
          }

          v225 = v224;
        }

        else
        {
          v225 = 0.0;
        }

        v238 = __exp10(v225);
        LODWORD(v288) = (v238 * (v15 / v238));
        if ((v283 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_550;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "RxPacketCount[17]"))
      {
        if (v15)
        {
          v227 = log10(v15) + 1.0;
          v228 = v227 - 4;
          if (v227 <= 4)
          {
            v228 = 0;
          }

          v229 = v228;
        }

        else
        {
          v229 = 0.0;
        }

        v246 = __exp10(v229);
        DWORD1(v288) = (v246 * (v15 / v246));
        if ((v283 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_550;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "RxPacketCount[18]"))
      {
        if (v15)
        {
          v235 = log10(v15) + 1.0;
          v236 = v235 - 4;
          if (v235 <= 4)
          {
            v236 = 0;
          }

          v237 = v236;
        }

        else
        {
          v237 = 0.0;
        }

        v253 = __exp10(v237);
        DWORD2(v288) = (v253 * (v15 / v253));
        if ((v283 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_550;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "RxPacketCount[19]"))
      {
        if (v15)
        {
          v240 = log10(v15) + 1.0;
          v241 = v240 - 4;
          if (v240 <= 4)
          {
            v241 = 0;
          }

          v242 = v241;
        }

        else
        {
          v242 = 0.0;
        }

        v258 = __exp10(v242);
        HIDWORD(v288) = (v258 * (v15 / v258));
        if ((v283 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_550;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "RxPacketCount[20]"))
      {
        if (v15)
        {
          v247 = log10(v15) + 1.0;
          v248 = v247 - 4;
          if (v247 <= 4)
          {
            v248 = 0;
          }

          v249 = v248;
        }

        else
        {
          v249 = 0.0;
        }

        v263 = __exp10(v249);
        LODWORD(v289) = (v263 * (v15 / v263));
        if ((v283 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_550;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "RxPacketCount[21]"))
      {
        if (v15)
        {
          v255 = log10(v15) + 1.0;
          v256 = v255 - 4;
          if (v255 <= 4)
          {
            v256 = 0;
          }

          v257 = v256;
        }

        else
        {
          v257 = 0.0;
        }

        v267 = __exp10(v257);
        DWORD1(v289) = (v267 * (v15 / v267));
        if ((v283 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_550;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "RxPacketCount[22]"))
      {
        if (v15)
        {
          v260 = log10(v15) + 1.0;
          v261 = v260 - 4;
          if (v260 <= 4)
          {
            v261 = 0;
          }

          v262 = v261;
        }

        else
        {
          v262 = 0.0;
        }

        v271 = __exp10(v262);
        DWORD2(v289) = (v271 * (v15 / v271));
        if ((v283 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_550;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "RxPacketCount[23]"))
      {
        if (v15)
        {
          v264 = log10(v15) + 1.0;
          v265 = v264 - 4;
          if (v264 <= 4)
          {
            v265 = 0;
          }

          v266 = v265;
        }

        else
        {
          v266 = 0.0;
        }

        v272 = __exp10(v266);
        HIDWORD(v289) = (v272 * (v15 / v272));
        if ((v283 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_550;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "RxPacketCount[24]"))
      {
        if (v15)
        {
          v268 = log10(v15) + 1.0;
          v269 = v268 - 4;
          if (v268 <= 4)
          {
            v269 = 0;
          }

          v270 = v269;
        }

        else
        {
          v270 = 0.0;
        }

        v276 = __exp10(v270);
        LODWORD(v290) = (v276 * (v15 / v276));
        if ((v283 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_550;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "RxPacketCount[25]"))
      {
        if (v15)
        {
          v273 = log10(v15) + 1.0;
          v274 = v273 - 4;
          if (v273 <= 4)
          {
            v274 = 0;
          }

          v275 = v274;
        }

        else
        {
          v275 = 0.0;
        }

        v277 = __exp10(v275);
        HIDWORD(v290) = (v277 * (v15 / v277));
        if ((v283 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_550;
      }

      if (v283 < 0)
      {
        goto LABEL_550;
      }

LABEL_9:
      if (count == ++v9)
      {
        goto LABEL_565;
      }
    }

    if (v283 != 16)
    {
      goto LABEL_144;
    }

    if (__p == 0x74656B6361507854 && *(&__p + 1) == 0x5D305B746E756F43)
    {
      goto LABEL_89;
    }

    if (__p == 0x74656B6361507854 && *(&__p + 1) == 0x5D315B746E756F43)
    {
      goto LABEL_93;
    }

    if (__p == 0x74656B6361507854 && *(&__p + 1) == 0x5D325B746E756F43)
    {
      goto LABEL_97;
    }

    if (__p == 0x74656B6361507854 && *(&__p + 1) == 0x5D335B746E756F43)
    {
      goto LABEL_103;
    }

    if (__p == 0x74656B6361507854 && *(&__p + 1) == 0x5D345B746E756F43)
    {
      goto LABEL_109;
    }

    if (__p == 0x74656B6361507854 && *(&__p + 1) == 0x5D355B746E756F43)
    {
      goto LABEL_115;
    }

    if (__p == 0x74656B6361507854 && *(&__p + 1) == 0x5D365B746E756F43)
    {
      goto LABEL_125;
    }

    goto LABEL_79;
  }

  v5 = 0;
LABEL_565:
  for (i = 0; i != 104; i += 4)
  {
    v279 = [v4 sCntrsMacTx];
    [v279 addTxPacketCountHistogram:*(&v291 + i)];

    v280 = [v4 sCntrsMacRx];
    [v280 addRxPacketCountHistogram:*(&v284 + i)];
  }

  v6 = 0;
LABEL_568:

  return v6;
}