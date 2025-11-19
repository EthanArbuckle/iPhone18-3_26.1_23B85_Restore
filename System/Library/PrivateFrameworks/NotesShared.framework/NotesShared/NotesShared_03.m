std::string *peernetworking::PeerNetworkMessage::CheckTypeAndMergeFrom(peernetworking::PeerNetworkMessage *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return peernetworking::PeerNetworkMessage::MergeFrom(this, lpsrc);
}

std::string *peernetworking::Note::MergeFrom(peernetworking::Note *this, const peernetworking::Note *a2)
{
  v3 = this;
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/peernetworking.pb.cc", 998);
    v4 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v17, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      v6 = *(a2 + 5);
      *(v3 + 8) |= 1u;
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v7 = *(v3 + 5);
      if (v7 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      this = std::string::operator=(v7, v6);
      v5 = *(a2 + 8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 8) |= 2u;
      v8 = *(v3 + 6);
      if (!v8)
      {
        operator new();
      }

      v9 = *(a2 + 6);
      if (!v9)
      {
        peernetworking::protobuf_AddDesc_peernetworking_2eproto(this);
        v9 = *(peernetworking::Note::default_instance_ + 48);
      }

      versioned_document::Document::MergeFrom(v8, v9);
    }
  }

  v12 = *(a2 + 1);
  v11 = a2 + 8;
  v10 = v12;
  v13 = v11[23];
  if (v13 >= 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  if (v13 >= 0)
  {
    v15 = v11[23];
  }

  else
  {
    v15 = *(v11 + 1);
  }

  return std::string::append((v3 + 8), v14, v15);
}

std::string *peernetworking::RequestNote::MergeFrom(peernetworking::RequestNote *this, const peernetworking::RequestNote *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/peernetworking.pb.cc", 1466);
    v4 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  if (*(a2 + 32))
  {
    v5 = *(a2 + 5);
    *(this + 8) |= 1u;
    if (!google::protobuf::internal::empty_string_)
    {
      versioned_document::Version::SharedCtor();
    }

    v6 = *(this + 5);
    if (v6 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    std::string::operator=(v6, v5);
  }

  v9 = *(a2 + 1);
  v8 = a2 + 8;
  v7 = v9;
  v10 = v8[23];
  if (v10 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v10 >= 0)
  {
    v12 = v8[23];
  }

  else
  {
    v12 = *(v8 + 1);
  }

  return std::string::append((this + 8), v11, v12);
}

void sub_214E08B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *peernetworking::Attachment::MergeFrom(peernetworking::Attachment *this, const peernetworking::Attachment *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v24, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/peernetworking.pb.cc", 2050);
    v4 = google::protobuf::internal::LogMessage::operator<<(v24, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v23, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v24[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      v6 = *(a2 + 5);
      *(this + 8) |= 1u;
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v7 = *(this + 5);
      if (v7 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::operator=(v7, v6);
      v5 = *(a2 + 8);
    }

    if ((v5 & 2) != 0)
    {
      v8 = *(a2 + 6);
      *(this + 8) |= 2u;
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v9 = *(this + 6);
      if (v9 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::operator=(v9, v8);
      v5 = *(a2 + 8);
    }

    if ((v5 & 4) != 0)
    {
      v10 = *(a2 + 7);
      *(this + 8) |= 4u;
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v11 = *(this + 7);
      if (v11 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::operator=(v11, v10);
      v5 = *(a2 + 8);
    }

    if ((v5 & 8) != 0)
    {
      v12 = *(a2 + 8);
      *(this + 8) |= 8u;
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v13 = *(this + 8);
      if (v13 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::operator=(v13, v12);
      v5 = *(a2 + 8);
    }

    if ((v5 & 0x10) != 0)
    {
      v14 = *(a2 + 9);
      *(this + 8) |= 0x10u;
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v15 = *(this + 9);
      if (v15 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::operator=(v15, v14);
    }
  }

  v18 = *(a2 + 1);
  v17 = a2 + 8;
  v16 = v18;
  v19 = v17[23];
  if (v19 >= 0)
  {
    v20 = v17;
  }

  else
  {
    v20 = v16;
  }

  if (v19 >= 0)
  {
    v21 = v17[23];
  }

  else
  {
    v21 = *(v17 + 1);
  }

  return std::string::append((this + 8), v20, v21);
}

void sub_214E08DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *peernetworking::RequestAttachment::MergeFrom(peernetworking::RequestAttachment *this, const peernetworking::RequestAttachment *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/peernetworking.pb.cc", 1702);
    v4 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v17, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      v6 = *(a2 + 5);
      *(this + 8) |= 1u;
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v7 = *(this + 5);
      if (v7 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::operator=(v7, v6);
      v5 = *(a2 + 8);
    }

    if ((v5 & 2) != 0)
    {
      v8 = *(a2 + 6);
      *(this + 8) |= 2u;
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v9 = *(this + 6);
      if (v9 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::operator=(v9, v8);
    }
  }

  v12 = *(a2 + 1);
  v11 = a2 + 8;
  v10 = v12;
  v13 = v11[23];
  if (v13 >= 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  if (v13 >= 0)
  {
    v15 = v11[23];
  }

  else
  {
    v15 = *(v11 + 1);
  }

  return std::string::append((this + 8), v14, v15);
}

void sub_214E08F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *peernetworking::RequestMedia::MergeFrom(peernetworking::RequestMedia *this, const peernetworking::RequestMedia *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/peernetworking.pb.cc", 2264);
    v4 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  if (*(a2 + 32))
  {
    v5 = *(a2 + 5);
    *(this + 8) |= 1u;
    if (!google::protobuf::internal::empty_string_)
    {
      versioned_document::Version::SharedCtor();
    }

    v6 = *(this + 5);
    if (v6 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    std::string::operator=(v6, v5);
  }

  v9 = *(a2 + 1);
  v8 = a2 + 8;
  v7 = v9;
  v10 = v8[23];
  if (v10 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v10 >= 0)
  {
    v12 = v8[23];
  }

  else
  {
    v12 = *(v8 + 1);
  }

  return std::string::append((this + 8), v11, v12);
}

void sub_214E0904C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *peernetworking::UnavailableMedia::MergeFrom(peernetworking::UnavailableMedia *this, const peernetworking::UnavailableMedia *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/peernetworking.pb.cc", 2702);
    v4 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  if (*(a2 + 32))
  {
    v5 = *(a2 + 5);
    *(this + 8) |= 1u;
    if (!google::protobuf::internal::empty_string_)
    {
      versioned_document::Version::SharedCtor();
    }

    v6 = *(this + 5);
    if (v6 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    std::string::operator=(v6, v5);
  }

  v9 = *(a2 + 1);
  v8 = a2 + 8;
  v7 = v9;
  v10 = v8[23];
  if (v10 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v10 >= 0)
  {
    v12 = v8[23];
  }

  else
  {
    v12 = *(v8 + 1);
  }

  return std::string::append((this + 8), v11, v12);
}

void sub_214E09164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *peernetworking::Identity::MergeFrom(peernetworking::Identity *this, const peernetworking::Identity *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v22, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/peernetworking.pb.cc", 3482);
    v4 = google::protobuf::internal::LogMessage::operator<<(v22, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v21, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v22[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      v6 = *(a2 + 5);
      *(this + 8) |= 1u;
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v7 = *(this + 5);
      if (v7 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::operator=(v7, v6);
      v5 = *(a2 + 8);
    }

    if ((v5 & 2) != 0)
    {
      v8 = *(a2 + 6);
      *(this + 8) |= 2u;
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v9 = *(this + 6);
      if (v9 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::operator=(v9, v8);
      v5 = *(a2 + 8);
    }

    if ((v5 & 4) != 0)
    {
      v10 = *(a2 + 7);
      *(this + 8) |= 4u;
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v11 = *(this + 7);
      if (v11 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::operator=(v11, v10);
      v5 = *(a2 + 8);
    }

    if ((v5 & 8) != 0)
    {
      v12 = *(a2 + 8);
      *(this + 8) |= 8u;
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v13 = *(this + 8);
      if (v13 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::operator=(v13, v12);
    }
  }

  v16 = *(a2 + 1);
  v15 = a2 + 8;
  v14 = v16;
  v17 = v15[23];
  if (v17 >= 0)
  {
    v18 = v15;
  }

  else
  {
    v18 = v14;
  }

  if (v17 >= 0)
  {
    v19 = v15[23];
  }

  else
  {
    v19 = *(v15 + 1);
  }

  return std::string::append((this + 8), v18, v19);
}

void sub_214E093AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *peernetworking::Invite::MergeFrom(peernetworking::Invite *this, const peernetworking::Invite *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/peernetworking.pb.cc", 2938);
    v4 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v17, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      v6 = *(a2 + 5);
      *(this + 8) |= 1u;
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v7 = *(this + 5);
      if (v7 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::operator=(v7, v6);
      v5 = *(a2 + 8);
    }

    if ((v5 & 2) != 0)
    {
      v8 = *(a2 + 6);
      *(this + 8) |= 2u;
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v9 = *(this + 6);
      if (v9 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::operator=(v9, v8);
    }
  }

  v12 = *(a2 + 1);
  v11 = a2 + 8;
  v10 = v12;
  v13 = v11[23];
  if (v13 >= 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  if (v13 >= 0)
  {
    v15 = v11[23];
  }

  else
  {
    v15 = *(v11 + 1);
  }

  return std::string::append((this + 8), v14, v15);
}

void sub_214E0952C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *peernetworking::InviteReply::MergeFrom(peernetworking::InviteReply *this, const peernetworking::InviteReply *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v17, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/peernetworking.pb.cc", 3170);
    v4 = google::protobuf::internal::LogMessage::operator<<(v17, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v16, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      v6 = *(a2 + 5);
      *(this + 8) |= 1u;
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v7 = *(this + 5);
      if (v7 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::operator=(v7, v6);
      v5 = *(a2 + 8);
    }

    if ((v5 & 2) != 0)
    {
      v8 = *(a2 + 48);
      *(this + 8) |= 2u;
      *(this + 48) = v8;
    }
  }

  v11 = *(a2 + 1);
  v10 = a2 + 8;
  v9 = v11;
  v12 = v10[23];
  if (v12 >= 0)
  {
    v13 = v10;
  }

  else
  {
    v13 = v9;
  }

  if (v12 >= 0)
  {
    v14 = v10[23];
  }

  else
  {
    v14 = *(v10 + 1);
  }

  return std::string::append((this + 8), v13, v14);
}

void sub_214E09664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *peernetworking::ShareInfo::MergeFrom(peernetworking::ShareInfo *this, const peernetworking::ShareInfo *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v17, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/peernetworking.pb.cc", 1262);
    v4 = google::protobuf::internal::LogMessage::operator<<(v17, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v16, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<peernetworking::Identity>::TypeHandler>((this + 48), (a2 + 48));
  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      v6 = *(a2 + 5);
      *(this + 8) |= 1u;
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v7 = *(this + 5);
      if (v7 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::operator=(v7, v6);
      v5 = *(a2 + 8);
    }

    if ((v5 & 2) != 0)
    {
      v8 = *(a2 + 18);
      *(this + 8) |= 2u;
      *(this + 18) = v8;
    }
  }

  v11 = *(a2 + 1);
  v10 = a2 + 8;
  v9 = v11;
  v12 = v10[23];
  if (v12 >= 0)
  {
    v13 = v10;
  }

  else
  {
    v13 = v9;
  }

  if (v12 >= 0)
  {
    v14 = v10[23];
  }

  else
  {
    v14 = *(v10 + 1);
  }

  return std::string::append((this + 8), v13, v14);
}

void sub_214E097A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *peernetworking::Media::MergeFrom(peernetworking::Media *this, const peernetworking::Media *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/peernetworking.pb.cc", 2500);
    v4 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v17, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      v6 = *(a2 + 5);
      *(this + 8) |= 1u;
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v7 = *(this + 5);
      if (v7 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::operator=(v7, v6);
      v5 = *(a2 + 8);
    }

    if ((v5 & 2) != 0)
    {
      v8 = *(a2 + 6);
      *(this + 8) |= 2u;
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v9 = *(this + 6);
      if (v9 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      std::string::operator=(v9, v8);
    }
  }

  v12 = *(a2 + 1);
  v11 = a2 + 8;
  v10 = v12;
  v13 = v11[23];
  if (v13 >= 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  if (v13 >= 0)
  {
    v15 = v11[23];
  }

  else
  {
    v15 = *(v11 + 1);
  }

  return std::string::append((this + 8), v14, v15);
}

void sub_214E09928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *peernetworking::KeepAlive::MergeFrom(peernetworking::KeepAlive *this, const peernetworking::KeepAlive *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/peernetworking.pb.cc", 3649);
    v4 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  v7 = *(a2 + 1);
  v6 = a2 + 8;
  v5 = v7;
  v8 = v6[23];
  if (v8 >= 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  if (v8 >= 0)
  {
    v10 = v6[23];
  }

  else
  {
    v10 = *(v6 + 1);
  }

  return std::string::append((this + 8), v9, v10);
}

void sub_214E099D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

peernetworking::Note *peernetworking::Note::Note(peernetworking::Note *this)
{
  *this = &unk_28270A850;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  peernetworking::Note::SharedCtor(this);
  return this;
}

void sub_214E09A5C(_Unwind_Exception *a1)
{
  if (v1[31] < 0)
  {
    operator delete(*v2);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v1);
  _Unwind_Resume(a1);
}

void peernetworking::Note::SharedCtor(peernetworking::Note *this)
{
  v2 = google::protobuf::internal::empty_string_once_init_;
  __dmb(0xBu);
  if (v2 != 2)
  {
    v3[0] = &unk_28270A628;
    v3[1] = google::protobuf::internal::InitEmptyString;
    v4 = 0;
    google::protobuf::GoogleOnceInitImpl(&google::protobuf::internal::empty_string_once_init_, v3);
    google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v3);
  }

  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  *(this + 5) = google::protobuf::internal::empty_string_;
  *(this + 6) = 0;
  *(this + 4) = 0;
}

void sub_214E09B28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void peernetworking::Note::~Note(void **this)
{
  *this = &unk_28270A850;
  peernetworking::Note::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  peernetworking::Note::~Note(this);

  JUMPOUT(0x216063B80);
}

void peernetworking::Note::SharedDtor(peernetworking::Note *this)
{
  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  v1 = this;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = v2 == google::protobuf::internal::empty_string_;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x216063B80](v2, 0x1012C40EC159624);
  }

  peernetworking::protobuf_AddDesc_peernetworking_2eproto(this);
  if (peernetworking::Note::default_instance_ != v1)
  {
    v4 = *(v1 + 6);
    if (v4)
    {
      v5 = *(*v4 + 8);

      v5();
    }
  }
}

uint64_t peernetworking::Note::MergePartialFromCodedStream(peernetworking::Note *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v23, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v22, v23);
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
      {
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        v7 = v6 | 0x100000000;
      }

      if (v7 >> 3 != 2)
      {
        break;
      }

      if (v7 != 18)
      {
        goto LABEL_23;
      }

LABEL_26:
      *(this + 8) |= 2u;
      v12 = *(this + 6);
      if (!v12)
      {
        operator new();
      }

      v24 = 0;
      v13 = *(a2 + 1);
      if (v13 >= *(a2 + 2) || *v13 < 0)
      {
        if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v24))
        {
          goto LABEL_41;
        }
      }

      else
      {
        v24 = *v13;
        *(a2 + 1) = v13 + 1;
      }

      v14 = *(a2 + 14);
      v15 = *(a2 + 15);
      *(a2 + 14) = v14 + 1;
      if (v14 >= v15 || (v16 = google::protobuf::io::CodedInputStream::PushLimit(a2, v24), !versioned_document::Document::MergePartialFromCodedStream(v12, a2)) || *(a2 + 36) != 1)
      {
LABEL_41:
        v20 = 0;
        goto LABEL_43;
      }

      google::protobuf::io::CodedInputStream::PopLimit(a2, v16);
      v17 = *(a2 + 14);
      v18 = __OFSUB__(v17, 1);
      v19 = v17 - 1;
      if (v19 < 0 == v18)
      {
        *(a2 + 14) = v19;
      }

      if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        v20 = 1;
        *(a2 + 36) = 1;
        goto LABEL_43;
      }
    }

    if (v7 >> 3 != 1)
    {
      break;
    }

    if (v7 == 10)
    {
      *(this + 8) |= 1u;
      if (!google::protobuf::internal::empty_string_)
      {
        __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
      }

      v9 = *(this + 5);
      if (v9 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v9))
      {
        goto LABEL_41;
      }

      v10 = *(a2 + 1);
      if (v10 < *(a2 + 2) && *v10 == 18)
      {
        *(a2 + 1) = v10 + 1;
        goto LABEL_26;
      }
    }

    else
    {
LABEL_23:
      if (!v7 || (v7 & 7) == 4)
      {
        goto LABEL_42;
      }

LABEL_20:
      if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v22, v4))
      {
        goto LABEL_41;
      }
    }
  }

LABEL_16:
  if (v7)
  {
    v11 = (v7 & 7) == 4;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_42:
  v20 = 1;
LABEL_43:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v22);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v23);
  return v20;
}

void sub_214E0A004(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  MEMORY[0x216063B80](v2, 0x1093C40A258B440);
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(va);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va1);
  _Unwind_Resume(a1);
}

uint64_t peernetworking::Note::SerializeWithCachedSizes(peernetworking::Note *this, google::protobuf::io::CodedOutputStream *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    this = google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(1, *(this + 5), a2);
    v4 = *(v3 + 8);
  }

  if ((v4 & 2) != 0)
  {
    v5 = *(v3 + 6);
    if (!v5)
    {
      peernetworking::protobuf_AddDesc_peernetworking_2eproto(this);
      v5 = *(peernetworking::Note::default_instance_ + 48);
    }

    google::protobuf::internal::WireFormatLite::WriteMessage(2, v5, a2);
  }

  v6 = *(v3 + 31);
  if (v6 < 0)
  {
    v7 = *(v3 + 1);
    v6 = *(v3 + 2);
  }

  else
  {
    v7 = v3 + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v7, v6);
}

uint64_t peernetworking::Note::ByteSize(peernetworking::Note *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_21;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v4 = *(this + 5);
  v5 = *(v4 + 23);
  v6 = v5;
  v7 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v8 = *(v4 + 23);
  }

  else
  {
    v8 = v7;
  }

  if (v8 >= 0x80)
  {
    v10 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
    v5 = *(v4 + 23);
    v7 = *(v4 + 8);
    v9 = v10 + 1;
    v2 = *(this + 8);
    v6 = *(v4 + 23);
  }

  else
  {
    v9 = 2;
  }

  if (v6 < 0)
  {
    v5 = v7;
  }

  v3 = v9 + v5;
  if ((v2 & 2) != 0)
  {
LABEL_15:
    v11 = *(this + 6);
    if (!v11)
    {
      peernetworking::protobuf_AddDesc_peernetworking_2eproto(0);
      v11 = *(peernetworking::Note::default_instance_ + 48);
    }

    v12 = versioned_document::Document::ByteSize(v11);
    v13 = v12;
    if (v12 >= 0x80)
    {
      v14 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12);
    }

    else
    {
      v14 = 1;
    }

    v3 += v13 + v14 + 1;
  }

LABEL_21:
  v15 = *(this + 31);
  if (v15 < 0)
  {
    v15 = *(this + 2);
  }

  result = (v3 + v15);
  *(this + 9) = result;
  return result;
}

std::string *peernetworking::Note::CheckTypeAndMergeFrom(peernetworking::Note *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return peernetworking::Note::MergeFrom(this, lpsrc);
}

peernetworking::ShareInfo *peernetworking::ShareInfo::ShareInfo(peernetworking::ShareInfo *this)
{
  *this = &unk_28270A8C8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  peernetworking::ShareInfo::SharedCtor(this);
  return this;
}

void sub_214E0A2D8(_Unwind_Exception *a1)
{
  v4 = v2;
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(v4);
  if (v1[31] < 0)
  {
    operator delete(*v3);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v1);
  _Unwind_Resume(a1);
}

void peernetworking::ShareInfo::SharedCtor(peernetworking::ShareInfo *this)
{
  v2 = google::protobuf::internal::empty_string_once_init_;
  __dmb(0xBu);
  if (v2 != 2)
  {
    v4[0] = &unk_28270A628;
    v4[1] = google::protobuf::internal::InitEmptyString;
    v5 = 0;
    google::protobuf::GoogleOnceInitImpl(&google::protobuf::internal::empty_string_once_init_, v4);
    google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v4);
  }

  v3 = google::protobuf::internal::empty_string_;
  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  *(this + 4) = 0;
  *(this + 5) = v3;
  *(this + 18) = 0;
}

void sub_214E0A3B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void peernetworking::ShareInfo::~ShareInfo(peernetworking::ShareInfo *this)
{
  *this = &unk_28270A8C8;
  peernetworking::ShareInfo::SharedDtor(this);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 6);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  peernetworking::ShareInfo::~ShareInfo(this);

  JUMPOUT(0x216063B80);
}

void peernetworking::ShareInfo::SharedDtor(peernetworking::ShareInfo *this)
{
  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  v1 = *(this + 5);
  if (v1)
  {
    v2 = v1 == google::protobuf::internal::empty_string_;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    this = MEMORY[0x216063B80](v1, 0x1012C40EC159624);
  }

  peernetworking::protobuf_AddDesc_peernetworking_2eproto(this);
}

uint64_t peernetworking::ShareInfo::MergePartialFromCodedStream(peernetworking::ShareInfo *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v32, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v31, v32);
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
      {
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        v7 = v6 | 0x100000000;
      }

      v9 = v7 >> 3;
      if (v7 >> 3 == 3)
      {
        if (v7 == 26)
        {
          goto LABEL_38;
        }

LABEL_29:
        if (!v7 || (v7 & 7) == 4)
        {
          goto LABEL_60;
        }

        goto LABEL_31;
      }

      if (v9 == 2)
      {
        break;
      }

      if (v9 == 1)
      {
        if (v7 != 10)
        {
          goto LABEL_29;
        }

        *(this + 8) |= 1u;
        if (!google::protobuf::internal::empty_string_)
        {
          __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
        }

        v10 = *(this + 5);
        if (v10 == google::protobuf::internal::empty_string_)
        {
          operator new();
        }

        if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v10))
        {
          goto LABEL_59;
        }

        v12 = *(a2 + 1);
        v11 = *(a2 + 2);
        if (v12 < v11 && *v12 == 16)
        {
          v13 = v12 + 1;
          *(a2 + 1) = v13;
          goto LABEL_25;
        }
      }

      else
      {
LABEL_17:
        if (v7)
        {
          v14 = (v7 & 7) == 4;
        }

        else
        {
          v14 = 1;
        }

        if (v14)
        {
LABEL_60:
          v29 = 1;
          goto LABEL_61;
        }

LABEL_31:
        if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v31, v4))
        {
          goto LABEL_59;
        }
      }
    }

    if (v7 != 16)
    {
      goto LABEL_29;
    }

    v13 = *(a2 + 1);
    v11 = *(a2 + 2);
LABEL_25:
    if (v13 >= v11 || (v15 = *v13, v15 < 0))
    {
      if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 18))
      {
        goto LABEL_59;
      }

      v16 = *(a2 + 1);
      v11 = *(a2 + 2);
    }

    else
    {
      *(this + 18) = v15;
      v16 = v13 + 1;
      *(a2 + 1) = v16;
    }

    *(this + 8) |= 2u;
    if (v16 < v11 && *v16 == 26)
    {
      do
      {
        *(a2 + 1) = v16 + 1;
LABEL_38:
        v17 = *(this + 15);
        v18 = *(this + 14);
        if (v18 >= v17)
        {
          if (v17 == *(this + 16))
          {
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 48, v17 + 1);
          }

          google::protobuf::internal::GenericTypeHandler<peernetworking::Identity>::New();
        }

        v19 = *(this + 6);
        *(this + 14) = v18 + 1;
        v20 = *(v19 + 8 * v18);
        v33 = 0;
        v21 = *(a2 + 1);
        if (v21 >= *(a2 + 2) || *v21 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v33))
          {
            goto LABEL_59;
          }
        }

        else
        {
          v33 = *v21;
          *(a2 + 1) = v21 + 1;
        }

        v22 = *(a2 + 14);
        v23 = *(a2 + 15);
        *(a2 + 14) = v22 + 1;
        if (v22 >= v23 || (v24 = google::protobuf::io::CodedInputStream::PushLimit(a2, v33), !peernetworking::Identity::MergePartialFromCodedStream(v20, a2)) || *(a2 + 36) != 1)
        {
LABEL_59:
          v29 = 0;
          goto LABEL_61;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v24);
        v25 = *(a2 + 14);
        v26 = __OFSUB__(v25, 1);
        v27 = v25 - 1;
        if (v27 < 0 == v26)
        {
          *(a2 + 14) = v27;
        }

        v16 = *(a2 + 1);
        v28 = *(a2 + 2);
      }

      while (v16 < v28 && *v16 == 26);
      if (v16 == v28 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        break;
      }
    }
  }

  *(a2 + 8) = 0;
  v29 = 1;
  *(a2 + 36) = 1;
LABEL_61:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v31);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v32);
  return v29;
}

void sub_214E0A8E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t peernetworking::ShareInfo::SerializeWithCachedSizes(peernetworking::ShareInfo *this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  v6 = *(this + 8);
  if (v6)
  {
    google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(1, *(this + 5), a2);
    v6 = *(this + 8);
  }

  if ((v6 & 2) != 0)
  {
    google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(this + 18), a2, a4);
  }

  if (*(this + 14) >= 1)
  {
    v7 = 0;
    do
    {
      v8 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<peernetworking::Identity>::TypeHandler>(this + 48, v7);
      google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2);
      ++v7;
    }

    while (v7 < *(this + 14));
  }

  v9 = *(this + 31);
  if (v9 < 0)
  {
    v10 = *(this + 1);
    v9 = *(this + 2);
  }

  else
  {
    v10 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v10, v9);
}

uint64_t peernetworking::ShareInfo::ByteSize(peernetworking::ShareInfo *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_19;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v4 = *(this + 5);
  v5 = *(v4 + 23);
  v6 = v5;
  v7 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v8 = *(v4 + 23);
  }

  else
  {
    v8 = v7;
  }

  if (v8 >= 0x80)
  {
    v10 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
    v5 = *(v4 + 23);
    v7 = *(v4 + 8);
    v9 = v10 + 1;
    v2 = *(this + 8);
    v6 = *(v4 + 23);
  }

  else
  {
    v9 = 2;
  }

  if (v6 < 0)
  {
    v5 = v7;
  }

  v3 = v9 + v5;
  if ((v2 & 2) != 0)
  {
LABEL_15:
    v11 = *(this + 18);
    if (v11 >= 0x80)
    {
      v12 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
    }

    else
    {
      v12 = 2;
    }

    v3 += v12;
  }

LABEL_19:
  v13 = *(this + 14);
  v14 = v13 + v3;
  if (v13 >= 1)
  {
    v15 = 0;
    do
    {
      v16 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<peernetworking::Identity>::TypeHandler>(this + 48, v15);
      v17 = peernetworking::Identity::ByteSize(v16);
      v18 = v17;
      if (v17 >= 0x80)
      {
        v19 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
      }

      else
      {
        v19 = 1;
      }

      v14 += v18 + v19;
      ++v15;
    }

    while (v15 < *(this + 14));
  }

  v20 = *(this + 31);
  if (v20 < 0)
  {
    v20 = *(this + 2);
  }

  result = (v14 + v20);
  *(this + 9) = result;
  return result;
}

std::string *peernetworking::ShareInfo::CheckTypeAndMergeFrom(peernetworking::ShareInfo *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return peernetworking::ShareInfo::MergeFrom(this, lpsrc);
}

peernetworking::RequestNote *peernetworking::RequestNote::RequestNote(peernetworking::RequestNote *this)
{
  *this = &unk_28270A940;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  peernetworking::RequestNote::SharedCtor(this);
  return this;
}

void sub_214E0ABEC(_Unwind_Exception *a1)
{
  if (v1[31] < 0)
  {
    operator delete(*v2);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v1);
  _Unwind_Resume(a1);
}

void peernetworking::RequestNote::SharedCtor(peernetworking::RequestNote *this)
{
  v2 = google::protobuf::internal::empty_string_once_init_;
  __dmb(0xBu);
  if (v2 != 2)
  {
    v4[0] = &unk_28270A628;
    v4[1] = google::protobuf::internal::InitEmptyString;
    v5 = 0;
    google::protobuf::GoogleOnceInitImpl(&google::protobuf::internal::empty_string_once_init_, v4);
    google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v4);
  }

  v3 = google::protobuf::internal::empty_string_;
  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  *(this + 4) = 0;
  *(this + 5) = v3;
}

void sub_214E0ACB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void peernetworking::RequestNote::~RequestNote(void **this)
{
  *this = &unk_28270A940;
  peernetworking::ShareInfo::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  peernetworking::RequestNote::~RequestNote(this);

  JUMPOUT(0x216063B80);
}

uint64_t peernetworking::RequestNote::MergePartialFromCodedStream(peernetworking::RequestNote *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v14, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v13, v14);
  do
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
      {
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        v7 = v6 | 0x100000000;
      }

      if (v7 == 10)
      {
        break;
      }

LABEL_15:
      if (v7)
      {
        v10 = (v7 & 7) == 4;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        v11 = 1;
        goto LABEL_23;
      }

      if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v13, v4))
      {
        goto LABEL_20;
      }
    }

    *(this + 8) |= 1u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v9 = *(this + 5);
    if (v9 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v9))
    {
LABEL_20:
      v11 = 0;
      goto LABEL_23;
    }
  }

  while (*(a2 + 1) != *(a2 + 2) || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10));
  *(a2 + 8) = 0;
  v11 = 1;
  *(a2 + 36) = 1;
LABEL_23:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v13);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v14);
  return v11;
}

void sub_214E0AF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t peernetworking::RequestNote::SerializeWithCachedSizes(peernetworking::RequestNote *this, google::protobuf::io::CodedOutputStream *a2)
{
  if (*(this + 32))
  {
    google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(1, *(this + 5), a2);
  }

  v4 = *(this + 31);
  if (v4 < 0)
  {
    v5 = *(this + 1);
    v4 = *(this + 2);
  }

  else
  {
    v5 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v5, v4);
}

uint64_t peernetworking::RequestNote::ByteSize(peernetworking::RequestNote *this)
{
  if (*(this + 32))
  {
    v3 = *(this + 5);
    v4 = *(v3 + 23);
    v5 = v4;
    v6 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v7 = *(v3 + 23);
    }

    else
    {
      v7 = v6;
    }

    if (v7 >= 0x80)
    {
      v9 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
      v4 = *(v3 + 23);
      v6 = *(v3 + 8);
      v8 = v9 + 1;
      v5 = *(v3 + 23);
    }

    else
    {
      v8 = 2;
    }

    if (v5 < 0)
    {
      v4 = v6;
    }

    v2 = v8 + v4;
  }

  else
  {
    v2 = 0;
  }

  v10 = *(this + 31);
  if (v10 < 0)
  {
    v10 = *(this + 2);
  }

  result = (v10 + v2);
  *(this + 9) = result;
  return result;
}

std::string *peernetworking::RequestNote::CheckTypeAndMergeFrom(peernetworking::RequestNote *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return peernetworking::RequestNote::MergeFrom(this, lpsrc);
}

peernetworking::RequestAttachment *peernetworking::RequestAttachment::RequestAttachment(peernetworking::RequestAttachment *this)
{
  *this = &unk_28270A9B8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  peernetworking::RequestAttachment::SharedCtor(this);
  return this;
}

void sub_214E0B18C(_Unwind_Exception *a1)
{
  if (v1[31] < 0)
  {
    operator delete(*v2);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v1);
  _Unwind_Resume(a1);
}

void peernetworking::RequestAttachment::SharedCtor(peernetworking::RequestAttachment *this)
{
  v2 = google::protobuf::internal::empty_string_once_init_;
  __dmb(0xBu);
  if (v2 != 2)
  {
    v4[0] = &unk_28270A628;
    v4[1] = google::protobuf::internal::InitEmptyString;
    v5 = 0;
    google::protobuf::GoogleOnceInitImpl(&google::protobuf::internal::empty_string_once_init_, v4);
    google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v4);
  }

  v3 = google::protobuf::internal::empty_string_;
  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  *(this + 5) = google::protobuf::internal::empty_string_;
  *(this + 6) = v3;
  *(this + 4) = 0;
}

void sub_214E0B258(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void peernetworking::RequestAttachment::~RequestAttachment(void **this)
{
  *this = &unk_28270A9B8;
  peernetworking::RequestAttachment::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  peernetworking::RequestAttachment::~RequestAttachment(this);

  JUMPOUT(0x216063B80);
}

void peernetworking::RequestAttachment::SharedDtor(peernetworking::RequestAttachment *this)
{
  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  v1 = this;
  v2 = *(this + 5);
  if (v2 != google::protobuf::internal::empty_string_)
  {
    if (v2)
    {
      if (*(v2 + 23) < 0)
      {
        operator delete(*v2);
      }

      this = MEMORY[0x216063B80](v2, 0x1012C40EC159624);
      v2 = google::protobuf::internal::empty_string_;
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }
    }

    else
    {
      v2 = google::protobuf::internal::empty_string_;
    }
  }

  v3 = *(v1 + 6);
  if (v3 != v2 && v3 != 0)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    this = MEMORY[0x216063B80](v3, 0x1012C40EC159624);
  }

  peernetworking::protobuf_AddDesc_peernetworking_2eproto(this);
}

uint64_t peernetworking::RequestAttachment::MergePartialFromCodedStream(peernetworking::RequestAttachment *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v16, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v15, v16);
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
      {
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        v7 = v6 | 0x100000000;
      }

      if (v7 >> 3 != 2)
      {
        break;
      }

      if (v7 != 18)
      {
        goto LABEL_23;
      }

LABEL_26:
      *(this + 8) |= 2u;
      if (!google::protobuf::internal::empty_string_)
      {
LABEL_37:
        __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
      }

      v12 = *(this + 6);
      if (v12 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v12))
      {
LABEL_34:
        v13 = 0;
        goto LABEL_36;
      }

      if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        v13 = 1;
        *(a2 + 36) = 1;
        goto LABEL_36;
      }
    }

    if (v7 >> 3 != 1)
    {
      break;
    }

    if (v7 == 10)
    {
      *(this + 8) |= 1u;
      if (!google::protobuf::internal::empty_string_)
      {
        goto LABEL_37;
      }

      v9 = *(this + 5);
      if (v9 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v9))
      {
        goto LABEL_34;
      }

      v10 = *(a2 + 1);
      if (v10 < *(a2 + 2) && *v10 == 18)
      {
        *(a2 + 1) = v10 + 1;
        goto LABEL_26;
      }
    }

    else
    {
LABEL_23:
      if (!v7 || (v7 & 7) == 4)
      {
        goto LABEL_35;
      }

LABEL_20:
      if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v15, v4))
      {
        goto LABEL_34;
      }
    }
  }

LABEL_16:
  if (v7)
  {
    v11 = (v7 & 7) == 4;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_35:
  v13 = 1;
LABEL_36:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v15);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v16);
  return v13;
}

void sub_214E0B684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t peernetworking::RequestAttachment::SerializeWithCachedSizes(peernetworking::RequestAttachment *this, google::protobuf::io::CodedOutputStream *a2)
{
  v4 = *(this + 8);
  if (v4)
  {
    google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(1, *(this + 5), a2);
    v4 = *(this + 8);
  }

  if ((v4 & 2) != 0)
  {
    google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(2, *(this + 6), a2);
  }

  v5 = *(this + 31);
  if (v5 < 0)
  {
    v6 = *(this + 1);
    v5 = *(this + 2);
  }

  else
  {
    v6 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v6, v5);
}

uint64_t peernetworking::RequestAttachment::ByteSize(peernetworking::RequestAttachment *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_24;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  v4 = *(this + 5);
  v5 = *(v4 + 23);
  v6 = v5;
  v7 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v8 = *(v4 + 23);
  }

  else
  {
    v8 = v7;
  }

  if (v8 >= 0x80)
  {
    v10 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
    v5 = *(v4 + 23);
    v7 = *(v4 + 8);
    v9 = v10 + 1;
    v2 = *(this + 8);
    v6 = *(v4 + 23);
  }

  else
  {
    v9 = 2;
  }

  if (v6 < 0)
  {
    v5 = v7;
  }

  v3 = v9 + v5;
  if ((v2 & 2) != 0)
  {
LABEL_15:
    v11 = *(this + 6);
    v12 = *(v11 + 23);
    v13 = v12;
    v14 = *(v11 + 8);
    if ((v12 & 0x80u) == 0)
    {
      v15 = *(v11 + 23);
    }

    else
    {
      v15 = v14;
    }

    if (v15 >= 0x80)
    {
      v16 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
      v12 = *(v11 + 23);
      v14 = *(v11 + 8);
      v13 = *(v11 + 23);
    }

    else
    {
      v16 = 1;
    }

    if (v13 < 0)
    {
      v12 = v14;
    }

    v3 += v16 + v12 + 1;
  }

LABEL_24:
  v17 = *(this + 31);
  if (v17 < 0)
  {
    v17 = *(this + 2);
  }

  result = (v3 + v17);
  *(this + 9) = result;
  return result;
}

std::string *peernetworking::RequestAttachment::CheckTypeAndMergeFrom(peernetworking::RequestAttachment *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return peernetworking::RequestAttachment::MergeFrom(this, lpsrc);
}

peernetworking::Attachment *peernetworking::Attachment::Attachment(peernetworking::Attachment *this)
{
  *this = &unk_28270AA30;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  peernetworking::Attachment::SharedCtor(this);
  return this;
}

void sub_214E0B920(_Unwind_Exception *a1)
{
  if (v1[31] < 0)
  {
    operator delete(*v2);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v1);
  _Unwind_Resume(a1);
}

void peernetworking::Attachment::SharedCtor(peernetworking::Attachment *this)
{
  v2 = google::protobuf::internal::empty_string_once_init_;
  __dmb(0xBu);
  if (v2 != 2)
  {
    v4[0] = &unk_28270A628;
    v4[1] = google::protobuf::internal::InitEmptyString;
    v5 = 0;
    google::protobuf::GoogleOnceInitImpl(&google::protobuf::internal::empty_string_once_init_, v4);
    google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v4);
  }

  v3 = google::protobuf::internal::empty_string_;
  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  *(this + 5) = google::protobuf::internal::empty_string_;
  *(this + 6) = v3;
  *(this + 7) = v3;
  *(this + 8) = v3;
  *(this + 9) = v3;
  *(this + 4) = 0;
}

void sub_214E0B9F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void peernetworking::Attachment::~Attachment(void **this)
{
  *this = &unk_28270AA30;
  peernetworking::Attachment::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  peernetworking::Attachment::~Attachment(this);

  JUMPOUT(0x216063B80);
}

void peernetworking::Attachment::SharedDtor(peernetworking::Attachment *this)
{
  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  v1 = this;
  v2 = *(this + 5);
  if (v2 != google::protobuf::internal::empty_string_)
  {
    if (v2)
    {
      if (*(v2 + 23) < 0)
      {
        operator delete(*v2);
      }

      this = MEMORY[0x216063B80](v2, 0x1012C40EC159624);
      v2 = google::protobuf::internal::empty_string_;
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }
    }

    else
    {
      v2 = google::protobuf::internal::empty_string_;
    }
  }

  v3 = *(v1 + 6);
  if (v3 != v2 && v3 != 0)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    this = MEMORY[0x216063B80](v3, 0x1012C40EC159624);
    v2 = google::protobuf::internal::empty_string_;
  }

  if (!v2)
  {
    versioned_document::Version::SharedCtor();
  }

  v5 = *(v1 + 7);
  if (v5 != v2 && v5)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x216063B80](v5, 0x1012C40EC159624);
    v2 = google::protobuf::internal::empty_string_;
    if (!google::protobuf::internal::empty_string_)
    {
      versioned_document::Version::SharedCtor();
    }
  }

  v6 = *(v1 + 8);
  if (v6 != v2 && v6)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    this = MEMORY[0x216063B80](v6, 0x1012C40EC159624);
    v2 = google::protobuf::internal::empty_string_;
    if (!google::protobuf::internal::empty_string_)
    {
      versioned_document::Version::SharedCtor();
    }
  }

  v7 = *(v1 + 9);
  if (v7 && v7 != v2)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x216063B80](v7, 0x1012C40EC159624);
  }

  peernetworking::protobuf_AddDesc_peernetworking_2eproto(this);
}

uint64_t peernetworking::Attachment::MergePartialFromCodedStream(peernetworking::Attachment *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v23, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v22, v23);
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
      {
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          goto LABEL_6;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        v7 = v6 | 0x100000000;
      }

      v10 = v7 >> 3;
      if (v7 >> 3 <= 2)
      {
        break;
      }

      switch(v10)
      {
        case 3u:
          if (v7 != 26)
          {
            goto LABEL_27;
          }

          goto LABEL_45;
        case 4u:
          if (v7 != 34)
          {
            goto LABEL_27;
          }

LABEL_52:
          *(this + 8) |= 8u;
          if (!google::protobuf::internal::empty_string_)
          {
            goto LABEL_70;
          }

          v17 = *(this + 8);
          if (v17 == google::protobuf::internal::empty_string_)
          {
            operator new();
          }

          if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v17))
          {
            goto LABEL_67;
          }

          v18 = *(a2 + 1);
          if (v18 < *(a2 + 2) && *v18 == 42)
          {
            *(a2 + 1) = v18 + 1;
            goto LABEL_59;
          }

          break;
        case 5u:
          if (v7 == 42)
          {
LABEL_59:
            *(this + 8) |= 0x10u;
            if (!google::protobuf::internal::empty_string_)
            {
LABEL_70:
              __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
            }

            v19 = *(this + 9);
            if (v19 == google::protobuf::internal::empty_string_)
            {
              operator new();
            }

            if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v19))
            {
LABEL_67:
              v20 = 0;
              goto LABEL_69;
            }

            if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              v20 = 1;
              *(a2 + 36) = 1;
              goto LABEL_69;
            }
          }

          else
          {
LABEL_27:
            if (!v7 || (v7 & 7) == 4)
            {
              goto LABEL_68;
            }

LABEL_29:
            if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v22, v4))
            {
              goto LABEL_67;
            }
          }

          break;
        default:
          goto LABEL_6;
      }
    }

    if (v10 != 1)
    {
      break;
    }

    if (v7 != 10)
    {
      goto LABEL_27;
    }

    *(this + 8) |= 1u;
    if (!google::protobuf::internal::empty_string_)
    {
      goto LABEL_70;
    }

    v11 = *(this + 5);
    if (v11 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v11))
    {
      goto LABEL_67;
    }

    v12 = *(a2 + 1);
    if (v12 < *(a2 + 2) && *v12 == 18)
    {
      *(a2 + 1) = v12 + 1;
LABEL_38:
      *(this + 8) |= 2u;
      if (!google::protobuf::internal::empty_string_)
      {
        goto LABEL_70;
      }

      v13 = *(this + 6);
      if (v13 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v13))
      {
        goto LABEL_67;
      }

      v14 = *(a2 + 1);
      if (v14 < *(a2 + 2) && *v14 == 26)
      {
        *(a2 + 1) = v14 + 1;
LABEL_45:
        *(this + 8) |= 4u;
        if (!google::protobuf::internal::empty_string_)
        {
          goto LABEL_70;
        }

        v15 = *(this + 7);
        if (v15 == google::protobuf::internal::empty_string_)
        {
          operator new();
        }

        if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v15))
        {
          goto LABEL_67;
        }

        v16 = *(a2 + 1);
        if (v16 < *(a2 + 2) && *v16 == 34)
        {
          *(a2 + 1) = v16 + 1;
          goto LABEL_52;
        }
      }
    }
  }

  if (v10 == 2)
  {
    if (v7 != 18)
    {
      goto LABEL_27;
    }

    goto LABEL_38;
  }

LABEL_6:
  if (v7)
  {
    v9 = (v7 & 7) == 4;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    goto LABEL_29;
  }

LABEL_68:
  v20 = 1;
LABEL_69:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v22);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v23);
  return v20;
}

void sub_214E0C044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t peernetworking::Attachment::SerializeWithCachedSizes(peernetworking::Attachment *this, google::protobuf::io::CodedOutputStream *a2)
{
  v4 = *(this + 8);
  if (v4)
  {
    google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(1, *(this + 5), a2);
    v4 = *(this + 8);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(2, *(this + 6), a2);
  v4 = *(this + 8);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(3, *(this + 7), a2);
  v4 = *(this + 8);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_12:
  google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(4, *(this + 8), a2);
  if ((*(this + 8) & 0x10) != 0)
  {
LABEL_6:
    google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(5, *(this + 9), a2);
  }

LABEL_7:
  v5 = *(this + 31);
  if (v5 < 0)
  {
    v6 = *(this + 1);
    v5 = *(this + 2);
  }

  else
  {
    v6 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v6, v5);
}

uint64_t peernetworking::Attachment::ByteSize(peernetworking::Attachment *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_55;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  v4 = *(this + 5);
  v5 = *(v4 + 23);
  v6 = v5;
  v7 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v8 = *(v4 + 23);
  }

  else
  {
    v8 = v7;
  }

  if (v8 >= 0x80)
  {
    v10 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
    v5 = *(v4 + 23);
    v7 = *(v4 + 8);
    v9 = v10 + 1;
    v2 = *(this + 8);
    v6 = *(v4 + 23);
  }

  else
  {
    v9 = 2;
  }

  if (v6 < 0)
  {
    v5 = v7;
  }

  v3 = v9 + v5;
  if ((v2 & 2) != 0)
  {
LABEL_15:
    v11 = *(this + 6);
    v12 = *(v11 + 23);
    v13 = v12;
    v14 = *(v11 + 8);
    if ((v12 & 0x80u) == 0)
    {
      v15 = *(v11 + 23);
    }

    else
    {
      v15 = v14;
    }

    if (v15 >= 0x80)
    {
      v16 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
      v12 = *(v11 + 23);
      v14 = *(v11 + 8);
      v2 = *(this + 8);
      v13 = *(v11 + 23);
    }

    else
    {
      v16 = 1;
    }

    if (v13 < 0)
    {
      v12 = v14;
    }

    v3 += v16 + v12 + 1;
  }

LABEL_24:
  if ((v2 & 4) != 0)
  {
    v17 = *(this + 7);
    v18 = *(v17 + 23);
    v19 = v18;
    v20 = *(v17 + 8);
    if ((v18 & 0x80u) == 0)
    {
      v21 = *(v17 + 23);
    }

    else
    {
      v21 = v20;
    }

    if (v21 >= 0x80)
    {
      v22 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21);
      v18 = *(v17 + 23);
      v20 = *(v17 + 8);
      v2 = *(this + 8);
      v19 = *(v17 + 23);
    }

    else
    {
      v22 = 1;
    }

    if (v19 < 0)
    {
      v18 = v20;
    }

    v3 += v22 + v18 + 1;
    if ((v2 & 8) == 0)
    {
LABEL_26:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_46;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_26;
  }

  v23 = *(this + 8);
  v24 = *(v23 + 23);
  v25 = v24;
  v26 = *(v23 + 8);
  if ((v24 & 0x80u) == 0)
  {
    v27 = *(v23 + 23);
  }

  else
  {
    v27 = v26;
  }

  if (v27 >= 0x80)
  {
    v28 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27);
    v24 = *(v23 + 23);
    v26 = *(v23 + 8);
    v2 = *(this + 8);
    v25 = *(v23 + 23);
  }

  else
  {
    v28 = 1;
  }

  if (v25 < 0)
  {
    v24 = v26;
  }

  v3 += v28 + v24 + 1;
  if ((v2 & 0x10) != 0)
  {
LABEL_46:
    v29 = *(this + 9);
    v30 = *(v29 + 23);
    v31 = v30;
    v32 = *(v29 + 8);
    if ((v30 & 0x80u) == 0)
    {
      v33 = *(v29 + 23);
    }

    else
    {
      v33 = v32;
    }

    if (v33 >= 0x80)
    {
      v34 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33);
      v30 = *(v29 + 23);
      v32 = *(v29 + 8);
      v31 = *(v29 + 23);
    }

    else
    {
      v34 = 1;
    }

    if (v31 < 0)
    {
      v30 = v32;
    }

    v3 += v34 + v30 + 1;
  }

LABEL_55:
  v35 = *(this + 31);
  if (v35 < 0)
  {
    v35 = *(this + 2);
  }

  result = (v3 + v35);
  *(this + 9) = result;
  return result;
}

std::string *peernetworking::Attachment::CheckTypeAndMergeFrom(peernetworking::Attachment *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return peernetworking::Attachment::MergeFrom(this, lpsrc);
}

peernetworking::RequestMedia *peernetworking::RequestMedia::RequestMedia(peernetworking::RequestMedia *this)
{
  *this = &unk_28270AAA8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  peernetworking::RequestMedia::SharedCtor(this);
  return this;
}

void sub_214E0C450(_Unwind_Exception *a1)
{
  if (v1[31] < 0)
  {
    operator delete(*v2);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v1);
  _Unwind_Resume(a1);
}

void peernetworking::RequestMedia::SharedCtor(peernetworking::RequestMedia *this)
{
  v2 = google::protobuf::internal::empty_string_once_init_;
  __dmb(0xBu);
  if (v2 != 2)
  {
    v4[0] = &unk_28270A628;
    v4[1] = google::protobuf::internal::InitEmptyString;
    v5 = 0;
    google::protobuf::GoogleOnceInitImpl(&google::protobuf::internal::empty_string_once_init_, v4);
    google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v4);
  }

  v3 = google::protobuf::internal::empty_string_;
  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  *(this + 4) = 0;
  *(this + 5) = v3;
}

void sub_214E0C518(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void peernetworking::RequestMedia::~RequestMedia(void **this)
{
  *this = &unk_28270AAA8;
  peernetworking::ShareInfo::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  peernetworking::RequestMedia::~RequestMedia(this);

  JUMPOUT(0x216063B80);
}

uint64_t peernetworking::RequestMedia::MergePartialFromCodedStream(peernetworking::RequestMedia *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v14, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v13, v14);
  do
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
      {
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        v7 = v6 | 0x100000000;
      }

      if (v7 == 10)
      {
        break;
      }

LABEL_15:
      if (v7)
      {
        v10 = (v7 & 7) == 4;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        v11 = 1;
        goto LABEL_23;
      }

      if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v13, v4))
      {
        goto LABEL_20;
      }
    }

    *(this + 8) |= 1u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v9 = *(this + 5);
    if (v9 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v9))
    {
LABEL_20:
      v11 = 0;
      goto LABEL_23;
    }
  }

  while (*(a2 + 1) != *(a2 + 2) || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10));
  *(a2 + 8) = 0;
  v11 = 1;
  *(a2 + 36) = 1;
LABEL_23:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v13);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v14);
  return v11;
}

void sub_214E0C7DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t peernetworking::RequestMedia::SerializeWithCachedSizes(peernetworking::RequestMedia *this, google::protobuf::io::CodedOutputStream *a2)
{
  if (*(this + 32))
  {
    google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(1, *(this + 5), a2);
  }

  v4 = *(this + 31);
  if (v4 < 0)
  {
    v5 = *(this + 1);
    v4 = *(this + 2);
  }

  else
  {
    v5 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v5, v4);
}

uint64_t peernetworking::RequestMedia::ByteSize(peernetworking::RequestMedia *this)
{
  if (*(this + 32))
  {
    v3 = *(this + 5);
    v4 = *(v3 + 23);
    v5 = v4;
    v6 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v7 = *(v3 + 23);
    }

    else
    {
      v7 = v6;
    }

    if (v7 >= 0x80)
    {
      v9 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
      v4 = *(v3 + 23);
      v6 = *(v3 + 8);
      v8 = v9 + 1;
      v5 = *(v3 + 23);
    }

    else
    {
      v8 = 2;
    }

    if (v5 < 0)
    {
      v4 = v6;
    }

    v2 = v8 + v4;
  }

  else
  {
    v2 = 0;
  }

  v10 = *(this + 31);
  if (v10 < 0)
  {
    v10 = *(this + 2);
  }

  result = (v10 + v2);
  *(this + 9) = result;
  return result;
}

std::string *peernetworking::RequestMedia::CheckTypeAndMergeFrom(peernetworking::RequestMedia *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return peernetworking::RequestMedia::MergeFrom(this, lpsrc);
}

peernetworking::Media *peernetworking::Media::Media(peernetworking::Media *this)
{
  *this = &unk_28270AB20;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  peernetworking::Media::SharedCtor(this);
  return this;
}

void sub_214E0C9F0(_Unwind_Exception *a1)
{
  if (v1[31] < 0)
  {
    operator delete(*v2);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v1);
  _Unwind_Resume(a1);
}

void peernetworking::Media::SharedCtor(peernetworking::Media *this)
{
  v2 = google::protobuf::internal::empty_string_once_init_;
  __dmb(0xBu);
  if (v2 != 2)
  {
    v4[0] = &unk_28270A628;
    v4[1] = google::protobuf::internal::InitEmptyString;
    v5 = 0;
    google::protobuf::GoogleOnceInitImpl(&google::protobuf::internal::empty_string_once_init_, v4);
    google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v4);
  }

  v3 = google::protobuf::internal::empty_string_;
  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  *(this + 5) = google::protobuf::internal::empty_string_;
  *(this + 6) = v3;
  *(this + 4) = 0;
}

void sub_214E0CABC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void peernetworking::Media::~Media(void **this)
{
  *this = &unk_28270AB20;
  peernetworking::RequestAttachment::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  peernetworking::Media::~Media(this);

  JUMPOUT(0x216063B80);
}

uint64_t peernetworking::Media::MergePartialFromCodedStream(peernetworking::Media *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v16, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v15, v16);
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
      {
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        v7 = v6 | 0x100000000;
      }

      if (v7 >> 3 != 2)
      {
        break;
      }

      if (v7 != 18)
      {
        goto LABEL_23;
      }

LABEL_26:
      *(this + 8) |= 2u;
      if (!google::protobuf::internal::empty_string_)
      {
LABEL_37:
        __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
      }

      v12 = *(this + 6);
      if (v12 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v12))
      {
LABEL_34:
        v13 = 0;
        goto LABEL_36;
      }

      if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        v13 = 1;
        *(a2 + 36) = 1;
        goto LABEL_36;
      }
    }

    if (v7 >> 3 != 1)
    {
      break;
    }

    if (v7 == 10)
    {
      *(this + 8) |= 1u;
      if (!google::protobuf::internal::empty_string_)
      {
        goto LABEL_37;
      }

      v9 = *(this + 5);
      if (v9 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v9))
      {
        goto LABEL_34;
      }

      v10 = *(a2 + 1);
      if (v10 < *(a2 + 2) && *v10 == 18)
      {
        *(a2 + 1) = v10 + 1;
        goto LABEL_26;
      }
    }

    else
    {
LABEL_23:
      if (!v7 || (v7 & 7) == 4)
      {
        goto LABEL_35;
      }

LABEL_20:
      if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v15, v4))
      {
        goto LABEL_34;
      }
    }
  }

LABEL_16:
  if (v7)
  {
    v11 = (v7 & 7) == 4;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_35:
  v13 = 1;
LABEL_36:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v15);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v16);
  return v13;
}

void sub_214E0CE1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t peernetworking::Media::SerializeWithCachedSizes(peernetworking::Media *this, google::protobuf::io::CodedOutputStream *a2)
{
  v4 = *(this + 8);
  if (v4)
  {
    google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(1, *(this + 5), a2);
    v4 = *(this + 8);
  }

  if ((v4 & 2) != 0)
  {
    google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(2, *(this + 6), a2);
  }

  v5 = *(this + 31);
  if (v5 < 0)
  {
    v6 = *(this + 1);
    v5 = *(this + 2);
  }

  else
  {
    v6 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v6, v5);
}

uint64_t peernetworking::Media::ByteSize(peernetworking::Media *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_24;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  v4 = *(this + 5);
  v5 = *(v4 + 23);
  v6 = v5;
  v7 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v8 = *(v4 + 23);
  }

  else
  {
    v8 = v7;
  }

  if (v8 >= 0x80)
  {
    v10 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
    v5 = *(v4 + 23);
    v7 = *(v4 + 8);
    v9 = v10 + 1;
    v2 = *(this + 8);
    v6 = *(v4 + 23);
  }

  else
  {
    v9 = 2;
  }

  if (v6 < 0)
  {
    v5 = v7;
  }

  v3 = v9 + v5;
  if ((v2 & 2) != 0)
  {
LABEL_15:
    v11 = *(this + 6);
    v12 = *(v11 + 23);
    v13 = v12;
    v14 = *(v11 + 8);
    if ((v12 & 0x80u) == 0)
    {
      v15 = *(v11 + 23);
    }

    else
    {
      v15 = v14;
    }

    if (v15 >= 0x80)
    {
      v16 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
      v12 = *(v11 + 23);
      v14 = *(v11 + 8);
      v13 = *(v11 + 23);
    }

    else
    {
      v16 = 1;
    }

    if (v13 < 0)
    {
      v12 = v14;
    }

    v3 += v16 + v12 + 1;
  }

LABEL_24:
  v17 = *(this + 31);
  if (v17 < 0)
  {
    v17 = *(this + 2);
  }

  result = (v3 + v17);
  *(this + 9) = result;
  return result;
}

std::string *peernetworking::Media::CheckTypeAndMergeFrom(peernetworking::Media *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return peernetworking::Media::MergeFrom(this, lpsrc);
}

peernetworking::UnavailableMedia *peernetworking::UnavailableMedia::UnavailableMedia(peernetworking::UnavailableMedia *this)
{
  *this = &unk_28270AB98;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  peernetworking::UnavailableMedia::SharedCtor(this);
  return this;
}

void sub_214E0D0B8(_Unwind_Exception *a1)
{
  if (v1[31] < 0)
  {
    operator delete(*v2);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v1);
  _Unwind_Resume(a1);
}

void peernetworking::UnavailableMedia::SharedCtor(peernetworking::UnavailableMedia *this)
{
  v2 = google::protobuf::internal::empty_string_once_init_;
  __dmb(0xBu);
  if (v2 != 2)
  {
    v4[0] = &unk_28270A628;
    v4[1] = google::protobuf::internal::InitEmptyString;
    v5 = 0;
    google::protobuf::GoogleOnceInitImpl(&google::protobuf::internal::empty_string_once_init_, v4);
    google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v4);
  }

  v3 = google::protobuf::internal::empty_string_;
  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  *(this + 4) = 0;
  *(this + 5) = v3;
}

void sub_214E0D180(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void peernetworking::UnavailableMedia::~UnavailableMedia(void **this)
{
  *this = &unk_28270AB98;
  peernetworking::ShareInfo::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  peernetworking::UnavailableMedia::~UnavailableMedia(this);

  JUMPOUT(0x216063B80);
}

uint64_t peernetworking::UnavailableMedia::MergePartialFromCodedStream(peernetworking::UnavailableMedia *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v14, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v13, v14);
  do
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
      {
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        v7 = v6 | 0x100000000;
      }

      if (v7 == 10)
      {
        break;
      }

LABEL_15:
      if (v7)
      {
        v10 = (v7 & 7) == 4;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        v11 = 1;
        goto LABEL_23;
      }

      if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v13, v4))
      {
        goto LABEL_20;
      }
    }

    *(this + 8) |= 1u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v9 = *(this + 5);
    if (v9 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v9))
    {
LABEL_20:
      v11 = 0;
      goto LABEL_23;
    }
  }

  while (*(a2 + 1) != *(a2 + 2) || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10));
  *(a2 + 8) = 0;
  v11 = 1;
  *(a2 + 36) = 1;
LABEL_23:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v13);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v14);
  return v11;
}

void sub_214E0D444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t peernetworking::UnavailableMedia::SerializeWithCachedSizes(peernetworking::UnavailableMedia *this, google::protobuf::io::CodedOutputStream *a2)
{
  if (*(this + 32))
  {
    google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(1, *(this + 5), a2);
  }

  v4 = *(this + 31);
  if (v4 < 0)
  {
    v5 = *(this + 1);
    v4 = *(this + 2);
  }

  else
  {
    v5 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v5, v4);
}

uint64_t peernetworking::UnavailableMedia::ByteSize(peernetworking::UnavailableMedia *this)
{
  if (*(this + 32))
  {
    v3 = *(this + 5);
    v4 = *(v3 + 23);
    v5 = v4;
    v6 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v7 = *(v3 + 23);
    }

    else
    {
      v7 = v6;
    }

    if (v7 >= 0x80)
    {
      v9 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
      v4 = *(v3 + 23);
      v6 = *(v3 + 8);
      v8 = v9 + 1;
      v5 = *(v3 + 23);
    }

    else
    {
      v8 = 2;
    }

    if (v5 < 0)
    {
      v4 = v6;
    }

    v2 = v8 + v4;
  }

  else
  {
    v2 = 0;
  }

  v10 = *(this + 31);
  if (v10 < 0)
  {
    v10 = *(this + 2);
  }

  result = (v10 + v2);
  *(this + 9) = result;
  return result;
}

std::string *peernetworking::UnavailableMedia::CheckTypeAndMergeFrom(peernetworking::UnavailableMedia *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return peernetworking::UnavailableMedia::MergeFrom(this, lpsrc);
}

peernetworking::Invite *peernetworking::Invite::Invite(peernetworking::Invite *this)
{
  *this = &unk_28270AC10;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  peernetworking::Invite::SharedCtor(this);
  return this;
}

void sub_214E0D658(_Unwind_Exception *a1)
{
  if (v1[31] < 0)
  {
    operator delete(*v2);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v1);
  _Unwind_Resume(a1);
}

void peernetworking::Invite::SharedCtor(peernetworking::Invite *this)
{
  v2 = google::protobuf::internal::empty_string_once_init_;
  __dmb(0xBu);
  if (v2 != 2)
  {
    v4[0] = &unk_28270A628;
    v4[1] = google::protobuf::internal::InitEmptyString;
    v5 = 0;
    google::protobuf::GoogleOnceInitImpl(&google::protobuf::internal::empty_string_once_init_, v4);
    google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v4);
  }

  v3 = google::protobuf::internal::empty_string_;
  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  *(this + 5) = google::protobuf::internal::empty_string_;
  *(this + 6) = v3;
  *(this + 4) = 0;
}

void sub_214E0D724(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void peernetworking::Invite::~Invite(void **this)
{
  *this = &unk_28270AC10;
  peernetworking::RequestAttachment::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  peernetworking::Invite::~Invite(this);

  JUMPOUT(0x216063B80);
}

uint64_t peernetworking::Invite::MergePartialFromCodedStream(peernetworking::Invite *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v16, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v15, v16);
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
      {
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        v7 = v6 | 0x100000000;
      }

      if (v7 >> 3 != 2)
      {
        break;
      }

      if (v7 != 18)
      {
        goto LABEL_23;
      }

LABEL_26:
      *(this + 8) |= 2u;
      if (!google::protobuf::internal::empty_string_)
      {
LABEL_37:
        __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
      }

      v12 = *(this + 6);
      if (v12 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v12))
      {
LABEL_34:
        v13 = 0;
        goto LABEL_36;
      }

      if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        v13 = 1;
        *(a2 + 36) = 1;
        goto LABEL_36;
      }
    }

    if (v7 >> 3 != 1)
    {
      break;
    }

    if (v7 == 10)
    {
      *(this + 8) |= 1u;
      if (!google::protobuf::internal::empty_string_)
      {
        goto LABEL_37;
      }

      v9 = *(this + 5);
      if (v9 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v9))
      {
        goto LABEL_34;
      }

      v10 = *(a2 + 1);
      if (v10 < *(a2 + 2) && *v10 == 18)
      {
        *(a2 + 1) = v10 + 1;
        goto LABEL_26;
      }
    }

    else
    {
LABEL_23:
      if (!v7 || (v7 & 7) == 4)
      {
        goto LABEL_35;
      }

LABEL_20:
      if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v15, v4))
      {
        goto LABEL_34;
      }
    }
  }

LABEL_16:
  if (v7)
  {
    v11 = (v7 & 7) == 4;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_35:
  v13 = 1;
LABEL_36:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v15);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v16);
  return v13;
}

void sub_214E0DA84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t peernetworking::Invite::SerializeWithCachedSizes(peernetworking::Invite *this, google::protobuf::io::CodedOutputStream *a2)
{
  v4 = *(this + 8);
  if (v4)
  {
    google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(1, *(this + 5), a2);
    v4 = *(this + 8);
  }

  if ((v4 & 2) != 0)
  {
    google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(2, *(this + 6), a2);
  }

  v5 = *(this + 31);
  if (v5 < 0)
  {
    v6 = *(this + 1);
    v5 = *(this + 2);
  }

  else
  {
    v6 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v6, v5);
}

uint64_t peernetworking::Invite::ByteSize(peernetworking::Invite *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_24;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  v4 = *(this + 5);
  v5 = *(v4 + 23);
  v6 = v5;
  v7 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v8 = *(v4 + 23);
  }

  else
  {
    v8 = v7;
  }

  if (v8 >= 0x80)
  {
    v10 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
    v5 = *(v4 + 23);
    v7 = *(v4 + 8);
    v9 = v10 + 1;
    v2 = *(this + 8);
    v6 = *(v4 + 23);
  }

  else
  {
    v9 = 2;
  }

  if (v6 < 0)
  {
    v5 = v7;
  }

  v3 = v9 + v5;
  if ((v2 & 2) != 0)
  {
LABEL_15:
    v11 = *(this + 6);
    v12 = *(v11 + 23);
    v13 = v12;
    v14 = *(v11 + 8);
    if ((v12 & 0x80u) == 0)
    {
      v15 = *(v11 + 23);
    }

    else
    {
      v15 = v14;
    }

    if (v15 >= 0x80)
    {
      v16 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
      v12 = *(v11 + 23);
      v14 = *(v11 + 8);
      v13 = *(v11 + 23);
    }

    else
    {
      v16 = 1;
    }

    if (v13 < 0)
    {
      v12 = v14;
    }

    v3 += v16 + v12 + 1;
  }

LABEL_24:
  v17 = *(this + 31);
  if (v17 < 0)
  {
    v17 = *(this + 2);
  }

  result = (v3 + v17);
  *(this + 9) = result;
  return result;
}

std::string *peernetworking::Invite::CheckTypeAndMergeFrom(peernetworking::Invite *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return peernetworking::Invite::MergeFrom(this, lpsrc);
}

peernetworking::InviteReply *peernetworking::InviteReply::InviteReply(peernetworking::InviteReply *this)
{
  *this = &unk_28270AC88;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  peernetworking::InviteReply::SharedCtor(this);
  return this;
}

void sub_214E0DD20(_Unwind_Exception *a1)
{
  if (v1[31] < 0)
  {
    operator delete(*v2);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v1);
  _Unwind_Resume(a1);
}

void peernetworking::InviteReply::SharedCtor(peernetworking::InviteReply *this)
{
  v2 = google::protobuf::internal::empty_string_once_init_;
  __dmb(0xBu);
  if (v2 != 2)
  {
    v4[0] = &unk_28270A628;
    v4[1] = google::protobuf::internal::InitEmptyString;
    v5 = 0;
    google::protobuf::GoogleOnceInitImpl(&google::protobuf::internal::empty_string_once_init_, v4);
    google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v4);
  }

  v3 = google::protobuf::internal::empty_string_;
  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  *(this + 48) = 0;
  *(this + 4) = 0;
  *(this + 5) = v3;
}

void sub_214E0DDEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void peernetworking::InviteReply::~InviteReply(void **this)
{
  *this = &unk_28270AC88;
  peernetworking::ShareInfo::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  peernetworking::InviteReply::~InviteReply(this);

  JUMPOUT(0x216063B80);
}

uint64_t peernetworking::InviteReply::MergePartialFromCodedStream(peernetworking::InviteReply *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v19, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v18, v19);
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
      {
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          goto LABEL_16;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        v7 = v6 | 0x100000000;
      }

      if (v7 >> 3 == 2)
      {
        if (v7 == 16)
        {
          v12 = *(a2 + 1);
          v10 = *(a2 + 2);
          goto LABEL_27;
        }

LABEL_23:
        if (!v7 || (v7 & 7) == 4)
        {
          goto LABEL_36;
        }

        goto LABEL_20;
      }

      if (v7 >> 3 == 1)
      {
        break;
      }

LABEL_16:
      if (v7)
      {
        v13 = (v7 & 7) == 4;
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
LABEL_36:
        v16 = 1;
        goto LABEL_38;
      }

LABEL_20:
      if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v18, v4))
      {
        goto LABEL_37;
      }
    }

    if (v7 != 10)
    {
      goto LABEL_23;
    }

    *(this + 8) |= 1u;
    if (!google::protobuf::internal::empty_string_)
    {
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v9 = *(this + 5);
    if (v9 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v9))
    {
      break;
    }

    v11 = *(a2 + 1);
    v10 = *(a2 + 2);
    if (v11 < v10 && *v11 == 16)
    {
      v12 = v11 + 1;
      *(a2 + 1) = v12;
LABEL_27:
      v20 = 0;
      if (v12 >= v10 || (v14 = *v12, (v14 & 0x8000000000000000) != 0))
      {
        if (!google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v20))
        {
          break;
        }

        v14 = v20;
        v15 = *(a2 + 1);
        v10 = *(a2 + 2);
      }

      else
      {
        v15 = v12 + 1;
        *(a2 + 1) = v15;
      }

      *(this + 48) = v14 != 0;
      *(this + 8) |= 2u;
      if (v15 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        v16 = 1;
        *(a2 + 36) = 1;
        goto LABEL_38;
      }
    }
  }

LABEL_37:
  v16 = 0;
LABEL_38:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v18);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v19);
  return v16;
}

void sub_214E0E154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t peernetworking::InviteReply::SerializeWithCachedSizes(peernetworking::InviteReply *this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  v6 = *(this + 8);
  if (v6)
  {
    google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(1, *(this + 5), a2);
    v6 = *(this + 8);
  }

  if ((v6 & 2) != 0)
  {
    google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(this + 48), a2, a4);
  }

  v7 = *(this + 31);
  if (v7 < 0)
  {
    v8 = *(this + 1);
    v7 = *(this + 2);
  }

  else
  {
    v8 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v8, v7);
}

uint64_t peernetworking::InviteReply::ByteSize(peernetworking::InviteReply *this)
{
  v2 = *(this + 32);
  if (*(this + 32))
  {
    if (v2)
    {
      v4 = *(this + 5);
      v5 = *(v4 + 23);
      v6 = v5;
      v7 = *(v4 + 8);
      if ((v5 & 0x80u) == 0)
      {
        v8 = *(v4 + 23);
      }

      else
      {
        v8 = v7;
      }

      if (v8 >= 0x80)
      {
        v10 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
        v5 = *(v4 + 23);
        v7 = *(v4 + 8);
        v9 = v10 + 1;
        v2 = *(this + 8);
        v6 = *(v4 + 23);
      }

      else
      {
        v9 = 2;
      }

      if (v6 < 0)
      {
        v5 = v7;
      }

      v3 = v9 + v5;
    }

    else
    {
      v3 = 0;
    }

    v2 = (v2 & 2) + v3;
  }

  v11 = *(this + 31);
  if (v11 < 0)
  {
    v11 = *(this + 2);
  }

  result = (v2 + v11);
  *(this + 9) = result;
  return result;
}

std::string *peernetworking::InviteReply::CheckTypeAndMergeFrom(peernetworking::InviteReply *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return peernetworking::InviteReply::MergeFrom(this, lpsrc);
}

peernetworking::Identity *peernetworking::Identity::Identity(peernetworking::Identity *this)
{
  *this = &unk_28270AD00;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  peernetworking::Identity::SharedCtor(this);
  return this;
}

void sub_214E0E390(_Unwind_Exception *a1)
{
  if (v1[31] < 0)
  {
    operator delete(*v2);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v1);
  _Unwind_Resume(a1);
}

void peernetworking::Identity::SharedCtor(peernetworking::Identity *this)
{
  v2 = google::protobuf::internal::empty_string_once_init_;
  __dmb(0xBu);
  if (v2 != 2)
  {
    v4[0] = &unk_28270A628;
    v4[1] = google::protobuf::internal::InitEmptyString;
    v5 = 0;
    google::protobuf::GoogleOnceInitImpl(&google::protobuf::internal::empty_string_once_init_, v4);
    google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v4);
  }

  v3 = google::protobuf::internal::empty_string_;
  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  *(this + 5) = google::protobuf::internal::empty_string_;
  *(this + 6) = v3;
  *(this + 7) = v3;
  *(this + 8) = v3;
  *(this + 4) = 0;
}

void sub_214E0E460(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void peernetworking::Identity::~Identity(void **this)
{
  *this = &unk_28270AD00;
  peernetworking::Identity::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  peernetworking::Identity::~Identity(this);

  JUMPOUT(0x216063B80);
}

void peernetworking::Identity::SharedDtor(peernetworking::Identity *this)
{
  if (!google::protobuf::internal::empty_string_)
  {
    versioned_document::Version::SharedCtor();
  }

  v1 = this;
  v2 = *(this + 5);
  if (v2 != google::protobuf::internal::empty_string_)
  {
    if (v2)
    {
      if (*(v2 + 23) < 0)
      {
        operator delete(*v2);
      }

      this = MEMORY[0x216063B80](v2, 0x1012C40EC159624);
      v2 = google::protobuf::internal::empty_string_;
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }
    }

    else
    {
      v2 = google::protobuf::internal::empty_string_;
    }
  }

  v3 = *(v1 + 6);
  if (v3 != v2 && v3 != 0)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    this = MEMORY[0x216063B80](v3, 0x1012C40EC159624);
    v2 = google::protobuf::internal::empty_string_;
  }

  if (!v2)
  {
    versioned_document::Version::SharedCtor();
  }

  v5 = *(v1 + 7);
  if (v5 != v2 && v5)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x216063B80](v5, 0x1012C40EC159624);
    v2 = google::protobuf::internal::empty_string_;
    if (!google::protobuf::internal::empty_string_)
    {
      versioned_document::Version::SharedCtor();
    }
  }

  v6 = *(v1 + 8);
  if (v6 != v2 && v6)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    this = MEMORY[0x216063B80](v6, 0x1012C40EC159624);
  }

  peernetworking::protobuf_AddDesc_peernetworking_2eproto(this);
}

uint64_t peernetworking::Identity::MergePartialFromCodedStream(peernetworking::Identity *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v21, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v20, v21);
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
      {
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
        if ((v7 & 0x100000000) == 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        *(a2 + 8) = v6;
        *(a2 + 1) = v5 + 1;
        v7 = v6 | 0x100000000;
      }

      v9 = v7 >> 3;
      if (v7 >> 3 > 2)
      {
        break;
      }

      if (v9 == 1)
      {
        if (v7 != 10)
        {
          goto LABEL_37;
        }

        *(this + 8) |= 1u;
        if (!google::protobuf::internal::empty_string_)
        {
          goto LABEL_59;
        }

        v11 = *(this + 5);
        if (v11 == google::protobuf::internal::empty_string_)
        {
          operator new();
        }

        if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v11))
        {
          goto LABEL_56;
        }

        v12 = *(a2 + 1);
        if (v12 < *(a2 + 2) && *v12 == 18)
        {
          *(a2 + 1) = v12 + 1;
LABEL_29:
          *(this + 8) |= 2u;
          if (!google::protobuf::internal::empty_string_)
          {
            goto LABEL_59;
          }

          v13 = *(this + 6);
          if (v13 == google::protobuf::internal::empty_string_)
          {
            operator new();
          }

          if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v13))
          {
            goto LABEL_56;
          }

          v14 = *(a2 + 1);
          if (v14 < *(a2 + 2) && *v14 == 26)
          {
            *(a2 + 1) = v14 + 1;
LABEL_41:
            *(this + 8) |= 4u;
            if (!google::protobuf::internal::empty_string_)
            {
              goto LABEL_59;
            }

            v15 = *(this + 7);
            if (v15 == google::protobuf::internal::empty_string_)
            {
              operator new();
            }

            if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v15))
            {
              goto LABEL_56;
            }

            v16 = *(a2 + 1);
            if (v16 < *(a2 + 2) && *v16 == 34)
            {
              *(a2 + 1) = v16 + 1;
              goto LABEL_48;
            }
          }
        }
      }

      else
      {
        if (v9 != 2)
        {
          goto LABEL_15;
        }

        if (v7 == 18)
        {
          goto LABEL_29;
        }

LABEL_37:
        if (!v7 || (v7 & 7) == 4)
        {
          goto LABEL_57;
        }

LABEL_39:
        if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v20, v4))
        {
          goto LABEL_56;
        }
      }
    }

    if (v9 == 3)
    {
      if (v7 == 26)
      {
        goto LABEL_41;
      }

      goto LABEL_37;
    }

    if (v9 != 4)
    {
      break;
    }

    if (v7 != 34)
    {
      goto LABEL_37;
    }

LABEL_48:
    *(this + 8) |= 8u;
    if (!google::protobuf::internal::empty_string_)
    {
LABEL_59:
      __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
    }

    v17 = *(this + 8);
    if (v17 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    if (!google::protobuf::internal::WireFormatLite::ReadString(a2, v17))
    {
LABEL_56:
      v18 = 0;
      goto LABEL_58;
    }

    if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      v18 = 1;
      *(a2 + 36) = 1;
      goto LABEL_58;
    }
  }

LABEL_15:
  if (v7)
  {
    v10 = (v7 & 7) == 4;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    goto LABEL_39;
  }

LABEL_57:
  v18 = 1;
LABEL_58:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v20);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v21);
  return v18;
}

void sub_214E0E9FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t peernetworking::Identity::SerializeWithCachedSizes(peernetworking::Identity *this, google::protobuf::io::CodedOutputStream *a2)
{
  v4 = *(this + 8);
  if (v4)
  {
    google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(1, *(this + 5), a2);
    v4 = *(this + 8);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(2, *(this + 6), a2);
  v4 = *(this + 8);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_10:
  google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(3, *(this + 7), a2);
  if ((*(this + 8) & 8) != 0)
  {
LABEL_5:
    google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(4, *(this + 8), a2);
  }

LABEL_6:
  v5 = *(this + 31);
  if (v5 < 0)
  {
    v6 = *(this + 1);
    v5 = *(this + 2);
  }

  else
  {
    v6 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v6, v5);
}

uint64_t peernetworking::Identity::ByteSize(peernetworking::Identity *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_45;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  v4 = *(this + 5);
  v5 = *(v4 + 23);
  v6 = v5;
  v7 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v8 = *(v4 + 23);
  }

  else
  {
    v8 = v7;
  }

  if (v8 >= 0x80)
  {
    v10 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
    v5 = *(v4 + 23);
    v7 = *(v4 + 8);
    v9 = v10 + 1;
    v2 = *(this + 8);
    v6 = *(v4 + 23);
  }

  else
  {
    v9 = 2;
  }

  if (v6 < 0)
  {
    v5 = v7;
  }

  v3 = v9 + v5;
  if ((v2 & 2) != 0)
  {
LABEL_15:
    v11 = *(this + 6);
    v12 = *(v11 + 23);
    v13 = v12;
    v14 = *(v11 + 8);
    if ((v12 & 0x80u) == 0)
    {
      v15 = *(v11 + 23);
    }

    else
    {
      v15 = v14;
    }

    if (v15 >= 0x80)
    {
      v16 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
      v12 = *(v11 + 23);
      v14 = *(v11 + 8);
      v2 = *(this + 8);
      v13 = *(v11 + 23);
    }

    else
    {
      v16 = 1;
    }

    if (v13 < 0)
    {
      v12 = v14;
    }

    v3 += v16 + v12 + 1;
  }

LABEL_24:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_36;
  }

  v17 = *(this + 7);
  v18 = *(v17 + 23);
  v19 = v18;
  v20 = *(v17 + 8);
  if ((v18 & 0x80u) == 0)
  {
    v21 = *(v17 + 23);
  }

  else
  {
    v21 = v20;
  }

  if (v21 >= 0x80)
  {
    v22 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21);
    v18 = *(v17 + 23);
    v20 = *(v17 + 8);
    v2 = *(this + 8);
    v19 = *(v17 + 23);
  }

  else
  {
    v22 = 1;
  }

  if (v19 < 0)
  {
    v18 = v20;
  }

  v3 += v22 + v18 + 1;
  if ((v2 & 8) != 0)
  {
LABEL_36:
    v23 = *(this + 8);
    v24 = *(v23 + 23);
    v25 = v24;
    v26 = *(v23 + 8);
    if ((v24 & 0x80u) == 0)
    {
      v27 = *(v23 + 23);
    }

    else
    {
      v27 = v26;
    }

    if (v27 >= 0x80)
    {
      v28 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27);
      v24 = *(v23 + 23);
      v26 = *(v23 + 8);
      v25 = *(v23 + 23);
    }

    else
    {
      v28 = 1;
    }

    if (v25 < 0)
    {
      v24 = v26;
    }

    v3 += v28 + v24 + 1;
  }

LABEL_45:
  v29 = *(this + 31);
  if (v29 < 0)
  {
    v29 = *(this + 2);
  }

  result = (v3 + v29);
  *(this + 9) = result;
  return result;
}

std::string *peernetworking::Identity::CheckTypeAndMergeFrom(peernetworking::Identity *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return peernetworking::Identity::MergeFrom(this, lpsrc);
}

void peernetworking::KeepAlive::~KeepAlive(void **this)
{
  *this = &unk_28270AD78;
  peernetworking::protobuf_AddDesc_peernetworking_2eproto(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  peernetworking::KeepAlive::~KeepAlive(this);

  JUMPOUT(0x216063B80);
}

uint64_t peernetworking::KeepAlive::MergePartialFromCodedStream(peernetworking::KeepAlive *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v10, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v9, v10);
  do
  {
    v4 = *(a2 + 1);
    if (v4 >= *(a2 + 2) || (TagFallback = *v4, TagFallback < 1))
    {
      TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      *(a2 + 8) = TagFallback;
    }

    else
    {
      *(a2 + 8) = TagFallback;
      *(a2 + 1) = v4 + 1;
    }

    if (TagFallback)
    {
      v6 = (TagFallback & 7) == 4;
    }

    else
    {
      v6 = 1;
    }

    v7 = v6;
  }

  while (!v6 && google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback, v9, v3));
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v9);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v10);
  return v7;
}

void sub_214E0EEE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t peernetworking::KeepAlive::SerializeWithCachedSizes(peernetworking::KeepAlive *this, google::protobuf::io::CodedOutputStream *a2)
{
  v3 = *(this + 31);
  if (v3 < 0)
  {
    v4 = *(this + 1);
    v3 = *(this + 2);
  }

  else
  {
    v4 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v4, v3);
}

uint64_t peernetworking::KeepAlive::ByteSize(peernetworking::KeepAlive *this)
{
  v1 = *(this + 31);
  if (v1 < 0)
  {
    v1 = *(this + 2);
  }

  *(this + 9) = v1;
  return v1;
}

std::string *peernetworking::KeepAlive::CheckTypeAndMergeFrom(peernetworking::KeepAlive *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return peernetworking::KeepAlive::MergeFrom(this, lpsrc);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<peernetworking::Identity>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/repeated_field.h", 885);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/repeated_field.h", 886);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (size()): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*a1 + 8 * a2);
}

void sub_214E0F168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<peernetworking::Identity>::TypeHandler>(google::protobuf::internal::RepeatedPtrFieldBase *this, google::protobuf::internal::RepeatedPtrFieldBase *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/repeated_field.h", 927);
    v4 = google::protobuf::internal::LogMessage::operator<<(v12, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v11, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
  }

  result = google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, *(a2 + 2) + *(this + 2));
  if (*(a2 + 2) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<peernetworking::Identity>::TypeHandler>(a2, v6);
      v8 = *(this + 3);
      v9 = *(this + 2);
      if (v9 >= v8)
      {
        if (v8 == *(this + 4))
        {
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this, v8 + 1);
        }

        google::protobuf::internal::GenericTypeHandler<peernetworking::Identity>::New();
      }

      v10 = *this;
      *(this + 2) = v9 + 1;
      result = peernetworking::Identity::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
    }

    while (v6 < *(a2 + 2));
  }

  return result;
}

void sub_214E0F2B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t ICProtobufUtilitiesParseArchiveFromNSData<airdrop_document::Document>(google::protobuf::MessageLite *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 bytes];
  v5 = ICTTBoundedCheckedCastNSUIntegerToUInt32([v3 length]);
  v6 = google::protobuf::MessageLite::ParseFromArray(a1, v4, v5);

  return v6;
}

id ICProtobufUtilitiesNSDataFromArchive<airdrop_document::Document>(google::protobuf::MessageLite *a1)
{
  v2 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:(*(*a1 + 72))(a1)];
  if ([v2 length] >= 0xFFFFFFFF)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"[data length] < 4294967295U" functionName:"NSData *ICProtobufUtilitiesNSDataFromArchive(const T &) [T = airdrop_document::Document]" simulateCrash:1 showAlert:0 format:@"Data length greater than 32bit max"];
  }

  google::protobuf::MessageLite::SerializeToArray(a1, [v2 mutableBytes], objc_msgSend(v2, "length"));

  return v2;
}

void sub_214E1301C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__22(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214E13AC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_214E14B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214E17788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214E17A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

_BYTE *OUTLINED_FUNCTION_7_1(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

__CFString *ICStringFromSyncingApproach(uint64_t a1)
{
  if (a1)
  {
    return @"FastSync";
  }

  else
  {
    return @"FullSync";
  }
}

void sub_214E18E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214E1923C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214E19E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214E1A108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__23(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214E1A4A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214E258F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214E25C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214E260B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_14(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

void sub_214E2BB50(_Unwind_Exception *a1)
{
  MEMORY[0x216063B80](v2, 0x10B3C40417120EDLL);

  _Unwind_Resume(a1);
}

void sub_214E2BC3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  topotext::ParagraphStyle::~ParagraphStyle(va);
  _Unwind_Resume(a1);
}

BOOL ICDrawingCommandID::operator<(uint64_t a1, uint64_t a2)
{
  if (*a1 < *a2)
  {
    return 1;
  }

  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = [*(a1 + 8) TTCompare:*(a2 + 8)];
  if (v5 == -1)
  {
    return 1;
  }

  if (v5)
  {
    return 0;
  }

  return *(a1 + 16) < *(a2 + 16);
}

BOOL ICDrawingCommandID::operator<=(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 16) == *(a2 + 16) && ([*(a1 + 8) isEqual:*(a2 + 8)] & 1) != 0)
  {
    return 1;
  }

  return ICDrawingCommandID::operator<(a1, a2);
}

void google::protobuf::internal::DeleteEmptyString(google::protobuf::internal *this)
{
  if (google::protobuf::internal::empty_string_)
  {
    if (*(google::protobuf::internal::empty_string_ + 23) < 0)
    {
      operator delete(*google::protobuf::internal::empty_string_);
    }

    JUMPOUT(0x216063B80);
  }
}

void sub_214E302F0(_Unwind_Exception *a1)
{
  MEMORY[0x216063B80](v4, 0x1093C4020A6E6BFLL);

  _Unwind_Resume(a1);
}

void sub_214E30F28(_Unwind_Exception *a1)
{
  MEMORY[0x216063B80](v2, 0x10B3C407D90225ELL);

  _Unwind_Resume(a1);
}

void sub_214E334C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214E3371C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214E34E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214E368AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__25(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214E36B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__26(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214E36CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214E374EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214E377C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214E38350(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

__CFString *NSStringFromAccountDataLockedNotesMode(int a1)
{
  v1 = @"Unknown";
  if (a1 == 1)
  {
    v1 = @"CustomPassword";
  }

  if (a1 == 2)
  {
    return @"DevicePassword";
  }

  else
  {
    return v1;
  }
}

void sub_214E3B4E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_214E3C778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  versioned_document::Version::~Version(va);
  _Unwind_Resume(a1);
}

void sub_214E3CA78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_214E3CD1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);

  _Unwind_Resume(a1);
}

void sub_214E3D83C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__27(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214E413A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  objc_destroyWeak((v34 + 72));
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v35 - 168), 8);
  _Block_object_dispose((v35 - 136), 8);
  objc_destroyWeak((v35 - 104));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__28(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214E4262C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214E47298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_214E47AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__29(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214E4B840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ICMainContext()
{
  v0 = +[ICNoteContext sharedContext];
  v1 = [v0 managedObjectContext];

  return v1;
}

void OUTLINED_FUNCTION_11_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_debug_impl(a1, v4, OS_LOG_TYPE_DEBUG, a4, v5, 0xCu);
}

void sub_214E4D6B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x216063B80](v10, 0x1093C4020A6E6BFLL);

  _Unwind_Resume(a1);
}

void sub_214E4D80C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x216063B80](v12, 0x10B3C407D90225ELL);

  _Unwind_Resume(a1);
}

void sub_214E4E494(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_214E50200(_Unwind_Exception *a1)
{
  MEMORY[0x216063B80](v2, 0x1093C4020A6E6BFLL);

  _Unwind_Resume(a1);
}

void sub_214E507B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_214E51F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214E52430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214E528E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  drawing::Rectangle::~Rectangle(va);

  _Unwind_Resume(a1);
}

void sub_214E52C7C(_Unwind_Exception *a1)
{
  MEMORY[0x216063B80](v2, 0x1093C405ACC521ELL);

  _Unwind_Resume(a1);
}

void sub_214E52F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214E5490C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214E54D18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214E55020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214E55798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__31(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214E55B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214E5735C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214E5792C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214E57D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214E5803C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214E58450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__32(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214E5875C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214E59860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214E599F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214E5A69C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__33(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_214E5B3C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  MEMORY[0x216063B80](v11, 0x10B3C407D90225ELL);

  _Unwind_Resume(a1);
}

void sub_214E5BA78(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

__CFString *ICStringForDocumentMergeControllingReason(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return @"Selection";
  }

  else
  {
    return off_2781979D8[a1 - 1];
  }
}

void sub_214E5C470(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  topotext::Todo::~Todo(va);
  _Unwind_Resume(a1);
}

void sub_214E5D8B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_214E5F1E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_214E60F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v9 + 40));
  _Unwind_Resume(a1);
}

void sub_214E64CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__35(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_3_7(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

uint64_t OUTLINED_FUNCTION_4_5(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *result = a4;
  *(result + 4) = a2;
  *(result + 12) = 2048;
  *(result + 14) = a3;
  return result;
}

uint64_t topotext::protobuf_ShutdownFile_topotext_2eproto(topotext *this)
{
  if (topotext::String::default_instance_)
  {
    (*(*topotext::String::default_instance_ + 8))(topotext::String::default_instance_);
  }

  if (topotext::VectorTimestamp::default_instance_)
  {
    (*(*topotext::VectorTimestamp::default_instance_ + 8))(topotext::VectorTimestamp::default_instance_);
  }

  if (topotext::VectorTimestamp_Clock::default_instance_)
  {
    (*(*topotext::VectorTimestamp_Clock::default_instance_ + 8))(topotext::VectorTimestamp_Clock::default_instance_);
  }

  if (topotext::VectorTimestamp_Clock_ReplicaClock::default_instance_)
  {
    (*(*topotext::VectorTimestamp_Clock_ReplicaClock::default_instance_ + 8))(topotext::VectorTimestamp_Clock_ReplicaClock::default_instance_);
  }

  if (topotext::CharID::default_instance_)
  {
    (*(*topotext::CharID::default_instance_ + 8))(topotext::CharID::default_instance_);
  }

  if (topotext::Substring::default_instance_)
  {
    (*(*topotext::Substring::default_instance_ + 8))(topotext::Substring::default_instance_);
  }

  if (topotext::Selection::default_instance_)
  {
    (*(*topotext::Selection::default_instance_ + 8))(topotext::Selection::default_instance_);
  }

  if (topotext::Selection_Range::default_instance_)
  {
    (*(*topotext::Selection_Range::default_instance_ + 8))(topotext::Selection_Range::default_instance_);
  }

  if (topotext::AttributeRun::default_instance_)
  {
    (*(*topotext::AttributeRun::default_instance_ + 8))(topotext::AttributeRun::default_instance_);
  }

  if (topotext::Font::default_instance_)
  {
    (*(*topotext::Font::default_instance_ + 8))(topotext::Font::default_instance_);
  }

  if (topotext::ParagraphStyle::default_instance_)
  {
    (*(*topotext::ParagraphStyle::default_instance_ + 8))(topotext::ParagraphStyle::default_instance_);
  }

  if (topotext::AttachmentInfo::default_instance_)
  {
    (*(*topotext::AttachmentInfo::default_instance_ + 8))(topotext::AttachmentInfo::default_instance_);
  }

  if (topotext::Attachment::default_instance_)
  {
    (*(*topotext::Attachment::default_instance_ + 8))(topotext::Attachment::default_instance_);
  }

  if (topotext::Location::default_instance_)
  {
    (*(*topotext::Location::default_instance_ + 8))(topotext::Location::default_instance_);
  }

  if (topotext::Media::default_instance_)
  {
    (*(*topotext::Media::default_instance_ + 8))(topotext::Media::default_instance_);
  }

  if (topotext::PreviewImage::default_instance_)
  {
    (*(*topotext::PreviewImage::default_instance_ + 8))(topotext::PreviewImage::default_instance_);
  }

  if (topotext::Todo::default_instance_)
  {
    (*(*topotext::Todo::default_instance_ + 8))(topotext::Todo::default_instance_);
  }

  if (topotext::Color::default_instance_)
  {
    (*(*topotext::Color::default_instance_ + 8))(topotext::Color::default_instance_);
  }

  if (topotext::BoxedValue::default_instance_)
  {
    (*(*topotext::BoxedValue::default_instance_ + 8))(topotext::BoxedValue::default_instance_);
  }

  result = topotext::WallClockMergeableValue::default_instance_;
  if (topotext::WallClockMergeableValue::default_instance_)
  {
    v2 = *(*topotext::WallClockMergeableValue::default_instance_ + 8);

    return v2();
  }

  return result;
}

double topotext::VectorTimestamp::VectorTimestamp(topotext::VectorTimestamp *this)
{
  *this = &unk_28270B6B0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  return result;
}

double topotext::VectorTimestamp_Clock_ReplicaClock::VectorTimestamp_Clock_ReplicaClock(topotext::VectorTimestamp_Clock_ReplicaClock *this)
{
  *this = &unk_28270B5C0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

double topotext::CharID::CharID(topotext::CharID *this)
{
  *this = &unk_28270B728;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

double topotext::Substring::Substring(topotext::Substring *this)
{
  *this = &unk_28270B7A0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 53) = 0;
  return result;
}

double topotext::Selection_Range::Selection_Range(topotext::Selection_Range *this)
{
  *this = &unk_28270B818;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

double topotext::Color::Color(topotext::Color *this)
{
  *this = &unk_28270BD40;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

std::string *topotext::String::MergeFrom(topotext::String *this, const topotext::String *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/topotext.pb.cc", 405);
    v4 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v18, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<topotext::Substring>::TypeHandler>((this + 48), (a2 + 48));
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<topotext::AttributeRun>::TypeHandler>((this + 80), (a2 + 80));
  v5 = google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<topotext::Attachment>::TypeHandler>((this + 104), (a2 + 104));
  LOBYTE(v6) = *(a2 + 32);
  if (v6)
  {
    if (*(a2 + 32))
    {
      v7 = *(a2 + 5);
      *(this + 8) |= 1u;
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v8 = *(this + 5);
      if (v8 == google::protobuf::internal::empty_string_)
      {
        operator new();
      }

      v5 = std::string::operator=(v8, v7);
      v6 = *(a2 + 8);
    }

    if ((v6 & 4) != 0)
    {
      *(this + 8) |= 4u;
      v9 = *(this + 9);
      if (!v9)
      {
        operator new();
      }

      v10 = *(a2 + 9);
      if (!v10)
      {
        topotext::protobuf_AddDesc_topotext_2eproto(v5);
        v10 = *(topotext::String::default_instance_ + 72);
      }

      topotext::VectorTimestamp::MergeFrom(v9, v10);
    }
  }

  v13 = *(a2 + 1);
  v12 = a2 + 8;
  v11 = v13;
  v14 = v12[23];
  if (v14 >= 0)
  {
    v15 = v12;
  }

  else
  {
    v15 = v11;
  }

  if (v14 >= 0)
  {
    v16 = v12[23];
  }

  else
  {
    v16 = *(v12 + 1);
  }

  return std::string::append((this + 8), v15, v16);
}

void sub_214E66644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t topotext::VectorTimestamp::Clear(topotext::VectorTimestamp *this)
{
  result = google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 40);
  *(this + 8) = 0;
  if (*(this + 31) < 0)
  {
    **(this + 1) = 0;
    *(this + 2) = 0;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 31) = 0;
  }

  return result;
}

uint64_t topotext::String::SerializeWithCachedSizes(topotext::String *this, google::protobuf::io::CodedOutputStream *a2)
{
  v3 = this;
  if (*(this + 32))
  {
    this = google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(2, *(this + 5), a2);
  }

  if (*(v3 + 14) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::Substring>::TypeHandler>(v3 + 48, v4);
      this = google::protobuf::internal::WireFormatLite::WriteMessage(3, v5, a2);
      ++v4;
    }

    while (v4 < *(v3 + 14));
  }

  if ((*(v3 + 32) & 4) != 0)
  {
    v6 = *(v3 + 9);
    if (!v6)
    {
      topotext::protobuf_AddDesc_topotext_2eproto(this);
      v6 = *(topotext::String::default_instance_ + 72);
    }

    google::protobuf::internal::WireFormatLite::WriteMessage(4, v6, a2);
  }

  if (*(v3 + 22) >= 1)
  {
    v7 = 0;
    do
    {
      v8 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::AttributeRun>::TypeHandler>(v3 + 80, v7);
      google::protobuf::internal::WireFormatLite::WriteMessage(5, v8, a2);
      ++v7;
    }

    while (v7 < *(v3 + 22));
  }

  if (*(v3 + 28) >= 1)
  {
    v9 = 0;
    do
    {
      v10 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::Attachment>::TypeHandler>(v3 + 104, v9);
      google::protobuf::internal::WireFormatLite::WriteMessage(6, v10, a2);
      ++v9;
    }

    while (v9 < *(v3 + 28));
  }

  v11 = *(v3 + 31);
  if (v11 < 0)
  {
    v12 = *(v3 + 1);
    v11 = *(v3 + 2);
  }

  else
  {
    v12 = v3 + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v12, v11);
}

uint64_t topotext::String::ByteSize(topotext::String *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_21;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 32) & 4) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v4 = *(this + 5);
  v5 = *(v4 + 23);
  v6 = v5;
  v7 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v8 = *(v4 + 23);
  }

  else
  {
    v8 = v7;
  }

  if (v8 >= 0x80)
  {
    v10 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
    v5 = *(v4 + 23);
    v7 = *(v4 + 8);
    v9 = v10 + 1;
    v2 = *(this + 8);
    v6 = *(v4 + 23);
  }

  else
  {
    v9 = 2;
  }

  if (v6 < 0)
  {
    v5 = v7;
  }

  v3 = v9 + v5;
  if ((v2 & 4) != 0)
  {
LABEL_15:
    v11 = *(this + 9);
    if (!v11)
    {
      topotext::protobuf_AddDesc_topotext_2eproto(0);
      v11 = *(topotext::String::default_instance_ + 72);
    }

    v12 = topotext::VectorTimestamp::ByteSize(v11);
    v13 = v12;
    if (v12 >= 0x80)
    {
      v14 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12);
    }

    else
    {
      v14 = 1;
    }

    v3 += v13 + v14 + 1;
  }

LABEL_21:
  v15 = *(this + 14);
  v16 = v15 + v3;
  if (v15 >= 1)
  {
    v17 = 0;
    do
    {
      v18 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::Substring>::TypeHandler>(this + 48, v17);
      v19 = topotext::Substring::ByteSize(v18);
      v20 = v19;
      if (v19 >= 0x80)
      {
        v21 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19);
      }

      else
      {
        v21 = 1;
      }

      v16 += v20 + v21;
      ++v17;
    }

    while (v17 < *(this + 14));
  }

  v22 = *(this + 22);
  v23 = v22 + v16;
  if (v22 >= 1)
  {
    v24 = 0;
    do
    {
      v25 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::AttributeRun>::TypeHandler>(this + 80, v24);
      v26 = topotext::AttributeRun::ByteSize(v25);
      v27 = v26;
      if (v26 >= 0x80)
      {
        v28 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26);
      }

      else
      {
        v28 = 1;
      }

      v23 += v27 + v28;
      ++v24;
    }

    while (v24 < *(this + 22));
  }

  v29 = *(this + 28);
  v30 = v29 + v23;
  if (v29 >= 1)
  {
    v31 = 0;
    do
    {
      v32 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::Attachment>::TypeHandler>(this + 104, v31);
      v33 = topotext::Attachment::ByteSize(v32);
      v34 = v33;
      if (v33 >= 0x80)
      {
        v35 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33);
      }

      else
      {
        v35 = 1;
      }

      v30 += v34 + v35;
      ++v31;
    }

    while (v31 < *(this + 28));
  }

  v36 = *(this + 31);
  if (v36 < 0)
  {
    v36 = *(this + 2);
  }

  result = (v30 + v36);
  *(this + 9) = result;
  return result;
}

std::string *topotext::String::CheckTypeAndMergeFrom(topotext::String *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return topotext::String::MergeFrom(this, lpsrc);
}

std::string *topotext::VectorTimestamp::MergeFrom(topotext::VectorTimestamp *this, const topotext::VectorTimestamp *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/topotext.pb.cc", 1073);
    v4 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v12, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<topotext::VectorTimestamp_Clock>::TypeHandler>((this + 40), (a2 + 40));
  v7 = *(a2 + 1);
  v6 = a2 + 8;
  v5 = v7;
  v8 = v6[23];
  if (v8 >= 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  if (v8 >= 0)
  {
    v10 = v6[23];
  }

  else
  {
    v10 = *(v6 + 1);
  }

  return std::string::append((this + 8), v9, v10);
}

void sub_214E66BD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *topotext::VectorTimestamp_Clock_ReplicaClock::MergeFrom(topotext::VectorTimestamp_Clock_ReplicaClock *this, const topotext::VectorTimestamp_Clock_ReplicaClock *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v16, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/topotext.pb.cc", 649);
    v4 = google::protobuf::internal::LogMessage::operator<<(v16, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v15, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      v6 = *(a2 + 10);
      *(this + 8) |= 1u;
      *(this + 10) = v6;
      v5 = *(a2 + 8);
    }

    if ((v5 & 2) != 0)
    {
      v7 = *(a2 + 11);
      *(this + 8) |= 2u;
      *(this + 11) = v7;
    }
  }

  v10 = *(a2 + 1);
  v9 = a2 + 8;
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

  return std::string::append((this + 8), v12, v13);
}

void sub_214E66CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t topotext::VectorTimestamp_Clock_ReplicaClock::Clear(uint64_t this)
{
  *(this + 40) = 0;
  *(this + 32) = 0;
  if (*(this + 31) < 0)
  {
    **(this + 8) = 0;
    *(this + 16) = 0;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 31) = 0;
  }

  return this;
}

uint64_t topotext::VectorTimestamp_Clock_ReplicaClock::SerializeWithCachedSizes(topotext::VectorTimestamp_Clock_ReplicaClock *this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  v6 = *(this + 8);
  if (v6)
  {
    google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 10), a2, a4);
    v6 = *(this + 8);
  }

  if ((v6 & 2) != 0)
  {
    google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(this + 11), a2, a4);
  }

  v7 = *(this + 31);
  if (v7 < 0)
  {
    v8 = *(this + 1);
    v7 = *(this + 2);
  }

  else
  {
    v8 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v8, v7);
}

uint64_t topotext::VectorTimestamp_Clock_ReplicaClock::ByteSize(topotext::VectorTimestamp_Clock_ReplicaClock *this)
{
  v2 = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_14;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_14;
    }

LABEL_10:
    v5 = *(this + 11);
    if (v5 >= 0x80)
    {
      v6 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    }

    else
    {
      v6 = 2;
    }

    v3 += v6;
    goto LABEL_14;
  }

  v4 = *(this + 10);
  if (v4 >= 0x80)
  {
    v3 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    if ((*(this + 8) & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v3 = 2;
  if ((v2 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_14:
  v7 = *(this + 31);
  if (v7 < 0)
  {
    v7 = *(this + 2);
  }

  result = (v3 + v7);
  *(this + 9) = result;
  return result;
}

std::string *topotext::VectorTimestamp_Clock_ReplicaClock::CheckTypeAndMergeFrom(topotext::VectorTimestamp_Clock_ReplicaClock *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return topotext::VectorTimestamp_Clock_ReplicaClock::MergeFrom(this, lpsrc);
}

std::string *topotext::VectorTimestamp_Clock::MergeFrom(topotext::VectorTimestamp_Clock *this, const topotext::VectorTimestamp_Clock *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/topotext.pb.cc", 881);
    v4 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v14, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<topotext::VectorTimestamp_Clock_ReplicaClock>::TypeHandler>((this + 48), (a2 + 48));
  if (*(a2 + 32))
  {
    v5 = *(a2 + 5);
    *(this + 8) |= 1u;
    if (!google::protobuf::internal::empty_string_)
    {
      versioned_document::Version::SharedCtor();
    }

    v6 = *(this + 5);
    if (v6 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    std::string::operator=(v6, v5);
  }

  v9 = *(a2 + 1);
  v8 = a2 + 8;
  v7 = v9;
  v10 = v8[23];
  if (v10 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v10 >= 0)
  {
    v12 = v8[23];
  }

  else
  {
    v12 = *(v8 + 1);
  }

  return std::string::append((this + 8), v11, v12);
}

void sub_214E67030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t topotext::VectorTimestamp_Clock::Clear(topotext::VectorTimestamp_Clock *this)
{
  if (*(this + 32))
  {
    if (!google::protobuf::internal::empty_string_)
    {
      versioned_document::Version::SharedCtor();
    }

    v2 = *(this + 5);
    if (v2 != google::protobuf::internal::empty_string_)
    {
      if (*(v2 + 23) < 0)
      {
        **v2 = 0;
        *(v2 + 8) = 0;
      }

      else
      {
        *v2 = 0;
        *(v2 + 23) = 0;
      }
    }
  }

  result = google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 48);
  *(this + 8) = 0;
  if (*(this + 31) < 0)
  {
    **(this + 1) = 0;
    *(this + 2) = 0;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 31) = 0;
  }

  return result;
}

uint64_t topotext::VectorTimestamp_Clock::SerializeWithCachedSizes(topotext::VectorTimestamp_Clock *this, google::protobuf::io::CodedOutputStream *a2)
{
  if (*(this + 32))
  {
    google::protobuf::internal::WireFormatLite::WriteBytesMaybeAliased(1, *(this + 5), a2);
  }

  if (*(this + 14) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::VectorTimestamp_Clock_ReplicaClock>::TypeHandler>(this + 48, v4);
      google::protobuf::internal::WireFormatLite::WriteMessage(2, v5, a2);
      ++v4;
    }

    while (v4 < *(this + 14));
  }

  v6 = *(this + 31);
  if (v6 < 0)
  {
    v7 = *(this + 1);
    v6 = *(this + 2);
  }

  else
  {
    v7 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v7, v6);
}

uint64_t topotext::VectorTimestamp_Clock::ByteSize(topotext::VectorTimestamp_Clock *this)
{
  if (*(this + 32))
  {
    v3 = *(this + 5);
    v4 = *(v3 + 23);
    v5 = v4;
    v6 = *(v3 + 8);
    if ((v4 & 0x80u) == 0)
    {
      v7 = *(v3 + 23);
    }

    else
    {
      v7 = v6;
    }

    if (v7 >= 0x80)
    {
      v9 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
      v4 = *(v3 + 23);
      v6 = *(v3 + 8);
      v8 = v9 + 1;
      v5 = *(v3 + 23);
    }

    else
    {
      v8 = 2;
    }

    if (v5 < 0)
    {
      v4 = v6;
    }

    v2 = v8 + v4;
  }

  else
  {
    v2 = 0;
  }

  v10 = *(this + 14);
  v11 = v10 + v2;
  if (v10 >= 1)
  {
    v12 = 0;
    do
    {
      v13 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::VectorTimestamp_Clock_ReplicaClock>::TypeHandler>(this + 48, v12);
      v14 = topotext::VectorTimestamp_Clock_ReplicaClock::ByteSize(v13);
      v15 = v14;
      if (v14 >= 0x80)
      {
        v16 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
      }

      else
      {
        v16 = 1;
      }

      v11 += v15 + v16;
      ++v12;
    }

    while (v12 < *(this + 14));
  }

  v17 = *(this + 31);
  if (v17 < 0)
  {
    v17 = *(this + 2);
  }

  result = (v11 + v17);
  *(this + 9) = result;
  return result;
}

std::string *topotext::VectorTimestamp_Clock::CheckTypeAndMergeFrom(topotext::VectorTimestamp_Clock *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return topotext::VectorTimestamp_Clock::MergeFrom(this, lpsrc);
}

uint64_t topotext::VectorTimestamp::SerializeWithCachedSizes(topotext::VectorTimestamp *this, google::protobuf::io::CodedOutputStream *a2)
{
  if (*(this + 12) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::VectorTimestamp_Clock>::TypeHandler>(this + 40, v4);
      google::protobuf::internal::WireFormatLite::WriteMessage(1, v5, a2);
      ++v4;
    }

    while (v4 < *(this + 12));
  }

  v6 = *(this + 31);
  if (v6 < 0)
  {
    v7 = *(this + 1);
    v6 = *(this + 2);
  }

  else
  {
    v7 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v7, v6);
}

uint64_t topotext::VectorTimestamp::ByteSize(topotext::VectorTimestamp *this)
{
  v2 = *(this + 12);
  if (v2 >= 1)
  {
    v3 = 0;
    do
    {
      v4 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::VectorTimestamp_Clock>::TypeHandler>(this + 40, v3);
      v5 = topotext::VectorTimestamp_Clock::ByteSize(v4);
      v6 = v5;
      if (v5 >= 0x80)
      {
        v7 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
      }

      else
      {
        v7 = 1;
      }

      v2 += v6 + v7;
      ++v3;
    }

    while (v3 < *(this + 12));
  }

  v8 = *(this + 31);
  if (v8 < 0)
  {
    v8 = *(this + 2);
  }

  result = (v2 + v8);
  *(this + 9) = result;
  return result;
}

std::string *topotext::VectorTimestamp::CheckTypeAndMergeFrom(topotext::VectorTimestamp *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return topotext::VectorTimestamp::MergeFrom(this, lpsrc);
}

std::string *topotext::CharID::MergeFrom(topotext::CharID *this, const topotext::CharID *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v16, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/topotext.pb.cc", 1303);
    v4 = google::protobuf::internal::LogMessage::operator<<(v16, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v15, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      v6 = *(a2 + 10);
      *(this + 8) |= 1u;
      *(this + 10) = v6;
      v5 = *(a2 + 8);
    }

    if ((v5 & 2) != 0)
    {
      v7 = *(a2 + 11);
      *(this + 8) |= 2u;
      *(this + 11) = v7;
    }
  }

  v10 = *(a2 + 1);
  v9 = a2 + 8;
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

  return std::string::append((this + 8), v12, v13);
}

void sub_214E6766C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t topotext::CharID::Clear(uint64_t this)
{
  *(this + 40) = 0;
  *(this + 32) = 0;
  if (*(this + 31) < 0)
  {
    **(this + 8) = 0;
    *(this + 16) = 0;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 31) = 0;
  }

  return this;
}

uint64_t topotext::CharID::SerializeWithCachedSizes(topotext::CharID *this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  v6 = *(this + 8);
  if (v6)
  {
    google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 10), a2, a4);
    v6 = *(this + 8);
  }

  if ((v6 & 2) != 0)
  {
    google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(this + 11), a2, a4);
  }

  v7 = *(this + 31);
  if (v7 < 0)
  {
    v8 = *(this + 1);
    v7 = *(this + 2);
  }

  else
  {
    v8 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v8, v7);
}

uint64_t topotext::CharID::ByteSize(topotext::CharID *this)
{
  v2 = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_14;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_14;
    }

LABEL_10:
    v5 = *(this + 11);
    if (v5 >= 0x80)
    {
      v6 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    }

    else
    {
      v6 = 2;
    }

    v3 += v6;
    goto LABEL_14;
  }

  v4 = *(this + 10);
  if (v4 >= 0x80)
  {
    v3 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
    if ((*(this + 8) & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v3 = 2;
  if ((v2 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_14:
  v7 = *(this + 31);
  if (v7 < 0)
  {
    v7 = *(this + 2);
  }

  result = (v3 + v7);
  *(this + 9) = result;
  return result;
}

std::string *topotext::CharID::CheckTypeAndMergeFrom(topotext::CharID *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return topotext::CharID::MergeFrom(this, lpsrc);
}

std::string *topotext::Substring::MergeFrom(topotext::Substring *this, const topotext::Substring *a2)
{
  v3 = this;
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v22, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/topotext.pb.cc", 1654);
    v4 = google::protobuf::internal::LogMessage::operator<<(v22, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v21, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v22[0].__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::LogMessage(v22, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/google/protobuf/repeated_field.h", 729);
    v5 = google::protobuf::internal::LogMessage::operator<<(v22, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v21, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v22[0].__r_.__value_.__l.__data_);
  }

  v6 = *(a2 + 18);
  if (v6)
  {
    google::protobuf::RepeatedField<unsigned int>::Reserve(v3 + 64, *(v3 + 18) + v6);
    this = memcpy((*(v3 + 8) + 4 * *(v3 + 18)), *(a2 + 8), 4 * *(a2 + 18));
    *(v3 + 18) += *(a2 + 18);
  }

  LOBYTE(v7) = *(a2 + 32);
  if (!v7)
  {
    goto LABEL_11;
  }

  if ((*(a2 + 32) & 1) == 0)
  {
    if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_23:
    v18 = *(a2 + 14);
    *(v3 + 8) |= 2u;
    *(v3 + 14) = v18;
    v7 = *(a2 + 8);
    if ((v7 & 4) == 0)
    {
LABEL_9:
      if ((v7 & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_24;
  }

  *(v3 + 8) |= 1u;
  v16 = *(v3 + 5);
  if (!v16)
  {
    operator new();
  }

  v17 = *(a2 + 5);
  if (!v17)
  {
    topotext::protobuf_AddDesc_topotext_2eproto(this);
    v17 = *(topotext::Substring::default_instance_ + 40);
  }

  this = topotext::CharID::MergeFrom(v16, v17);
  v7 = *(a2 + 8);
  if ((v7 & 2) != 0)
  {
    goto LABEL_23;
  }

LABEL_8:
  if ((v7 & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_24:
  *(v3 + 8) |= 4u;
  v19 = *(v3 + 6);
  if (!v19)
  {
    operator new();
  }

  v20 = *(a2 + 6);
  if (!v20)
  {
    topotext::protobuf_AddDesc_topotext_2eproto(this);
    v20 = *(topotext::Substring::default_instance_ + 48);
  }

  topotext::CharID::MergeFrom(v19, v20);
  if ((*(a2 + 8) & 8) != 0)
  {
LABEL_10:
    v8 = *(a2 + 60);
    *(v3 + 8) |= 8u;
    *(v3 + 60) = v8;
  }

LABEL_11:
  v11 = *(a2 + 1);
  v10 = a2 + 8;
  v9 = v11;
  v12 = v10[23];
  if (v12 >= 0)
  {
    v13 = v10;
  }

  else
  {
    v13 = v9;
  }

  if (v12 >= 0)
  {
    v14 = v10[23];
  }

  else
  {
    v14 = *(v10 + 1);
  }

  return std::string::append((v3 + 8), v13, v14);
}

void sub_214E67B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t topotext::Substring::Clear(uint64_t this)
{
  v1 = *(this + 32);
  if ((v1 & 0xF) != 0)
  {
    *(this + 60) = 0;
    *(this + 56) = 0;
    if (v1)
    {
      v2 = *(this + 40);
      if (v2)
      {
        *(v2 + 40) = 0;
        *(v2 + 32) = 0;
        if (*(v2 + 31) < 0)
        {
          **(v2 + 8) = 0;
          *(v2 + 16) = 0;
        }

        else
        {
          *(v2 + 8) = 0;
          *(v2 + 31) = 0;
        }
      }
    }

    if ((*(this + 32) & 4) != 0)
    {
      v3 = *(this + 48);
      if (v3)
      {
        *(v3 + 40) = 0;
        *(v3 + 32) = 0;
        if (*(v3 + 31) < 0)
        {
          **(v3 + 8) = 0;
          *(v3 + 16) = 0;
        }

        else
        {
          *(v3 + 8) = 0;
          *(v3 + 31) = 0;
        }
      }
    }
  }

  *(this + 72) = 0;
  *(this + 32) = 0;
  if (*(this + 31) < 0)
  {
    **(this + 8) = 0;
    *(this + 16) = 0;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 31) = 0;
  }

  return this;
}

uint64_t google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<unsigned int,(google::protobuf::internal::WireFormatLite::FieldType)13>(google::protobuf::io::CodedInputStream *this, uint64_t a2)
{
  v13 = 0;
  v4 = *(this + 1);
  if (v4 >= *(this + 2) || (v5 = *v4, (v5 & 0x80000000) != 0))
  {
    result = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v13);
    if (!result)
    {
      return result;
    }

    v5 = v13;
  }

  else
  {
    v13 = *v4;
    *(this + 1) = v4 + 1;
  }

  v7 = google::protobuf::io::CodedInputStream::PushLimit(this, v5);
  if (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
  {
    do
    {
      v12 = 0;
      v8 = *(this + 1);
      if (v8 >= *(this + 2) || *v8 < 0)
      {
        result = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v12);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v12 = *v8;
        *(this + 1) = v8 + 1;
      }

      v9 = *(a2 + 8);
      if (v9 == *(a2 + 12))
      {
        google::protobuf::RepeatedField<unsigned int>::Reserve(a2, v9 + 1);
        v9 = *(a2 + 8);
      }

      v10 = v12;
      v11 = *a2;
      *(a2 + 8) = v9 + 1;
      *(v11 + 4 * v9) = v10;
    }

    while (google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
  }

  google::protobuf::io::CodedInputStream::PopLimit(this, v7);
  return 1;
}

uint64_t topotext::Substring::SerializeWithCachedSizes(topotext::Substring *this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 8);
  if (v6)
  {
    v12 = *(this + 5);
    if (!v12)
    {
      topotext::protobuf_AddDesc_topotext_2eproto(this);
      v12 = *(topotext::Substring::default_instance_ + 40);
    }

    this = google::protobuf::internal::WireFormatLite::WriteMessage(1, v12, a2);
    v6 = *(v5 + 8);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 14), a2, a4);
  v6 = *(v5 + 8);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_15:
  v13 = *(v5 + 6);
  if (!v13)
  {
    topotext::protobuf_AddDesc_topotext_2eproto(this);
    v13 = *(topotext::Substring::default_instance_ + 48);
  }

  google::protobuf::internal::WireFormatLite::WriteMessage(3, v13, a2);
  if ((*(v5 + 8) & 8) != 0)
  {
LABEL_5:
    google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 60), a2, a4);
  }

LABEL_6:
  if (*(v5 + 18) >= 1)
  {
    v7 = 0;
    do
    {
      v8 = google::protobuf::RepeatedField<unsigned int>::Get(v5 + 64, v7);
      google::protobuf::internal::WireFormatLite::WriteUInt32(5, *v8, a2, v9);
      ++v7;
    }

    while (v7 < *(v5 + 18));
  }

  v10 = *(v5 + 31);
  if (v10 < 0)
  {
    v11 = *(v5 + 1);
    v10 = *(v5 + 2);
  }

  else
  {
    v11 = v5 + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v11, v10);
}

uint64_t topotext::Substring::ByteSize(topotext::Substring *this)
{
  v2 = *(this + 8);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_24;
  }

  if (v2)
  {
    v5 = *(this + 5);
    if (!v5)
    {
      topotext::protobuf_AddDesc_topotext_2eproto(0);
      v5 = *(topotext::Substring::default_instance_ + 40);
    }

    v6 = topotext::CharID::ByteSize(v5);
    v7 = v6;
    if (v6 >= 0x80)
    {
      v8 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
    }

    else
    {
      v8 = 1;
    }

    v3 = v7 + v8 + 1;
    v2 = *(this + 8);
    if ((v2 & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_12:
    v9 = *(this + 14);
    if (v9 >= 0x80)
    {
      v10 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
      v2 = *(this + 8);
    }

    else
    {
      v10 = 2;
    }

    v3 += v10;
  }

LABEL_16:
  if ((v2 & 4) != 0)
  {
    v11 = *(this + 6);
    if (!v11)
    {
      topotext::protobuf_AddDesc_topotext_2eproto(0);
      v11 = *(topotext::Substring::default_instance_ + 48);
    }

    v12 = topotext::CharID::ByteSize(v11);
    v13 = v12;
    if (v12 >= 0x80)
    {
      v14 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12);
    }

    else
    {
      v14 = 1;
    }

    v3 += v13 + v14 + 1;
    v2 = *(this + 8);
  }

  v4 = ((v2 >> 2) & 2) + v3;
LABEL_24:
  v15 = *(this + 18);
  if (v15 < 1)
  {
    v17 = 0;
  }

  else
  {
    v16 = 0;
    v17 = 0;
    do
    {
      v18 = *google::protobuf::RepeatedField<unsigned int>::Get(this + 64, v16);
      if (v18 >= 0x80)
      {
        v19 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18);
      }

      else
      {
        v19 = 1;
      }

      v17 += v19;
      ++v16;
      v15 = *(this + 18);
    }

    while (v16 < v15);
  }

  v20 = *(this + 31);
  if (v20 < 0)
  {
    v20 = *(this + 2);
  }

  result = (v17 + v4 + v15 + v20);
  *(this + 9) = result;
  return result;
}

std::string *topotext::Substring::CheckTypeAndMergeFrom(topotext::Substring *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return topotext::Substring::MergeFrom(this, lpsrc);
}

std::string *topotext::Selection_Range::MergeFrom(topotext::Selection_Range *this, const topotext::Selection_Range *a2)
{
  v3 = this;
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/topotext.pb.cc", 1924);
    v4 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v17, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      *(v3 + 8) |= 1u;
      v6 = *(v3 + 5);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 5);
      if (!v7)
      {
        topotext::protobuf_AddDesc_topotext_2eproto(this);
        v7 = *(topotext::Selection_Range::default_instance_ + 40);
      }

      this = topotext::CharID::MergeFrom(v6, v7);
      v5 = *(a2 + 8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 8) |= 2u;
      v8 = *(v3 + 6);
      if (!v8)
      {
        operator new();
      }

      v9 = *(a2 + 6);
      if (!v9)
      {
        topotext::protobuf_AddDesc_topotext_2eproto(this);
        v9 = *(topotext::Selection_Range::default_instance_ + 48);
      }

      topotext::CharID::MergeFrom(v8, v9);
    }
  }

  v12 = *(a2 + 1);
  v11 = a2 + 8;
  v10 = v12;
  v13 = v11[23];
  if (v13 >= 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  if (v13 >= 0)
  {
    v15 = v11[23];
  }

  else
  {
    v15 = *(v11 + 1);
  }

  return std::string::append((v3 + 8), v14, v15);
}

void sub_214E682A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void topotext::Selection_Range::~Selection_Range(void **this)
{
  *this = &unk_28270B818;
  topotext::Selection_Range::SharedDtor(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  topotext::Selection_Range::~Selection_Range(this);

  JUMPOUT(0x216063B80);
}

void topotext::Selection_Range::SharedDtor(topotext::Selection_Range *this)
{
  topotext::protobuf_AddDesc_topotext_2eproto(this);
  if (topotext::Selection_Range::default_instance_ != this)
  {
    v2 = *(this + 5);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 6);
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

uint64_t topotext::Selection_Range::Clear(uint64_t this)
{
  v1 = *(this + 32);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      v2 = *(this + 40);
      if (v2)
      {
        *(v2 + 40) = 0;
        *(v2 + 32) = 0;
        if (*(v2 + 31) < 0)
        {
          **(v2 + 8) = 0;
          *(v2 + 16) = 0;
        }

        else
        {
          *(v2 + 8) = 0;
          *(v2 + 31) = 0;
        }
      }
    }

    if ((*(this + 32) & 2) != 0)
    {
      v3 = *(this + 48);
      if (v3)
      {
        *(v3 + 40) = 0;
        *(v3 + 32) = 0;
        if (*(v3 + 31) < 0)
        {
          **(v3 + 8) = 0;
          *(v3 + 16) = 0;
        }

        else
        {
          *(v3 + 8) = 0;
          *(v3 + 31) = 0;
        }
      }
    }
  }

  *(this + 32) = 0;
  if (*(this + 31) < 0)
  {
    **(this + 8) = 0;
    *(this + 16) = 0;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 31) = 0;
  }

  return this;
}

uint64_t topotext::Selection_Range::MergePartialFromCodedStream(topotext::Selection_Range *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v29, this + 8);
  google::protobuf::io::CodedOutputStream::CodedOutputStream(v28, v29);
  while (1)
  {
    v5 = *(a2 + 1);
    if (v5 >= *(a2 + 2) || (v6 = *v5, v6 < 1))
    {
      TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      *(a2 + 8) = TagFallback;
      v7 = TagFallback | ((TagFallback - 1 < 0x7F) << 32);
      if ((v7 & 0x100000000) == 0)
      {
        break;
      }
    }

    else
    {
      *(a2 + 8) = v6;
      *(a2 + 1) = v5 + 1;
      v7 = v6 | 0x100000000;
    }

    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        goto LABEL_33;
      }

      goto LABEL_21;
    }

    if (v7 >> 3 != 1)
    {
      break;
    }

    if (v7 == 10)
    {
      *(this + 8) |= 1u;
      v9 = *(this + 5);
      if (!v9)
      {
        operator new();
      }

      v30 = 0;
      v10 = *(a2 + 1);
      if (v10 >= *(a2 + 2) || *v10 < 0)
      {
        if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30))
        {
          goto LABEL_48;
        }
      }

      else
      {
        v30 = *v10;
        *(a2 + 1) = v10 + 1;
      }

      v12 = *(a2 + 14);
      v13 = *(a2 + 15);
      *(a2 + 14) = v12 + 1;
      if (v12 >= v13)
      {
        goto LABEL_48;
      }

      v14 = google::protobuf::io::CodedInputStream::PushLimit(a2, v30);
      if (!topotext::CharID::MergePartialFromCodedStream(v9, a2) || *(a2 + 36) != 1)
      {
        goto LABEL_48;
      }

      google::protobuf::io::CodedInputStream::PopLimit(a2, v14);
      v15 = *(a2 + 14);
      v16 = __OFSUB__(v15, 1);
      v17 = v15 - 1;
      if (v17 < 0 == v16)
      {
        *(a2 + 14) = v17;
      }

      v18 = *(a2 + 1);
      if (v18 < *(a2 + 2) && *v18 == 18)
      {
        *(a2 + 1) = v18 + 1;
LABEL_33:
        *(this + 8) |= 2u;
        v19 = *(this + 6);
        if (!v19)
        {
          operator new();
        }

        v30 = 0;
        v20 = *(a2 + 1);
        if (v20 >= *(a2 + 2) || *v20 < 0)
        {
          if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30))
          {
            goto LABEL_48;
          }
        }

        else
        {
          v30 = *v20;
          *(a2 + 1) = v20 + 1;
        }

        v21 = *(a2 + 14);
        v22 = *(a2 + 15);
        *(a2 + 14) = v21 + 1;
        if (v21 >= v22 || (v23 = google::protobuf::io::CodedInputStream::PushLimit(a2, v30), !topotext::CharID::MergePartialFromCodedStream(v19, a2)) || *(a2 + 36) != 1)
        {
LABEL_48:
          v26 = 0;
          goto LABEL_50;
        }

        google::protobuf::io::CodedInputStream::PopLimit(a2, v23);
        v24 = *(a2 + 14);
        v16 = __OFSUB__(v24, 1);
        v25 = v24 - 1;
        if (v25 < 0 == v16)
        {
          *(a2 + 14) = v25;
        }

        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          v26 = 1;
          *(a2 + 36) = 1;
          goto LABEL_50;
        }
      }
    }

    else
    {
LABEL_21:
      if (!v7 || (v7 & 7) == 4)
      {
        goto LABEL_49;
      }

LABEL_18:
      if (!google::protobuf::internal::WireFormatLite::SkipField(a2, v7, v28, v4))
      {
        goto LABEL_48;
      }
    }
  }

  if (v7)
  {
    v11 = (v7 & 7) == 4;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_49:
  v26 = 1;
LABEL_50:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v28);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v29);
  return v26;
}

void sub_214E68878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t topotext::Selection_Range::SerializeWithCachedSizes(topotext::Selection_Range *this, google::protobuf::io::CodedOutputStream *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    v5 = *(this + 5);
    if (!v5)
    {
      topotext::protobuf_AddDesc_topotext_2eproto(this);
      v5 = *(topotext::Selection_Range::default_instance_ + 40);
    }

    this = google::protobuf::internal::WireFormatLite::WriteMessage(1, v5, a2);
    v4 = *(v3 + 8);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(v3 + 6);
    if (!v6)
    {
      topotext::protobuf_AddDesc_topotext_2eproto(this);
      v6 = *(topotext::Selection_Range::default_instance_ + 48);
    }

    google::protobuf::internal::WireFormatLite::WriteMessage(2, v6, a2);
  }

  v7 = *(v3 + 31);
  if (v7 < 0)
  {
    v8 = *(v3 + 1);
    v7 = *(v3 + 2);
  }

  else
  {
    v8 = v3 + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v8, v7);
}

uint64_t topotext::Selection_Range::ByteSize(topotext::Selection_Range *this)
{
  if (!*(this + 32))
  {
    v2 = 0;
    goto LABEL_18;
  }

  if ((*(this + 32) & 1) == 0)
  {
    v2 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v3 = *(this + 5);
  if (!v3)
  {
    topotext::protobuf_AddDesc_topotext_2eproto(0);
    v3 = *(topotext::Selection_Range::default_instance_ + 40);
  }

  v4 = topotext::CharID::ByteSize(v3);
  v5 = v4;
  if (v4 >= 0x80)
  {
    v6 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4);
  }

  else
  {
    v6 = 1;
  }

  v2 = v5 + v6 + 1;
  if ((*(this + 8) & 2) != 0)
  {
LABEL_12:
    v7 = *(this + 6);
    if (!v7)
    {
      topotext::protobuf_AddDesc_topotext_2eproto(0);
      v7 = *(topotext::Selection_Range::default_instance_ + 48);
    }

    v8 = topotext::CharID::ByteSize(v7);
    v9 = v8;
    if (v8 >= 0x80)
    {
      v10 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
    }

    else
    {
      v10 = 1;
    }

    v2 += v9 + v10 + 1;
  }

LABEL_18:
  v11 = *(this + 31);
  if (v11 < 0)
  {
    v11 = *(this + 2);
  }

  result = (v2 + v11);
  *(this + 9) = result;
  return result;
}

std::string *topotext::Selection_Range::CheckTypeAndMergeFrom(topotext::Selection_Range *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return topotext::Selection_Range::MergeFrom(this, lpsrc);
}

std::string *topotext::Selection::MergeFrom(topotext::Selection *this, const topotext::Selection *a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/topotext.pb.cc", 2186);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v13, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>((this + 40), (a2 + 40));
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<topotext::Selection_Range>::TypeHandler>((this + 64), (a2 + 64));
  if ((*(a2 + 32) & 4) != 0)
  {
    v5 = *(a2 + 22);
    if (v5 >= 2)
    {
      topotext::Selection::MergeFrom();
    }

    *(this + 8) |= 4u;
    *(this + 22) = v5;
  }

  v8 = *(a2 + 1);
  v7 = a2 + 8;
  v6 = v8;
  v9 = v7[23];
  if (v9 >= 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  if (v9 >= 0)
  {
    v11 = v7[23];
  }

  else
  {
    v11 = *(v7 + 1);
  }

  return std::string::append((this + 8), v10, v11);
}

void sub_214E68B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void topotext::Selection::~Selection(topotext::Selection *this)
{
  *this = &unk_28270B890;
  topotext::protobuf_AddDesc_topotext_2eproto(this);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 8);
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 10);
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(this);
}

{
  topotext::Selection::~Selection(this);

  JUMPOUT(0x216063B80);
}

uint64_t topotext::Selection::Clear(topotext::Selection *this)
{
  *(this + 22) = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 40);
  result = google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<versioned_document::Version>::TypeHandler>(this + 64);
  *(this + 8) = 0;
  if (*(this + 31) < 0)
  {
    **(this + 1) = 0;
    *(this + 2) = 0;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 31) = 0;
  }

  return result;
}

uint64_t topotext::Selection::MergePartialFromCodedStream(topotext::Selection *this, google::protobuf::io::CodedInputStream *a2)
{
  google::protobuf::io::StringOutputStream::StringOutputStream(v34, this + 8);
  TagFallback = google::protobuf::io::CodedOutputStream::CodedOutputStream(v33, v34);
  do
  {
    while (1)
    {
LABEL_2:
      v6 = *(a2 + 1);
      if (v6 >= *(a2 + 2) || (v7 = *v6, v7 < 1))
      {
        TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        v8 = TagFallback | (((TagFallback - 1) < 0x7F) << 32);
        if ((v8 & 0x100000000) == 0)
        {
          goto LABEL_11;
        }
      }

      else
      {
        *(a2 + 8) = v7;
        *(a2 + 1) = v6 + 1;
        v8 = v7 | 0x100000000;
      }

      v9 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        break;
      }

      if (v9 == 2)
      {
        if (v8 != 18)
        {
          goto LABEL_31;
        }

        while (1)
        {
          v18 = *(this + 19);
          v19 = *(this + 18);
          if (v19 >= v18)
          {
            if (v18 == *(this + 20))
            {
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 64, v18 + 1);
            }

            operator new();
          }

          v20 = *(this + 8);
          *(this + 18) = v19 + 1;
          v21 = *(v20 + 8 * v19);
          v35 = 0;
          v22 = *(a2 + 1);
          if (v22 >= *(a2 + 2) || *v22 < 0)
          {
            if (!google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v35))
            {
              goto LABEL_67;
            }
          }

          else
          {
            v35 = *v22;
            *(a2 + 1) = v22 + 1;
          }

          v23 = *(a2 + 14);
          v24 = *(a2 + 15);
          *(a2 + 14) = v23 + 1;
          if (v23 >= v24 || (v25 = google::protobuf::io::CodedInputStream::PushLimit(a2, v35), !topotext::Selection_Range::MergePartialFromCodedStream(v21, a2)) || *(a2 + 36) != 1)
          {
LABEL_67:
            v31 = 0;
            goto LABEL_69;
          }

          TagFallback = google::protobuf::io::CodedInputStream::PopLimit(a2, v25);
          v26 = *(a2 + 14);
          v27 = __OFSUB__(v26, 1);
          v28 = v26 - 1;
          if (v28 < 0 == v27)
          {
            *(a2 + 14) = v28;
          }

          v14 = *(a2 + 1);
          v17 = *(a2 + 2);
          if (v14 >= v17)
          {
            break;
          }

          v29 = *v14;
          if (v29 != 18)
          {
            if (v29 != 24)
            {
              goto LABEL_2;
            }

            v16 = (v14 + 1);
            *(a2 + 1) = v16;
            goto LABEL_54;
          }

LABEL_57:
          *(a2 + 1) = v14 + 1;
        }
      }

      else if (v9 == 1)
      {
        if (v8 != 10)
        {
          goto LABEL_31;
        }

        while (1)
        {
          v11 = *(this + 13);
          v12 = *(this + 12);
          if (v12 >= v11)
          {
            if (v11 == *(this + 14))
            {
              TagFallback = google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 40, v11 + 1);
            }

            google::protobuf::internal::StringTypeHandlerBase::New(TagFallback);
          }

          v13 = *(this + 5);
          *(this + 12) = v12 + 1;
          TagFallback = google::protobuf::internal::WireFormatLite::ReadString(a2, *(v13 + 8 * v12));
          if (!TagFallback)
          {
            goto LABEL_67;
          }

          v14 = *(a2 + 1);
          if (v14 >= *(a2 + 2))
          {
            break;
          }

          v15 = *v14;
          if (v15 != 10)
          {
            if (v15 != 18)
            {
              goto LABEL_2;
            }

            goto LABEL_57;
          }

          *(a2 + 1) = v14 + 1;
        }
      }

      else
      {
LABEL_11:
        if (v8)
        {
          v10 = (v8 & 7) == 4;
        }

        else
        {
          v10 = 1;
        }

        if (v10)
        {
LABEL_68:
          v31 = 1;
          goto LABEL_69;
        }

LABEL_33:
        TagFallback = google::protobuf::internal::WireFormatLite::SkipField(a2, v8, v33, v5);
        if ((TagFallback & 1) == 0)
        {
          goto LABEL_67;
        }
      }
    }

    if (v8 != 24)
    {
LABEL_31:
      if (!v8 || (v8 & 7) == 4)
      {
        goto LABEL_68;
      }

      goto LABEL_33;
    }

    v16 = *(a2 + 1);
    v17 = *(a2 + 2);
LABEL_54:
    v35 = 0;
    if (v16 >= v17 || (v30 = *v16, (v30 & 0x80000000) != 0))
    {
      TagFallback = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v35);
      if ((TagFallback & 1) == 0)
      {
        goto LABEL_67;
      }

      v30 = v35;
    }

    else
    {
      *(a2 + 1) = v16 + 1;
    }

    if (v30 > 1)
    {
      google::protobuf::io::CodedOutputStream::WriteVarint32(v33, v8);
      TagFallback = google::protobuf::io::CodedOutputStream::WriteVarint32(v33, v30);
    }

    else
    {
      *(this + 8) |= 4u;
      *(this + 22) = v30;
    }
  }

  while (*(a2 + 1) != *(a2 + 2) || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10));
  *(a2 + 8) = 0;
  v31 = 1;
  *(a2 + 36) = 1;
LABEL_69:
  google::protobuf::io::CodedOutputStream::~CodedOutputStream(v33);
  google::protobuf::io::StringOutputStream::~StringOutputStream(v34);
  return v31;
}

void sub_214E6911C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  google::protobuf::io::StringOutputStream::~StringOutputStream(va);
  _Unwind_Resume(a1);
}

uint64_t topotext::Selection::SerializeWithCachedSizes(topotext::Selection *this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  if (*(this + 12) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 40, v6);
      google::protobuf::internal::WireFormatLite::WriteBytes(1, v7, a2);
      ++v6;
    }

    while (v6 < *(this + 12));
  }

  if (*(this + 18) >= 1)
  {
    v8 = 0;
    do
    {
      v9 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::Selection_Range>::TypeHandler>(this + 64, v8);
      google::protobuf::internal::WireFormatLite::WriteMessage(2, v9, a2);
      ++v8;
    }

    while (v8 < *(this + 18));
  }

  if ((*(this + 32) & 4) != 0)
  {
    google::protobuf::internal::WireFormatLite::WriteInt32(3, *(this + 22), a2, a4);
  }

  v10 = *(this + 31);
  if (v10 < 0)
  {
    v11 = *(this + 1);
    v10 = *(this + 2);
  }

  else
  {
    v11 = this + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v11, v10);
}

uint64_t topotext::Selection::ByteSize(topotext::Selection *this)
{
  if ((*(this + 32) & 4) != 0)
  {
    v3 = *(this + 22);
    if ((v3 & 0x80000000) != 0)
    {
      v2 = 11;
    }

    else if (v3 >= 0x80)
    {
      v2 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v3) + 1;
    }

    else
    {
      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  v4 = *(this + 12);
  v5 = v4 + v2;
  if (v4 >= 1)
  {
    v6 = 0;
    do
    {
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 40, v6);
      v8 = *(v7 + 23);
      v9 = v8;
      v10 = *(v7 + 8);
      if ((v8 & 0x80u) == 0)
      {
        v11 = *(v7 + 23);
      }

      else
      {
        v11 = v10;
      }

      if (v11 >= 0x80)
      {
        v12 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
        v8 = *(v7 + 23);
        v10 = *(v7 + 8);
        v9 = *(v7 + 23);
      }

      else
      {
        v12 = 1;
      }

      if (v9 < 0)
      {
        v8 = v10;
      }

      v5 += v12 + v8;
      ++v6;
    }

    while (v6 < *(this + 12));
  }

  v13 = *(this + 18);
  v14 = v13 + v5;
  if (v13 >= 1)
  {
    v15 = 0;
    do
    {
      v16 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<topotext::Selection_Range>::TypeHandler>(this + 64, v15);
      v17 = topotext::Selection_Range::ByteSize(v16);
      v18 = v17;
      if (v17 >= 0x80)
      {
        v19 = google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
      }

      else
      {
        v19 = 1;
      }

      v14 += v18 + v19;
      ++v15;
    }

    while (v15 < *(this + 18));
  }

  v20 = *(this + 31);
  if (v20 < 0)
  {
    v20 = *(this + 2);
  }

  result = (v14 + v20);
  *(this + 9) = result;
  return result;
}

std::string *topotext::Selection::CheckTypeAndMergeFrom(topotext::Selection *this, const google::protobuf::MessageLite *lpsrc)
{
  {
    versioned_document::Document::CheckTypeAndMergeFrom();
  }

  return topotext::Selection::MergeFrom(this, lpsrc);
}

std::string *topotext::AttributeRun::MergeFrom(topotext::AttributeRun *this, const topotext::AttributeRun *a2)
{
  v3 = this;
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v35, 3, "/Library/Caches/com.apple.xbs/Sources/MobileNotesSupport/Source/Shared/protobuf-lite/topotext.pb.cc", 2894);
    v4 = google::protobuf::internal::LogMessage::operator<<(v35, "CHECK failed: (&from) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v34, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v35[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    if (v5)
    {
      v6 = *(a2 + 12);
      *(v3 + 8) |= 1u;
      *(v3 + 12) = v6;
      v5 = *(a2 + 8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 8) |= 2u;
      v7 = *(v3 + 5);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 5);
      if (!v8)
      {
        topotext::protobuf_AddDesc_topotext_2eproto(this);
        v8 = *(topotext::AttributeRun::default_instance_ + 40);
      }

      this = topotext::ParagraphStyle::MergeFrom(v7, v8);
      v5 = *(a2 + 8);
    }

    if ((v5 & 4) != 0)
    {
      *(v3 + 8) |= 4u;
      v9 = *(v3 + 7);
      if (!v9)
      {
        operator new();
      }

      v10 = *(a2 + 7);
      if (!v10)
      {
        topotext::protobuf_AddDesc_topotext_2eproto(this);
        v10 = *(topotext::AttributeRun::default_instance_ + 56);
      }

      this = topotext::Font::MergeFrom(v9, v10);
      v5 = *(a2 + 8);
    }

    if ((v5 & 8) != 0)
    {
      v11 = *(a2 + 13);
      *(v3 + 8) |= 8u;
      *(v3 + 13) = v11;
      v5 = *(a2 + 8);
      if ((v5 & 0x10) == 0)
      {
LABEL_20:
        if ((v5 & 0x20) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_26;
      }
    }

    else if ((v5 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    v12 = *(a2 + 16);
    *(v3 + 8) |= 0x10u;
    *(v3 + 16) = v12;
    v5 = *(a2 + 8);
    if ((v5 & 0x20) == 0)
    {
LABEL_21:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_27;
    }

LABEL_26:
    v13 = *(a2 + 17);
    *(v3 + 8) |= 0x20u;
    *(v3 + 17) = v13;
    v5 = *(a2 + 8);
    if ((v5 & 0x40) == 0)
    {
LABEL_22:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_28;
    }

LABEL_27:
    v14 = *(a2 + 20);
    *(v3 + 8) |= 0x40u;
    *(v3 + 20) = v14;
    v5 = *(a2 + 8);
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_32;
    }

LABEL_28:
    v15 = *(a2 + 9);
    *(v3 + 8) |= 0x80u;
    if (!google::protobuf::internal::empty_string_)
    {
      versioned_document::Version::SharedCtor();
    }

    v16 = *(v3 + 9);
    if (v16 == google::protobuf::internal::empty_string_)
    {
      operator new();
    }

    this = std::string::operator=(v16, v15);
    v5 = *(a2 + 8);
  }

LABEL_32:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_53;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 8) |= 0x100u;
    v17 = *(v3 + 11);
    if (!v17)
    {
      operator new();
    }

    v18 = *(a2 + 11);
    if (!v18)
    {
      topotext::protobuf_AddDesc_topotext_2eproto(this);
      v18 = *(topotext::AttributeRun::default_instance_ + 88);
    }

    this = topotext::Color::MergeFrom(v17, v18);
    v5 = *(a2 + 8);
  }

  if ((v5 & 0x200) != 0)
  {
    v19 = *(a2 + 21);
    if (v19 >= 5)
    {
      topotext::AttributeRun::MergeFrom();
    }

    *(v3 + 8) |= 0x200u;
    *(v3 + 21) = v19;
    v5 = *(a2 + 8);
  }

  if ((v5 & 0x400) != 0)
  {
    *(v3 + 8) |= 0x400u;
    v20 = *(v3 + 12);
    if (!v20)
    {
      operator new();
    }

    v21 = *(a2 + 12);
    if (!v21)
    {
      topotext::protobuf_AddDesc_topotext_2eproto(this);
      v21 = *(topotext::AttributeRun::default_instance_ + 96);
    }

    this = topotext::AttachmentInfo::MergeFrom(v20, v21);
    v5 = *(a2 + 8);
  }

  if ((v5 & 0x800) != 0)
  {
    v30 = *(a2 + 13);
    *(v3 + 8) |= 0x800u;
    *(v3 + 13) = v30;
    v5 = *(a2 + 8);
    if ((v5 & 0x1000) == 0)
    {
LABEL_50:
      if ((v5 & 0x2000) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_62;
    }
  }

  else if ((v5 & 0x1000) == 0)
  {
    goto LABEL_50;
  }

  v31 = *(a2 + 30);
  *(v3 + 8) |= 0x1000u;
  *(v3 + 30) = v31;
  v5 = *(a2 + 8);
  if ((v5 & 0x2000) == 0)
  {
LABEL_51:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

LABEL_62:
  *(v3 + 8) |= 0x2000u;
  v32 = *(v3 + 14);
  if (!v32)
  {
    operator new();
  }

  v33 = *(a2 + 14);
  if (!v33)
  {
    topotext::protobuf_AddDesc_topotext_2eproto(this);
    v33 = *(topotext::AttributeRun::default_instance_ + 112);
  }

  topotext::AttachmentInfo::MergeFrom(v32, v33);
  if ((*(a2 + 8) & 0x4000) != 0)
  {
LABEL_52:
    v22 = *(a2 + 31);
    *(v3 + 8) |= 0x4000u;
    *(v3 + 31) = v22;
  }

LABEL_53:
  v25 = *(a2 + 1);
  v24 = a2 + 8;
  v23 = v25;
  v26 = v24[23];
  if (v26 >= 0)
  {
    v27 = v24;
  }

  else
  {
    v27 = v23;
  }

  if (v26 >= 0)
  {
    v28 = v24[23];
  }

  else
  {
    v28 = *(v24 + 1);
  }

  return std::string::append((v3 + 8), v27, v28);
}

uint64_t topotext::AttributeRun::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 32);
  if (v2)
  {
    *(this + 48) = 0;
    *(this + 64) = 0;
    if ((v2 & 2) != 0)
    {
      this = *(this + 40);
      if (this)
      {
        this = topotext::ParagraphStyle::Clear(this);
        v2 = *(v1 + 32);
      }
    }

    if ((v2 & 4) != 0)
    {
      this = *(v1 + 56);
      if (this)
      {
        this = topotext::Font::Clear(this);
        v2 = *(v1 + 32);
      }
    }

    *(v1 + 80) = 0;
    if ((v2 & 0x80) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v3 = *(v1 + 72);
      if (v3 != google::protobuf::internal::empty_string_)
      {
        if (*(v3 + 23) < 0)
        {
          **v3 = 0;
          *(v3 + 8) = 0;
        }

        else
        {
          *v3 = 0;
          *(v3 + 23) = 0;
        }
      }
    }
  }

  v4 = *(v1 + 32);
  if ((v4 & 0x7F00) != 0)
  {
    *(v1 + 120) = 0;
    if ((v4 & 0x100) != 0)
    {
      v5 = *(v1 + 88);
      if (v5)
      {
        *(v5 + 40) = 0;
        *(v5 + 48) = 0;
        *(v5 + 32) = 0;
        if (*(v5 + 31) < 0)
        {
          **(v5 + 8) = 0;
          *(v5 + 16) = 0;
        }

        else
        {
          *(v5 + 8) = 0;
          *(v5 + 31) = 0;
        }
      }
    }

    *(v1 + 84) = 0;
    v6 = *(v1 + 32);
    if ((v6 & 0x400) != 0)
    {
      this = *(v1 + 96);
      if (this)
      {
        this = topotext::AttachmentInfo::Clear(this);
        v6 = *(v1 + 32);
      }
    }

    *(v1 + 104) = 0;
    if ((v6 & 0x2000) != 0)
    {
      this = *(v1 + 112);
      if (this)
      {
        this = topotext::AttachmentInfo::Clear(this);
      }
    }
  }

  *(v1 + 32) = 0;
  if (*(v1 + 31) < 0)
  {
    **(v1 + 8) = 0;
    *(v1 + 16) = 0;
  }

  else
  {
    *(v1 + 8) = 0;
    *(v1 + 31) = 0;
  }

  return this;
}

uint64_t topotext::ParagraphStyle::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 32);
  if (v2)
  {
    *(this + 40) = 0;
    *(this + 48) = 0;
    *(this + 64) = 0;
    if ((v2 & 0x10) != 0)
    {
      this = *(this + 56);
      if (this)
      {
        this = topotext::Todo::Clear(this);
        v2 = *(v1 + 32);
      }
    }

    *(v1 + 80) = 0;
  }

  if ((v2 & 0x100) != 0)
  {
    if (!google::protobuf::internal::empty_string_)
    {
      versioned_document::Version::SharedCtor();
    }

    v3 = *(v1 + 72);
    if (v3 != google::protobuf::internal::empty_string_)
    {
      if (*(v3 + 23) < 0)
      {
        **v3 = 0;
        *(v3 + 8) = 0;
      }

      else
      {
        *v3 = 0;
        *(v3 + 23) = 0;
      }
    }
  }

  *(v1 + 32) = 0;
  if (*(v1 + 31) < 0)
  {
    **(v1 + 8) = 0;
    *(v1 + 16) = 0;
  }

  else
  {
    *(v1 + 8) = 0;
    *(v1 + 31) = 0;
  }

  return this;
}

uint64_t topotext::Font::Clear(uint64_t this)
{
  v1 = *(this + 32);
  if ((v1 & 7) != 0)
  {
    *(this + 48) = 0;
    if (v1)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v2 = *(this + 40);
      if (v2 != google::protobuf::internal::empty_string_)
      {
        if (*(v2 + 23) < 0)
        {
          **v2 = 0;
          *(v2 + 8) = 0;
        }

        else
        {
          *v2 = 0;
          *(v2 + 23) = 0;
        }
      }
    }
  }

  *(this + 32) = 0;
  if (*(this + 31) < 0)
  {
    **(this + 8) = 0;
    *(this + 16) = 0;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 31) = 0;
  }

  return this;
}

uint64_t topotext::Color::Clear(uint64_t this)
{
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 32) = 0;
  if (*(this + 31) < 0)
  {
    **(this + 8) = 0;
    *(this + 16) = 0;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 31) = 0;
  }

  return this;
}

uint64_t topotext::AttachmentInfo::Clear(uint64_t this)
{
  v1 = *(this + 32);
  if ((v1 & 0xF) != 0)
  {
    if (v1)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v2 = *(this + 40);
      if (v2 != google::protobuf::internal::empty_string_)
      {
        if (*(v2 + 23) < 0)
        {
          **v2 = 0;
          *(v2 + 8) = 0;
        }

        else
        {
          *v2 = 0;
          *(v2 + 23) = 0;
        }
      }
    }

    if ((*(this + 32) & 2) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v3 = *(this + 48);
      if (v3 != google::protobuf::internal::empty_string_)
      {
        if (*(v3 + 23) < 0)
        {
          **v3 = 0;
          *(v3 + 8) = 0;
        }

        else
        {
          *v3 = 0;
          *(v3 + 23) = 0;
        }
      }
    }

    if ((*(this + 32) & 4) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v4 = *(this + 56);
      if (v4 != google::protobuf::internal::empty_string_)
      {
        if (*(v4 + 23) < 0)
        {
          **v4 = 0;
          *(v4 + 8) = 0;
        }

        else
        {
          *v4 = 0;
          *(v4 + 23) = 0;
        }
      }
    }

    if ((*(this + 32) & 8) != 0)
    {
      if (!google::protobuf::internal::empty_string_)
      {
        versioned_document::Version::SharedCtor();
      }

      v5 = *(this + 64);
      if (v5 != google::protobuf::internal::empty_string_)
      {
        if (*(v5 + 23) < 0)
        {
          **v5 = 0;
          *(v5 + 8) = 0;
        }

        else
        {
          *v5 = 0;
          *(v5 + 23) = 0;
        }
      }
    }
  }

  *(this + 32) = 0;
  if (*(this + 31) < 0)
  {
    **(this + 8) = 0;
    *(this + 16) = 0;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 31) = 0;
  }

  return this;
}

uint64_t topotext::AttributeRun::SerializeWithCachedSizes(topotext::AttributeRun *this, google::protobuf::io::CodedOutputStream *a2, uint64_t a3, google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 8);
  if (v6)
  {
    this = google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 12), a2, a4);
    v6 = *(v5 + 8);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v9 = *(v5 + 5);
  if (!v9)
  {
    topotext::protobuf_AddDesc_topotext_2eproto(this);
    v9 = *(topotext::AttributeRun::default_instance_ + 40);
  }

  this = google::protobuf::internal::WireFormatLite::WriteMessage(2, v9, a2);
  v6 = *(v5 + 8);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_23:
  v10 = *(v5 + 7);
  if (!v10)
  {
    topotext::protobuf_AddDesc_topotext_2eproto(this);
    v10 = *(topotext::AttributeRun::default_instance_ + 56);
  }

  this = google::protobuf::internal::WireFormatLite::WriteMessage(3, v10, a2);
  v6 = *(v5 + 8);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 13), a2, a4);
  v6 = *(v5 + 8);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 16), a2, a4);
  v6 = *(v5 + 8);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 17), a2, a4);
  v6 = *(v5 + 8);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = google::protobuf::internal::WireFormatLite::WriteInt32(8, *(v5 + 20), a2, a4);
  v6 = *(v5 + 8);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = google::protobuf::internal::WireFormatLite::WriteStringMaybeAliased(9, *(v5 + 9), a2);
  v6 = *(v5 + 8);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_34;
  }

LABEL_31:
  v11 = *(v5 + 11);
  if (!v11)
  {
    topotext::protobuf_AddDesc_topotext_2eproto(this);
    v11 = *(topotext::AttributeRun::default_instance_ + 88);
  }

  this = google::protobuf::internal::WireFormatLite::WriteMessage(10, v11, a2);
  v6 = *(v5 + 8);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = google::protobuf::internal::WireFormatLite::WriteInt32(0xB, *(v5 + 21), a2, a4);
  v6 = *(v5 + 8);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_35:
  v12 = *(v5 + 12);
  if (!v12)
  {
    topotext::protobuf_AddDesc_topotext_2eproto(this);
    v12 = *(topotext::AttributeRun::default_instance_ + 96);
  }

  this = google::protobuf::internal::WireFormatLite::WriteMessage(12, v12, a2);
  v6 = *(v5 + 8);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = google::protobuf::internal::WireFormatLite::WriteInt64(0xD, *(v5 + 13), a2, a4);
  v6 = *(v5 + 8);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = google::protobuf::internal::WireFormatLite::WriteUInt32(0xE, *(v5 + 30), a2, a4);
  v6 = *(v5 + 8);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_40:
  v13 = *(v5 + 14);
  if (!v13)
  {
    topotext::protobuf_AddDesc_topotext_2eproto(this);
    v13 = *(topotext::AttributeRun::default_instance_ + 112);
  }

  google::protobuf::internal::WireFormatLite::WriteMessage(15, v13, a2);
  if ((*(v5 + 8) & 0x4000) != 0)
  {
LABEL_16:
    google::protobuf::internal::WireFormatLite::WriteUInt32(0x10, *(v5 + 31), a2, a4);
  }

LABEL_17:
  v7 = *(v5 + 31);
  if (v7 < 0)
  {
    v8 = *(v5 + 1);
    v7 = *(v5 + 2);
  }

  else
  {
    v8 = v5 + 8;
  }

  return google::protobuf::io::CodedOutputStream::WriteRaw(a2, v8, v7);
}